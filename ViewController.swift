//
//  ViewController.swift
//  Cough-E
//
//  Created by Code Nation on 27/11/2019.
//  Copyright © 2019 Code Nation. All rights reserved.
//

import UIKit

var basketPrices: [Double] =  []
var i = 0


class ViewController: UIViewController {
    let drinks = ["Espresso", "Americano", "Cappacino", "Latte", "Mocha", "Macchiato"]
    
    let AnimatedController = AnimatedTabBarController.self
    
    let prices: [Double] = [1.5, 2, 2.3, 2.5, 2.5, 2.7, 2.8]
    var basketItems: [String] = []
    //MARK: OUTLET
    @IBOutlet weak var drink1: UILabel!
    @IBOutlet weak var drink2: UILabel!
    @IBOutlet weak var drink3: UILabel!
    @IBOutlet weak var drink4: UILabel!
    @IBOutlet weak var drink5: UILabel!
    @IBOutlet weak var drink6: UILabel!
    
    @IBOutlet weak var price1: UILabel!
    @IBOutlet weak var price2: UILabel!
    @IBOutlet weak var price3: UILabel!
    @IBOutlet weak var price4: UILabel!
    @IBOutlet weak var price5: UILabel!
    @IBOutlet weak var price6: UILabel!
    @IBOutlet weak var navbar: UITabBarItem!
    
    
    //MARK: Variables & Functions
    
    
    //Add Buttons
    @IBAction func drinkAdd1(_ sender: Any) {
        addDrink(nol1: 0)
    }
    @IBAction func drinkAdd2(_ sender: Any) {
        addDrink(nol1: 1)
        
    }
    @IBAction func drinkAdd3(_ sender: Any) {
         addDrink(nol1: 2)
    }
    @IBAction func drinkAdd4(_ sender: Any) {
         addDrink(nol1: 3)
    }
    @IBAction func drinkAdd5(_ sender: Any) {
         addDrink(nol1: 4)
    }
    @IBAction func drinkAdd6(_ sender: Any) {
         addDrink(nol1: 5)
    }
    
    
    //Minus Buttons
    @IBAction func drinkminus1(_ sender: Any) {
        minusDrink(nol: 0)
    }
    @IBAction func drinkminus2(_ sender: Any) {
        minusDrink(nol: 1)
        
    }
    @IBAction func drinkminus3(_ sender: Any) {
        minusDrink(nol: 2)
       
    }
    @IBAction func drinkminus4(_ sender: Any) {
        minusDrink(nol: 3)
    }
    @IBAction func drinkminus5(_ sender: Any) {
        minusDrink(nol: 4)
    }
    @IBAction func drinkminus6(_ sender: Any) {
        minusDrink(nol: 5)
        }
    
    func loadDrinks(){
        drink1.text = drinks[0]
        drink2.text = drinks[1]
        drink3.text = drinks[2]
        drink4.text = drinks[3]
        drink5.text = drinks[4]
        drink6.text = drinks[5]
        price1.text = "£\(String(prices[0]))0"
        price2.text = "£\(String(prices[1]))0"
        price3.text = "£\(String(prices[2]))0"
        price4.text = "£\(String(prices[3]))0"
        price5.text = "£\(String(prices[4]))0"
        price6.text = "£\(String(prices[5]))0"
    }
    func addDrink(nol1: Int){
        if (i >= 0) {
        i = i + 1
        tabBarItem.badgeValue = String(i)
        basketPrices.append(Double((prices[nol1])))
        }
    }
    func minusDrink(nol: Int) {
        if (i > 0) {
        i = i - 1
        basketPrices.append(Double(-(prices[nol])))
        tabBarItem.badgeValue = String(i)
        }
        if (i == 0) {
            tabBarItem.badgeValue = nil
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadDrinks()
    }

}


