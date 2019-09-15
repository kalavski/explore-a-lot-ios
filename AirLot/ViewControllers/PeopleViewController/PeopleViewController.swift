//
//  PeopleViewController.swift
//  AirLot
//
//  Created by Przemysław Kalawski on 15/09/2019.
//  Copyright © 2019 Przemysław Kalawski. All rights reserved.
//


import UIKit

class PeopleViewController: UIViewController {
    
    private var numberOfAdults: Int = 1
    private var numberOfTeenagers: Int = 0
    private var numberOfChildren: Int = 0
    private var numberOfInfants: Int = 0
    
    private let contentService: ContentService = ContentService.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func plus(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            numberOfAdults += 1
        case 2:
            numberOfTeenagers += 1
        case 4:
            numberOfChildren += 1
        case 6:
            numberOfInfants += 1
        default:
            break
        }
    }
    
    @IBAction func minus(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            numberOfAdults -= 1
        case 3:
            numberOfTeenagers -= 1
        case 5:
            numberOfChildren -= 1
        case 7:
            numberOfInfants -= 1
        default:
            break
        }
    }
    
    
    @IBAction func onNext(_ sender: UIButton) {
        contentService.numberOfAdults = self.numberOfAdults
    }
    
}
