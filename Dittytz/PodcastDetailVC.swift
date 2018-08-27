//
//  PodcastDetailVC.swift
//  Dittytz
//
//  Created by admin on 8/27/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class PodcastDetailVC: UIViewController {

    @IBOutlet weak var shareView: UIView!
    @IBOutlet weak var menuView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func pressShareBtn(_ sender: Any) {
        shareView.isHidden = false
        menuView.isHidden = true
        
    }
    
    @IBAction func pressCloseBtn(_ sender: Any) {
        shareView.isHidden = true
        menuView.isHidden = false
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
