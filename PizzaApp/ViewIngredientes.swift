//
//  ViewIngredientes.swift
//  PizzaApp
//
//  Created by Luis Santamaría on 19/07/16.
//  Copyright © 2016 Santamaria Technologies. All rights reserved.
//

import UIKit

class ViewIngredientes: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, comunicacion {
    
    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var Label2: UILabel!
    @IBOutlet weak var Label3: UILabel!
    @IBOutlet weak var Label4: UILabel!
    @IBOutlet weak var Label5: UILabel!
    
    @IBOutlet weak var Picker1: UIPickerView!
    @IBOutlet weak var Picker2: UIPickerView!
    @IBOutlet weak var Picker3: UIPickerView!
    @IBOutlet weak var Picker4: UIPickerView!
    @IBOutlet weak var Picker5: UIPickerView!
    
    
    let Datos = ["Ninguno", "Jamón", "Pepperoni", "Pavo", "Salchicha", "Aceituna", "Cebolla", "Pimiento", "Piña", "Anchoa"]
    
    var pizza = pizzavalues?()
    var ingrediente1: String = "Ninguno"
    var ingrediente2: String = "Ninguno"
    var ingrediente3: String = "Ninguno"
    var ingrediente4: String = "Ninguno"
    var ingrediente5: String = "Ninguno"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Picker1.dataSource = self
        Picker1.delegate = self
        Label1.text = "Ninguno"
        
        Picker2.dataSource = self
        Picker2.delegate = self
        Label2.text = "Ninguno"
        
        Picker3.dataSource = self
        Picker3.delegate = self
        Label3.text = "Ninguno"
        
        Picker4.dataSource = self
        Picker4.delegate = self
        Label4.text = "Ninguno"
        
        Picker5.dataSource = self
        Picker5.delegate = self
        Label5.text = "Ninguno"
    }
    
    override func viewDidAppear(animated: Bool) {
        let viewController = ViewController()
        viewController.delegate = self
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Datos.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if (pickerView == Picker1) {
            ingrediente1 = Datos[row]
        }
        if (pickerView == Picker2) {
            ingrediente2 = Datos[row]
        }
        if (pickerView == Picker3) {
            ingrediente3 = Datos[row]
        }
        if (pickerView == Picker4) {
            ingrediente4 = Datos[row]
        }
        if (pickerView == Picker5) {
            ingrediente5 = Datos[row]
        }
        
        return Datos[row]
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        Label1.text = ingrediente1
        Label2.text = ingrediente2
        Label3.text = ingrediente3
        Label4.text = ingrediente4
        Label5.text = ingrediente5
    }
    
    
    func fijarTamano() {
        
    }
    func fijarMasa() {
        
    }
    func fijarQueso() {
        
    }
    func fijarIngredientes() {
        pizza?.ingredientes!.append(ingrediente1)
        pizza?.ingredientes!.append(ingrediente2)
        pizza?.ingredientes!.append(ingrediente3)
        pizza?.ingredientes!.append(ingrediente4)
        pizza?.ingredientes!.append(ingrediente5)
    }
    @IBAction func btnAceptar(sender: AnyObject)
    {
        pizza?.ingredientes!.append(ingrediente1)
        pizza?.ingredientes!.append(ingrediente2)
        pizza?.ingredientes!.append(ingrediente3)
        pizza?.ingredientes!.append(ingrediente4)
        pizza?.ingredientes!.append(ingrediente5)
        //print(pizza!.ingredientes)
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
}
