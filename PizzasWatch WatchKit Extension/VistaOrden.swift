//
//  VistaOrden.swift
//  PizzasWatch WatchKit Extension
//
//  Created by Sofia Abadia Bermeo on 6/20/19.
//  Copyright © 2019 Sofia Abadia Bermeo. All rights reserved.
//

import WatchKit
import Foundation


class VistaOrden: WKInterfaceController {

    var actual : DatosPizza?
    
    
    @IBOutlet weak var ordenL: WKInterfaceLabel!
    @IBOutlet weak var enviadaL: WKInterfaceLabel!
    
    @IBOutlet weak var btnEnviar: WKInterfaceButton!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        actual = (context as! DatosPizza)
        let tamano = actual!.size
        let masa = actual!.masa
        let queso = actual!.queso
        
        enviadaL.setHidden(true)
        
        var ingredientes : String = ""
        for ingrediente in actual!.ingredientes
        {
            if ingrediente.value
            {
                ingredientes += " " + ingrediente.key
            }
        }
        
        ordenL.setText("Tamaño: \(tamano) \nMasa: \(masa!) \nQueso: \(queso!) \nIngredientes: \(ingredientes)")
        // Configure interface objects here.
    }
    
    
    @IBAction func enviar() {
        enviadaL.setHidden(false)
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
