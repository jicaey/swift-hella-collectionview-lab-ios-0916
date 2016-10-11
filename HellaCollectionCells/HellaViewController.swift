//
//  ViewController.swift
//  HellaCollectionCells
//
//  Created by Flatiron School on 10/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    public let fibonacci = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987]

    override func viewDidLoad() {
    // Do any additional setup after loading the view, typically from a nib.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1000
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "hellaCell", for: indexPath)
        
        if fibonacci.contains(indexPath.item) {
            cell.backgroundColor = UIColor.purple
        } else {
            cell.backgroundColor = UIColor.yellow
        }
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            let destination = segue.destination as! HellaDetailViewController
            let cellTouched = self.collectionView.indexPathsForSelectedItems
            destination.label = cellTouched?[0].row
            if fibonacci.contains((cellTouched![0].row)) {
                destination.color = UIColor.purple
            } else {
                destination.color = UIColor.yellow
            }
        }
    }
}

