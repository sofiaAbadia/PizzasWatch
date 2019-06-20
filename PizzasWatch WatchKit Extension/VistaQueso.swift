//
//  VistaQueso.swift
//  PizzasWatch WatchKit Extension
//
//  Created by Sofia Abadia Bermeo on 6/20/19.
//  Copyright © 2019 Sofia Abadia Bermeo. All rights reserved.
//

import WatchKit
import Foundation


class VistaQueso: WKInterfaceController {

    var actual : DatosPizza?
    
    
    @IBAction func pedirParmesano() {
        actual?.setCheese(cheese: "Parmesano")
        pushController(withName: "Ingredientes", context: actual)
    }
    
    @IBAction func pedirCheddar() {
        actual?.setCheese(cheese: "Cheddar")
        pushController(withName: "Ingredientes", context: actual)
    }

    @IBAction func pedirMozzarella() {
        actual?.setCheese(cheese: "Mozzarella")
        pushController(withName: "Ingredientes", context: actual)
    }
    
    @IBAction func pedirSin() {
        actual?.setCheese(cheese: "Sin queso")
        pushController(withName: "Ingredientes", context: actual)
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        actual = (context as! DatosPizza)
        let masa = actual!.masa
        print(masa!)
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
