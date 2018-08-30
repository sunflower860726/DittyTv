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

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func pressLive(_ sender: Any) {
        //let destVC = self.storyboard?.instantiateViewController(withIdentifier: "LiveDetailVC") as! LiveDetailVC
        
        //let viewControllers = navigationController?.viewControllers
        
        //viewControllers?.removeLast(1) //here 2 views to pop index numbers of views
        
        //navigationController?.setViewControllers(viewControllers!, animated: true)
        

        //self.navigationController?.pushViewController(destVC, animated: true)
        //self.navigationController?.viewControllers.removeLast()
        //self.navigationController?.popViewController(animated: false)
        self.tabBarController?.tabBar.isHidden = false
        self.tabBarController?.selectedIndex = 2
        self.navigationController?.popViewController(animated: false)
        
    }
    
    @IBAction func tap(_ sender: UITapGestureRecognizer) {
        print("asdfasdfasdfasdf")
        let tag = sender.view!.tag
        let destination = ["LiveTableVC", "NewsVC", "ScheduleVC"," ShowsListVC", "PodcastTableVC", "StoreVC", "AboutVC", "DittyWebVC", "PrivacyVC", "ProfileVC"]

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
