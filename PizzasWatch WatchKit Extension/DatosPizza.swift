//
//  DatosPizza.swift
//  PizzasWatch WatchKit Extension
//
//  Created by Sofia Abadia Bermeo on 6/20/19.
//  Copyright © 2019 Sofia Abadia Bermeo. All rights reserved.
//

import WatchKit

class DatosPizza: NSObject
{
    var size : String = ""
    var masa : String?
    var queso : String?
    var ingredientes : [String : Bool] = ["Jamón": false, "Cebolla": false, "Salchicha": false, "Pavo": false, "Pepperoni": false, "Piña": false, "Tomate": false, "Pimiento": false]
    
    init(sizep:String , masap: String?, quesop: String?) {
        self.size = sizep
        self.masa = masap
        self.queso = quesop
    }
    
    func setMass(masap:String) {
        self.masa = masap
    }
    
    func setCheese(cheese:String){
        self.queso = cheese
    }
}
