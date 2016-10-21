//
//  ViewController.swift
//  ExtendedBillCalculator
//
//  Created by Andrew Tait on 15/10/2016.
//  Copyright © 2016 Andrew Tait. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //variables
    
    @IBOutlet weak var starter: UITextField!
    @IBOutlet weak var mainCourse: UITextField!
    
    @IBOutlet weak var desert: UITextField!
    
    @IBOutlet weak var drinks: UITextField!
    
    
    @IBOutlet weak var tipSlider: UISlider!
    
    
    @IBOutlet weak var tipIncrement: UIStepper!
    
    
    @IBOutlet weak var tipDisplay: UITextView!
    
    
    @IBOutlet weak var mealTotal: UITextView!
    
    
    @IBOutlet weak var getMealTotal: UITextView!
    
    
    @IBAction func CalculateMealTotal(sender: AnyObject) {
        //Calcaulate meal total from all fields
        var total: Double = 0.0
        
        total = Double(starter.text!)! + Double(mainCourse.text!)! + Double(desert.text!)! + Double(drinks.text!)!
        
        getMealTotal.text = String(total)
        
    }
    
    @IBAction func tipSliderChanged(sender: AnyObject) {
               self.tipIncrement.value=Double(tipSlider.value)
        
        
        let tipString=String(format: "%1.2f", self.tipSlider.value)
        tipDisplay.text=tipString
        
        
    }
    
    @IBAction func tipIncrementChanged(sender: AnyObject) {
 self.tipSlider.setValue(Float(tipIncrement.value), animated: true)
        
       //tipSliderChanged(nil)
        
        
        let tipString=String(format: "%1.2f", self.tipIncrement.value)
        tipDisplay.text=tipString

    }
    
    
    @IBAction func calculateBill(sender: AnyObject) {
        
        var bill: Double = 0.0
        
        bill = Double(getMealTotal.text!)! + Double(tipDisplay.text!)!
        mealTotal.text = String(bill)
        
    }
    @IBAction func hideKeyboard(sender: AnyObject) {
        starter.resignFirstResponder()
        mainCourse.resignFirstResponder()
        desert.resignFirstResponder()
        drinks.resignFirstResponder()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getMealTotal.text = "0.0"
        tipDisplay.text="25.5"
        starter.text = "0"; mainCourse.text="0"; desert.text="0"; drinks.text="0"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

