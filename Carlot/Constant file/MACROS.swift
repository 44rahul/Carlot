//
//  MACROS.swift
//  Carlot
//
//  Created by emizentech on 5/3/22.
//

import Foundation
import UIKit

let App_main_clor = UIColor(red: 1, green: 0.518, blue:  0.067, alpha: 1.0)
let App_LightPink_clor = UIColor(red: 255.0/255.0, green: 235.0/255.0, blue: 235.0/255.0, alpha: 1.0)
let App_main_dark = UIColor(red: 53/255, green: 71/255, blue: 82/255, alpha: 1.0)
let Applightcolor = UIColor(red: 198/255, green: 198/255, blue: 198/255, alpha: 1.0)

var OKNewCallBack:(() -> Void)?
var MyOrderCallBack:(() -> Void)?

let APP_IS_LOGIN = "login"
let APP_ACCESS_TOKEN = "token"
let APP_CURRENT_LANG = "language"
