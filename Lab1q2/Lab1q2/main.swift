//
//  main.swift
//  Lab1q2
//  Lab  1 Question 2
//
//  Created by Andrew Tait on 30/09/2016.
//  Copyright © 2016 Andrew Tait. All rights reserved.
//

import Foundation



var answer = Bool(false);
var nextGame = Bool(true);

repeat{
    var randomNumber = Int(arc4random_uniform(101));
    print (randomNumber);
    //Give the user 6 attempts at guessing the random number
    
    print ("Do you want to play? Yes or no")
    var input2 = readLine(stripNewline: true)
    var prompt = String(input2!)
    
    if(prompt == "no")
    {
        nextGame = false
    }
    else{
        nextGame = true
        answer = false
    }
    
    if(nextGame)
    {
        for count in 1...6
        {
            //Check if the answer is correct or not
            if(!answer)
            {
                print ("Attempt Num: ", count)
                
                print ("Please enter a number")
                
                var input = readLine(stripNewline: true)
                var num1 = Int(input!)
                
                if(num1 > randomNumber)
                {
                    print("HI")
                }
                else if(num1 < randomNumber)
                {
                    print("LO")
                }
                else if(num1 == randomNumber)
                {
                    print("Correct Number, Well done!")
                    answer = true;
                    break;
                }
                else
                {
                    print("Incorrect Number")
                }
                
            }
            
        }
    }
    
}  while(nextGame)


