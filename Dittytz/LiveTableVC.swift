//
//  LiveTableVC.swift
//  Dittytz
//
//  Created by admin on 8/25/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class LiveCell: UITableViewCell {

    @IBOutlet weak var videoView: UIView!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var durationLabel: UILabel!
}
class LiveTableVC: UITableViewController {
    var videos = ["https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4", "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4"]
    override func viewDidLoad() {
        super.viewDidLoad()
        //customzie navigationbar
        let navigationBar = navigationController!.navigationBar
        navigationBar.isTranslucent = false
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return videos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "liveCell", for: indexPath)
        cell.separatorInset = UIEdgeInsets.zero
        cell.layoutMargins = UIEdgeInsets.zero
        let url = URL(string: videos[indexPath.row])
        let player = AVPlayer(url:url!)
       // player.currentItem?.addObserver(self, forKeyPath: "duration", options: [.new, .initial], context: nil)
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.videoGravity = .resize
        cell.viewWithTag(0)?.layer.addSublayer(playerLayer)
        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
