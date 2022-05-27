//
//  SelectLocationVC.swift
//  Carlot
//
//  Created by emizentech on 5/5/22.
//

import UIKit
import GoogleMaps
import GooglePlaces

protocol SelectLocation {
    func SelectAdressTrip(lat:Double,long:Double,strAdr:String,type:String)
}



class SelectLocationVC: UIViewController , UITextFieldDelegate {
    
    
    
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var txtAddreass: UITextField!
    @IBOutlet weak var viewMaps: GMSMapView!
    private var placesClient: GMSPlacesClient!

    var myDelegate:SelectLocation?
    private var tableView: UITableView!
    private var tableDataSource: GMSAutocompleteTableDataSource!
    let locMarker = GMSMarker()
    var adrType = ""
    var selectedLat:Double = 0
    var selectedLong:Double = 0
    var selectedStraddress = ""
    @IBOutlet weak var viewAutoAddress: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        
        LocationManager.sharedInstance.delegate = self
        LocationManager.sharedInstance.startUpdatingLocation()
        viewMaps.isMyLocationEnabled = true
        viewMaps.settings.myLocationButton = true
        locMarker.map = viewMaps
        viewMaps.delegate = self
        txtAddreass.delegate = self
        placesClient = GMSPlacesClient.shared()
        
        

        tableDataSource = GMSAutocompleteTableDataSource()
        tableDataSource.delegate = self

        tableView = UITableView(frame: CGRect(x: 0, y: 0, width: self.viewAutoAddress.frame.size.width, height: self.viewAutoAddress.frame.size.height))
        tableView.delegate = tableDataSource
        tableView.dataSource = tableDataSource
        tableView.backgroundColor = .clear

        viewAutoAddress.addSubview(tableView)
        viewAutoAddress.isHidden = true
    }
    

    @IBAction func btnConfirmLocationAction(_ sender: Any) {
        if selectedLat == 0 || selectedLong == 0 || selectedStraddress == ""{
           // self.view.makeToast("please select location")
            return
        }
        myDelegate?.SelectAdressTrip(lat: selectedLat, long: selectedLong, strAdr: selectedStraddress, type: adrType)
        //self.goBack()
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        txtAddreass.text = ""
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let currentString: NSString = (textField.text ?? "") as NSString
        let newString: NSString =
            currentString.replacingCharacters(in: range, with: string) as NSString
        tableDataSource.sourceTextHasChanged(newString as String)
       
        if (newString as String).count>0{
            viewAutoAddress.isHidden = false
        }else{
            viewAutoAddress.isHidden = true
        }
        return true
    }
    func getCurrentAddress(){
        let placeFields: GMSPlaceField = [.name, .formattedAddress]
            placesClient.findPlaceLikelihoodsFromCurrentLocation(withPlaceFields: placeFields) { [weak self] (placeLikelihoods, error) in
              guard let strongSelf = self else {
                return
              }

              guard error == nil else {
                print("Current place error: \(error?.localizedDescription ?? "")")
                return
              }

              guard let place = placeLikelihoods?.first?.place else {
              //  strongSelf.nameLabel.text = "No current place"
                self?.txtAddreass.placeholder = "Search address"
                self?.lblAddress.text = "No address found"
                return
              }

              //strongSelf.nameLabel.text = place.name
               // self?.txtAddreass.text = place.formattedAddress
                self?.lblAddress.text = place.formattedAddress
                self?.selectedStraddress = place.formattedAddress ?? ""
                
            }
          }
    
    func getAddressFromLatLon(pdblLatitude: String, withLongitude pdblLongitude: String) {
        if pdblLatitude == "51.17889991879489"{
            return
        }
           
            let geocoder = GMSGeocoder()
            let coordinate = CLLocationCoordinate2DMake(Double(pdblLatitude)!,Double(pdblLongitude)!)


            var currentAddress = String()

            geocoder.reverseGeocodeCoordinate(coordinate) { response , error in
                if let address = response?.firstResult() {
                    let lines = address.lines! as [String]

                    currentAddress = lines.joined(separator: "\n")

                 //   self.txtAddreass.text = currentAddress
                    self.lblAddress.text = currentAddress
                    self.selectedStraddress = currentAddress
                }
            }
        
        }
  

}

