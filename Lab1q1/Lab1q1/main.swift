//
//  main.swift
//  Lab1q1
//
//  Created by ANDREW TAIT (1504693) on 30/09/2016.
//  Copyright © 2016 ANDREW TAIT (1504693). All rights reserved.
//

import Foundation

print("First Number to add: ")
var input = readLine(stripNewline: true)
let num1 = Int(input!)
print ("Second Number to add: ")
input = readLine(stripNewline: true)
let num2 = Int(input!)
var total = num1! + num2!

print("The sum of numbers: " ,num1, "and ", num2, "=" , total)



