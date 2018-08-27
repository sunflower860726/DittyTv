//
//  MenuVC.swift
//  Dittytz
//
//  Created by admin on 8/27/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class MenuVC: UIViewController{

    @IBOutlet weak var LiveView: UIView!
    @IBOutlet weak var NewView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        self.tabBarController?.tabBar.isHidden = true
//        let tap = UITapGestureRecognizer(target: self, action: #selector(self.touchTapped(_:)))
//        LiveView.addGestureRecognizer(tap)
//        NewView.addGestureRecognizer(tap)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tap(_ sender: UITapGestureRecognizer) {
        print("asdfasdfasdfasdf")
        let tag = sender.view!.tag
        let destination = ["LiveTableVC", "NewsVC", "ScheduleVC"," ShowsListVC", "PodcastTableVC", "StoreVC", "AboutVC", "DittyWebVC", "PrivacyVC", "ProfileVC"]
        
//        let desinationVC = self.storyboard?.instantiateViewController(withIdentifier: destination[tag-1]) as! UIViewController
//        self.navigationController?.popViewController(animated: true)
//        self.navigationController?.pushViewController(desinationVC, animated: true)
//        self.tabBarController?.tabBar.isHidden = false
        //self.tabBarController.se

    }

    @IBAction func closeMenu(_ sender: Any) {
        print("ccccccccccccccccccc")
        self.navigationController?.popViewController(animated:true)
        self.navigationController?.navigationBar.isHidden = false
        self.tabBarController?.tabBar.isHidden = false
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
