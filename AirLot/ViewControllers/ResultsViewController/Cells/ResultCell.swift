//
//  ResultCell.swift
//  AirLot
//
//  Created by Przemysław Kalawski on 15/09/2019.
//  Copyright © 2019 Przemysław Kalawski. All rights reserved.
//

import UIKit


class ResultCell: UITableViewCell {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var destinationLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    var model: WelcomeElement! {
        didSet {
            self.dateLabel.text = self.model.inbound.segments.first!.departureDate
            self.destinationLabel.text = self.model.inbound.segments.first!.arrivalAirport
            self.priceLabel.text = "\(self.model.totalPrice.price)/person"
        }
    }
}
