//
//  VistaIngredientes.swift
//  PizzasWatch WatchKit Extension
//
//  Created by Sofia Abadia Bermeo on 6/20/19.
//  Copyright © 2019 Sofia Abadia Bermeo. All rights reserved.
//

import WatchKit
import Foundation


class VistaIngredientes: WKInterfaceController {

    var actual : DatosPizza?
    var num = 0
    @IBOutlet weak var maximoL: WKInterfaceLabel!
    
    @IBAction func hayJamon(_ value: Bool) {
        if(num < 5)
        {
            actual!.ingredientes["Jamón"] = value ? true : false
            printIngredientes()
            num += 1
        }
        else{
            maximoL.setHidden(false)
        }
    }
    
    @IBAction func hayPepperoni(_ value: Bool) {
        if(num < 5)
        {
            actual!.ingredientes["Pepperoni"] = value ? true : false
            printIngredientes()
            num += 1
        }
        else{
            maximoL.setHidden(false)
        }
    }
    
    @IBAction func haySalchicha(_ value: Bool) {
        if(num < 5)
        {
            actual!.ingredientes["Salchicha"] = value ? true : false
            printIngredientes()
            num += 1
        }
        else{
            maximoL.setHidden(false)
        }
    }
    
    @IBAction func hayPavo(_ value: Bool) {
        if( num < 5)
        {
            actual!.ingredientes["Pavo"] = value ? true : false
            printIngredientes()
            num += 1
        }
        else{
            maximoL.setHidden(false)
        }
    }
    
    @IBAction func hayCebolla(_ value: Bool) {
        if(num < 5)
        {
            actual!.ingredientes["Cebolla"] = value ? true : false
            printIngredientes()
            num += 1
        }
        else{
            maximoL.setHidden(false)
        }
    }
    
    @IBAction func hayTomate(_ value: Bool) {
        if(num < 5)
        {
            actual!.ingredientes["Tomate"] = value ? true : false
            printIngredientes()
            num += 1
        }
        else{
            maximoL.setHidden(false)
        }
    }
    
    @IBAction func hayPina(_ value: Bool) {
        if(num < 5)
        {
            actual!.ingredientes["Piña"] = value ? true : false
            printIngredientes()
            num += 1
        }
        else{
            maximoL.setHidden(false)
        }
    }
    
    @IBAction func hayPimiento(_ value: Bool) {
        if(num < 5)
        {
            actual!.ingredientes["Pimiento"] = value ? true : false
            printIngredientes()
            num += 1
        }
        else{
            maximoL.setHidden(false)
        }
    }
    
    func printIngredientes() {
        for ingredient in actual!.ingredientes {
            if ingredient.value {
                print (ingredient.key)
            }
        }
    }
    
    @IBAction func pedirPizza() {
        pushController(withName: "Orden", context: actual)
    }
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        actual = (context as! DatosPizza)
        let queso = actual!.queso
        print(queso!)
        maximoL.setHidden(true)
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
