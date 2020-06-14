//
//  GlobalNavigation.swift
//  Created by Umair  on 04/06/2020.
//  Copyright © 2020 Umair . All rights reserved.

import Foundation
import UIKit

class GlobalNavigation{
    
    var mainVC: MainVC!
    
    static var instance:GlobalNavigation!
    static func getInstance() -> GlobalNavigation{
        if(instance != nil){
            return instance
        }else{
            instance = GlobalNavigation()
            return instance
        }
    }
}