extension SelectLocationVC:LocationManagerDelegate{
    func tracingLocation(currentLocation: CLLocation) {
        print(currentLocation)
        let camera = GMSCameraPosition.camera(withLatitude: currentLocation.coordinate.latitude, longitude: currentLocation.coordinate.longitude, zoom: 12)
        
        
        
        locMarker.position = currentLocation.coordinate
        self.viewMaps.animate(to: camera)
        getCurrentAddress()
        
        self.selectedLat = currentLocation.coordinate.latitude
        self.selectedLong = currentLocation.coordinate.longitude
        LocationManager.sharedInstance.stopUpdatingLocation()
       // setPulsesOnMap()
        //mapViews.animate(toLocation: currentLocation.coordinate)
    }
    
    func tracingLocationDidFailWithError(error: NSError) {
        print(error)
    }
    
    func ChangeLocationStatus(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        print(status)
        
    }
}

extension SelectLocationVC:GMSMapViewDelegate{
    func mapView(_ mapView: GMSMapView, didChange position: GMSCameraPosition) {
        locMarker.position = position.target
       
    }
    func mapView(_ mapView: GMSMapView, idleAt position: GMSCameraPosition) {
        getAddressFromLatLon(pdblLatitude: "\(position.target.latitude )", withLongitude: "\(position.target.longitude )")
        self.selectedLat = position.target.latitude
        self.selectedLong = position.target.longitude
        
    }
    
}
extension SelectLocationVC: UISearchBarDelegate {
  func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
    // Update the GMSAutocompleteTableDataSource with the search text.
    tableDataSource.sourceTextHasChanged(searchText)
  }
}

extension SelectLocationVC: GMSAutocompleteTableDataSourceDelegate {
  func didUpdateAutocompletePredictions(for tableDataSource: GMSAutocompleteTableDataSource) {
    // Turn the network activity indicator off.
    UIApplication.shared.isNetworkActivityIndicatorVisible = false
    // Reload table data.
    tableView.reloadData()
  }

  func didRequestAutocompletePredictions(for tableDataSource: GMSAutocompleteTableDataSource) {
    // Turn the network activity indicator on.
    UIApplication.shared.isNetworkActivityIndicatorVisible = true
    // Reload table data.
    tableView.reloadData()
  }

  func tableDataSource(_ tableDataSource: GMSAutocompleteTableDataSource, didAutocompleteWith place: GMSPlace) {
    // Do something with the selected place.
    print("Place name: \(place.name)")
    print("Place address: \(place.formattedAddress)")
    print("Place attributions: \(place.attributions)")
    self.txtAddreass.text = place.formattedAddress
    self.lblAddress.text = place.formattedAddress
    self.selectedStraddress = place.formattedAddress ?? ""
    self.selectedLat = place.coordinate.latitude
    self.selectedLong = place.coordinate.longitude
    txtAddreass.endEditing(true)
    locMarker.position = place.coordinate
    let camera = GMSCameraPosition.camera(withLatitude: place.coordinate.latitude, longitude: place.coordinate.longitude, zoom: 12)
    
    self.viewMaps.animate(to: camera)
    self.viewAutoAddress.isHidden = true
    
  }

  func tableDataSource(_ tableDataSource: GMSAutocompleteTableDataSource, didFailAutocompleteWithError error: Error) {
    // Handle the error.
    print("Error: \(error.localizedDescription)")
  }

  func tableDataSource(_ tableDataSource: GMSAutocompleteTableDataSource, didSelect prediction: GMSAutocompletePrediction) -> Bool {
    return true
  }
}
