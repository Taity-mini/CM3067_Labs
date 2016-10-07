//
//  BillCalculator.swift
//  Lab1q3
//
//  Created by Andrew Tait on 01/10/2016.
//  Copyright © 2016 Andrew Tait. All rights reserved.
//

import Foundation


class billCalculator
{
    
    //Class variables
    
    var starter: Double = 0.0
    var mainCourse: Double = 0.0
    var desert: Double = 0.0
    var vATRatePerCent = 0.20
    
    
    //Methods
    
    var mealTotal: Double{
        get{
          return starter + mainCourse + desert
        }
        
    }
    
    var vatAddedToBill: Double {
        get{
            return mealTotal * vATRatePerCent
        }
        
    }
    
    var totalBill: Double{
        get{
            return mealTotal + vatAddedToBill;
        }
    }
    
    func PrintBill()
    {
        print ("*****Printing BILL******")
        print ("Starter:     £", starter)
        print ("Main Course: £", mainCourse)
        print ("Desert:      £", desert)
        print ("VAT:         £", vatAddedToBill)
        print ("The Total bill comes to (included vat): £", totalBill);
    }
    
    func getUserInput()
    {
        print("Please enter cost (£) for Starter:")
        
        var input = readLine(stripNewline: true)
        self.starter = Double(input!)!
        
        
        print("Please enter cost (£) for Main Course:")
        
        input = readLine(stripNewline: true)
        self.mainCourse = Double(input!)!

        print("Please enter cost (£) for Desert:")
        
        input = readLine(stripNewline: true)
        self.desert = Double(input!)!
        
        print("Calculating bill...")
        
        self.PrintBill()
        
    }
    
}



