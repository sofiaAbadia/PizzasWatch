//
//  VistaMasa.swift
//  PizzasWatch WatchKit Extension
//
//  Created by Sofia Abadia Bermeo on 6/20/19.
//  Copyright © 2019 Sofia Abadia Bermeo. All rights reserved.
//

import WatchKit
import Foundation


class VistaMasa: WKInterfaceController {
    
    var actual : DatosPizza?

    @IBAction func pedirDelagada() {
        actual?.setMass(masap: "Delgada")
        pushController(withName: "Queso", context: actual)
    }
    
    @IBAction func pedirCrujiente() {
        actual?.setMass(masap: "Crujiente")
        pushController(withName: "Queso", context: actual)
    }
    
    @IBAction func pedirGruesa() {
        actual?.setMass(masap: "Gruesa")
        pushController(withName: "Queso", context: actual)
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        actual = (context as! DatosPizza)
        let size = actual!.size
        print(size)
        
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
