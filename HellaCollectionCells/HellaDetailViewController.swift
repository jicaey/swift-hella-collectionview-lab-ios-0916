//
//  HellaDetailViewController.swift
//  HellaCollectionCells
//
//  Created by Michael Young on 10/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
import UIKit

class HellaDetailViewController: UIViewController {
    
    @IBOutlet weak var detailLabel: UILabel!
    
    var label: Int?
    var color: UIColor?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let label = label {
            detailLabel?.text = "\(label)"
        }
        
        view.backgroundColor = color
    }
    
    
}
