//
//  pizza.swift
//  PizzaApp
//
//  Created by Luis Santamaría on 19/07/16.
//  Copyright © 2016 Santamaria Technologies. All rights reserved.
//

import UIKit

class pizzavalues {
    
    var tamano:String?
    var masa:String?
    var queso:String?
    var ingredientes:[String]?
    
    init(tamano: String, masa: String,queso: String,ingredientes:[String]) {
        self.tamano = tamano
        self.masa = masa
        self.queso = queso
        self.ingredientes = ingredientes
    }
}
