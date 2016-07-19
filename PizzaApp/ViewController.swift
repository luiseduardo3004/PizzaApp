//
//  ViewController.swift
//  PizzaApp
//
//  Created by Luis Santamaría on 19/07/16.
//  Copyright © 2016 Santamaria Technologies. All rights reserved.
//

import UIKit

protocol comunicacion {
    func fijarTamano()
    func fijarMasa()
    func fijarQueso()
    func fijarIngredientes()
}

class ViewController: UIViewController {
    
    var delegate: comunicacion? = nil
    let pizza = pizzavalues(tamano: "", masa: "",queso: "",ingredientes: [])
    
    enum Constantes {
        case Tamano
        case Masa
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate?.fijarTamano()
        self.delegate?.fijarMasa()
        self.delegate?.fijarQueso()
        self.delegate?.fijarIngredientes()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnConfirmacion(sender: AnyObject) {
        // Variable para saber si estan todos los pasos hechos
        print("tamano: \(pizza.tamano) masa: \(pizza.masa) queso: \(pizza.queso) ingredientes: \(pizza.ingredientes)")
        
        // Comprobamos que existan todos los ingredientes
        var estanTodos:Bool = true;
        var estanTodosIngredientes:Bool = false
        if pizza.tamano == "" {
            estanTodos = false;
        }
        if pizza.masa == "" {
            estanTodos = false;
        }
        if pizza.queso == "" {
            estanTodos = false
        }
        if pizza.ingredientes!.isEmpty {
            estanTodos = false
        } else {
            for index in pizza.ingredientes! {
                if (index != "Ninguno") {
                    estanTodosIngredientes = true;
                }
            }
        }
        if (!estanTodos || !estanTodosIngredientes) {
            let alert = UIAlertController(title: "Alert", message: "No has añadido todos los pasos", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        } else {
            print("Correcto")
            self.performSegueWithIdentifier("Confirmacion", sender: nil)
            
        }
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "Tamano") {
            print("tamaño")
            let destinationViewController = segue.destinationViewController as! ViewTamano
            destinationViewController.pizza = self.pizza
        }
        if (segue.identifier == "Masa") {
            print("masa")
            let destinationViewController = segue.destinationViewController as! ViewMasa
            destinationViewController.pizza = self.pizza
        }
        if (segue.identifier == "Queso") {
            print("queso")
            let destinationViewController = segue.destinationViewController as! ViewQueso
            destinationViewController.pizza = self.pizza
        }
        if (segue.identifier == "Ingredientes") {
            print("ingredientes")
            let destinationViewController = segue.destinationViewController as! ViewIngredientes
            destinationViewController.pizza = self.pizza
        }
        if (segue.identifier == "Confirmacion") {
            print("confirmacion")
            let destinationViewController = segue.destinationViewController as! ViewConfirmacion
            destinationViewController.pizza = self.pizza
        }
        
    }
    
    
    
    
    
    
}

