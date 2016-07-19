//
//  ViewConfirmacion.swift
//  PizzaApp
//
//  Created by Luis Santamaría on 19/07/16.
//  Copyright © 2016 Santamaria Technologies. All rights reserved.
//

import UIKit

class ViewConfirmacion: UIViewController {
    var pizza = pizzavalues?()
    
    @IBOutlet weak var LabelTamano: UILabel!
    @IBOutlet weak var LabelMasa: UILabel!
    @IBOutlet weak var LabelQueso: UILabel!
    @IBOutlet weak var LabelIngredientes: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        if let pizzaSeleccion = pizza {
            var textoIngredientes:String = ""
            for ingredientes in pizzaSeleccion.ingredientes! {
                if (ingredientes != "Ninguno") {
                    textoIngredientes += "\(ingredientes) , "
                }
            }
            LabelTamano.text = "\(pizzaSeleccion.tamano!)"
            LabelMasa.text = "\(pizzaSeleccion.masa!)"
            LabelQueso.text = "\(pizzaSeleccion.queso!)"
            LabelIngredientes.text = "\(textoIngredientes)"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnEnviarCocina(sender: AnyObject) {
        self.performSegueWithIdentifier("enviarCocina", sender: nil)
        
        
    }
    @IBAction func btnCambiarIngredientes(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    
}
