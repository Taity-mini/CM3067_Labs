//
//  ViewController.swift
//  CardGame
//
//  Created by Andrew Tait on 07/10/2016.
//  Copyright © 2016 Andrew Tait. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Label outlets
    
    //House
    @IBOutlet weak var firstHouseCard: UILabel!
    
    @IBOutlet weak var secondHouseCard: UILabel!
    
    @IBOutlet weak var houseScore: UILabel!
    
    //User
    @IBOutlet weak var userScore: UILabel!
    
    @IBOutlet weak var firstUserCard: UILabel!
    
    @IBOutlet weak var secondUserCard: UILabel!
    
    //Misc
    @IBOutlet weak var cardWinner: UILabel!
    
    //Variables
    var houseCard1: Int = 0
    var houseCard2: Int = 0
    var houseTotal: Int = 0
    var userCard1:  Int = 0
    var userCard2:  Int = 0
    var userTotal:  Int = 0
    var houseCards      = false
    
    
    //Additonal Functions
    
    func generateNumbers() -> Int
    {
        let card = Int(arc4random_uniform(13) + 1)
        return card
    }
    
    
    func displayCards(number: (Int)) -> String
    {
        switch(number)
        {
        case 11:
            return "J"
            
        case 12:
            return "Q"
            
        case 13:
            return "K"
            
        default:
            return String(number)
        }
        
    }
    
    func totalScores (number1: (Int), number2: (Int) ) -> Int
    {
        return number1 + number2
    }
    
    
    func displayWinner(house: (Int), user: (Int) )
    {
        if(house > user)
        {
            self.cardWinner.text = "The House Wins"
            
        }
        else if(user > house)
        {
            self.cardWinner.text = "The User Wins"
        }
        else{
            self.cardWinner.text = "Tie"
        }
    }
    
    //Button functions
    
    @IBAction func dealCards(sender: UIButton) {
        
        
        //Generate random numbers for both the house and user
        if(!houseCards)
        {
            self.houseCard1 = generateNumbers();
            self.houseCard2 = generateNumbers();
            
            self.userCard1 = generateNumbers();
            self.userCard2 = generateNumbers();
            
            //Set card labels to correct string
            self.firstHouseCard.text = displayCards(self.houseCard1)
            self.secondHouseCard.text = displayCards(self.houseCard2)
            self.firstUserCard.text = displayCards(self.userCard1)
            self.secondUserCard.text = displayCards(self.userCard2)
            
            //Calculate & Display totals
            self.userTotal = totalScores(userCard1, number2: userCard2)
            self.houseTotal = totalScores(houseCard1, number2: houseCard2)
            self.houseScore.text = (String(self.houseTotal))
            self.userScore.text = (String(self.userTotal))
            
            
            
            
        }
        else{
            
            self.userCard1 = generateNumbers();
            self.userCard2 = generateNumbers();
            
            //Set card labels to correct string
            
            self.firstUserCard.text = displayCards(self.userCard1)
            self.secondUserCard.text = displayCards(self.userCard2)
            
            //Calculate & Display totals
            self.userTotal = totalScores(userCard1, number2: userCard2)
            self.userScore.text = (String(self.userTotal))
            //show hidden labels
            self.userScore.hidden=false
            self.cardWinner.hidden=false
            self.firstUserCard.hidden=false
            self.secondUserCard.hidden=false
        }
        
        //Finally Display Winner!
        displayWinner(self.houseTotal, user: self.userTotal)
        houseCards = false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.houseCard1 = generateNumbers();
        self.houseCard2 = generateNumbers();
        
        self.firstHouseCard.text = displayCards(self.houseCard1)
        self.secondHouseCard.text = displayCards(self.houseCard2)
        
        self.houseTotal = totalScores(houseCard1, number2: houseCard2)
        self.houseScore.text = (String(self.houseTotal))
        
        self.houseCards = true
        
        //hide labels on start
        self.userScore.hidden=true
        self.cardWinner.hidden=true
        self.firstUserCard.hidden=true
        self.secondUserCard.hidden=true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

