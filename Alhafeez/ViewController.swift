//
//  ViewController.swift
//  Alhafeez
//
//  Created by Esraa Khaled   on 01/08/2022.
//

import UIKit
import DropDown

class ViewController:  UIViewController
{


    @IBOutlet weak var categoriesCollectionViewCell: UICollectionView!
    
    
    
    
    // MARK: - IBOutlets
    //
    @IBOutlet weak private var homeTableView: UITableView!
    
    @IBOutlet weak var selectBtn: UIButton!
    @IBOutlet weak var menuBtn: UIBarButtonItem!
   
   let categories = ["house1","house2","house3"]
    let categoriesLbl = ["sale","rent","rentDaily"]
    private let dropDown = DropDown()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        categoriesCollectionViewCell.delegate = self
        categoriesCollectionViewCell.dataSource = self
        homeTableView.dataSource = self
        homeTableView.delegate = self
       
        
    }
    
    private func setUpUI() {
        dropDown.anchorView = selectBtn
       // dropDown.dataSource = EgyptCitiesArray.EgyptCities
    }
    

}
extension ViewController :UICollectionViewDelegate,UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
       return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = categoriesCollectionViewCell.dequeueReusableCell(withReuseIdentifier: "CategoriesCell", for: indexPath) as! CategoriesCollectionCell
        cell.categoriesImage.image = UIImage(named: categories[indexPath.row])
        cell.categoriesLabel.text = categoriesLbl[indexPath.row]
        return cell
    }
    
    
}
extension ViewController : UITableViewDataSource,UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CategoriesTableViewCell") as? CategoriesTableViewCell
        else{
           return UITableViewCell()
        }
        return cell
    }
    
    
}
