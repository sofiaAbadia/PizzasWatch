//
//  InterfaceController.swift
//  PizzasWatch WatchKit Extension
//
//  Created by Sofia Abadia Bermeo on 6/20/19.
//  Copyright © 2019 Sofia Abadia Bermeo. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    
    @IBAction func pedirPequena() {
        let actual = DatosPizza(sizep: "Pequeña", masap: nil, quesop: nil)
        pushController(withName: "Masa", context: actual)
    }
    
    @IBAction func pedirMediana() {
        let actual = DatosPizza(sizep: "Mediana", masap: nil, quesop: nil)
        pushController(withName: "Masa", context: actual)
    }
    
    @IBAction func pedirGrander() {
        let actual = DatosPizza(sizep: "Grande", masap: nil, quesop: nil)
        pushController(withName: "Masa", context: actual)
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
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
