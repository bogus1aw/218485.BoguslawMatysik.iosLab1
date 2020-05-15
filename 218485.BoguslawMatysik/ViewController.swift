//
//  ViewController.swift
//  218485.BoguslawMatysik
//
//  Created by Student on 15/05/2020.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var mealPrice: UITextField!
    
    @IBOutlet weak var finalPrice: UILabel!
    
    private var mealPriceNumber : Float?{
        get{
            Float(mealPrice.text!)
        }
    }
    
    private var serviceRateValue: Float = 0.0
    
    @IBAction func serviceRate(_ sender: UISlider) {
        serviceRateValue = sender.value
    }
    
    
    
    @IBAction func calculatePrice(_ sender: UIButton) {
        print(" was called")
        if mealPriceNumber != nil {
            finalPrice.text =  String(mealPriceNumber! * (serviceRateValue + 100) / 100)
        }

    }
}

