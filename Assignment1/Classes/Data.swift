//
//  Data.swift
//  Assignment1
//
//  Created by Qingqing Wu on 2021-02-11.
//

import UIKit

class Data: NSObject {
    
    var name : String?
    var email : String?
    var address : String?
    var phoneNum : String?
    
    override init(){
        name = ""
        email = ""
        address = ""
        phoneNum = ""
    }
    
    func setInfo(theName : String, theEmail : String, theAddress : String, thePhoneNum : String){
        
        name = theName
        email = theEmail
        address = theAddress
        phoneNum = thePhoneNum
    }

}
