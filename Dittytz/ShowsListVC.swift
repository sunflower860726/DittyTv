//
//  ShowsListVC.swift
//  Dittytz
//
//  Created by admin on 8/25/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class ShowsListVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    var items:[String] = ["CAMPFIRE", "CHARTS", "CONCERTSERIES", "EARTHTONES", "ELEVEN", "GPS", "INSIGHTS", "RYTHMROOTS", "SOULSIDE", "STANDBYYOURVAN", "THECURVE", "TRES"]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BrandCell", for: indexPath as IndexPath) as! BrandCell
        cell.backgroundColor = UIColor.brown
        let image: UIImage = UIImage(named: "DTV.SHOW." + items[indexPath.count])!
        cell.imageView = UIImageView.init(image: image)
        
        return cell
    }
    

    @IBOutlet var BrandCollection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        BrandCollection.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}