//
//  ViewMasa.swift
//  PizzaApp
//
//  Created by Luis Santamaría on 19/07/16.
//  Copyright © 2016 Santamaria Technologies. All rights reserved.
//

import UIKit

class ViewMasa: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, comunicacion {
    
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var Picker: UIPickerView!
    
    let Datos = ["Delgada", "Crujiente", "Gruesa"]
    
    var pizza = pizzavalues?()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Picker.dataSource = self
        Picker.delegate = self
        Label.text = "Delgada"
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
        return Datos[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        Label.text = Datos[row]
    }
    
    func fijarTamano() {
        
    }
    func fijarMasa() {
        pizza?.masa = Label.text
    }
    func fijarQueso() {
        
    }
    func fijarIngredientes() {
        
    }
    
    @IBAction func btnAceptar(sender: AnyObject) {
        pizza?.masa = Label.text
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
