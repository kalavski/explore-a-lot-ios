//
//  BudgetViewController.swift
//  AirLot
//
//  Created by Przemysław Kalawski on 15/09/2019.
//  Copyright © 2019 Przemysław Kalawski. All rights reserved.
//

import UIKit

class BudgetViewController: UIViewController {
    
    private let contentService: ContentService = ContentService.shared
    
    @IBAction func chooseBudget(_ sender: UIButton) {
        
        switch sender.tag {
        case 1:
            contentService.maxPrice = 500
        case 2:
            contentService.maxPrice = 1500
        case 3:
            contentService.maxPrice = 3000
        case 4:
            contentService.maxPrice = 6000
        default:
            break
        }
    }
    
}
