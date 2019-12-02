//
//  Checkout.swift
//  Cough-E
//
//  Created by Code Nation on 29/11/2019.
//  Copyright © 2019 Code Nation. All rights reserved.
//

import UIKit
var checkOutFunctions = Checkout()

class Checkout: UIViewController {
    var priceSum = 0.0
    func priceAdd() {
        priceSum = Double(basketPrices.reduce(0, +))
        pricetotal.text = "£\(priceSum)0"
        print(basketPrices)
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool) {
        priceAdd()
    }
    @IBOutlet weak var pricetotal: UILabel!
}
