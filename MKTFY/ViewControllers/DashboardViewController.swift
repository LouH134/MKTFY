//
//  DashboardViewController.swift
//  MKTFY
//
//  Created by Louis Harris on 11/19/21.
//

import UIKit

class DashboardViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    @IBOutlet weak var categoriesCollectionView: UICollectionView!
    @IBOutlet weak var itemsCollectionView: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   //MARK: - CollectionView Protocols
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == categoriesCollectionView{
            return 0
        }else{
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //itemscollection view itemscell caters
       return UICollectionViewCell()
    }

}
