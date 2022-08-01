//
//  ViewController.swift
//  Alhafeez
//
//  Created by Esraa Khaled   on 01/08/2022.
//

import UIKit
import DropDown

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    @IBOutlet weak var selectBtn: UIButton!
    @IBOutlet weak var menuBtn: UIBarButtonItem!
    @IBOutlet weak var viewAllBtn: UIButton!
    @IBOutlet weak var viewRestBtn: UIButton!
    
    @IBOutlet weak var collectionViewItems: UICollectionView!
    @IBOutlet weak var CollectionViewSales: UICollectionView!
    @IBOutlet weak var collectionViewHiring: UICollectionView!
    private let dropDown = DropDown()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if(collectionView == collectionViewItems){
            return 3;
        }
        else {
            return 6;
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewItems.dequeueReusableCell(withReuseIdentifier: "sectionCell", for: indexPath) as! ItemsCell
        cell.backgroundColor = UIColor.white
        if(collectionView == CollectionViewSales){
            let cell2 = CollectionViewSales.dequeueReusableCell(withReuseIdentifier: "SalesCell", for: indexPath) as! salecell
            return cell2
        }
        else if(collectionView == collectionViewHiring){
            let cell3 = collectionViewHiring.dequeueReusableCell(withReuseIdentifier: "hiringCell", for: indexPath) as! hiringCell
            return cell3
        }
        return cell
    }
    private func setUpUI() {
       
        dropDown.anchorView = selectBtn
       // dropDown.dataSource = EgyptCitiesArray.EgyptCities
    }
    

}

