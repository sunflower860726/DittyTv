//
//  LiveDetailVC.swift
//  Dittytz
//
//  Created by admin on 8/26/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit
import AVFoundation
class LiveDetailVC: UIViewController {

    
    @IBOutlet weak var videoView: UIImageView!
    @IBOutlet weak var loaderIndicator: UIActivityIndicatorView!
    var player: AVPlayer!
    var playerLayer: AVPlayerLayer!
    var isVideoPlaying = false
    
    @IBOutlet weak var playstopBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.isHidden = true
        let url = URL(string: "https://mobile.dittytv.com/dittytv.stream_mobile/playlist.m3u8")!
        player = AVPlayer(url:url)
        playerLayer = AVPlayerLayer(player: player)
        playerLayer.videoGravity = .resizeAspectFill
        playerLayer.frame = videoView.bounds
        videoView.layer.addSublayer(playerLayer)
        playerLayer.player?.play()
        
        player.currentItem?.addObserver(self, forKeyPath: "playbackBufferEmpty", options: .new, context: nil)
        player.currentItem?.addObserver(self, forKeyPath: "playbackLikelyToKeepUp", options: .new, context: nil)
        player.currentItem?.addObserver(self, forKeyPath: "playbackBufferFull", options: .new, context: nil)
        
        loaderIndicator.isHidden = true
        print("dddddddddd")
        print(player.volume)
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        player.pause()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?)  {
        if object is AVPlayerItem {
            switch keyPath {
            case "playbackBufferEmpty"?:
                // Show loader
                loaderIndicator.isHidden = false
                loaderIndicator.startAnimating()
                break
            case "playbackLikelyToKeepUp"?:
                // Hide loader
                loaderIndicator.isHidden = true
                loaderIndicator.stopAnimating()
                break
            case "playbackBufferFull"?:
                // Hide loader
                loaderIndicator.isHidden = true
                loaderIndicator.stopAnimating()
                break
            case .none:
                return
            case .some(_):
                return
            }
        }
    }
    
    @IBAction func pressPlayStopBtn(_ sender: Any) {
        if isVideoPlaying == false {
            player.play()
            isVideoPlaying = true
            playstopBtn.setImage(UIImage(named: "forward"), for: .normal)
        } else {
            
            player.pause()
            isVideoPlaying = false
            playstopBtn.setImage(UIImage(named: "bigPlay"), for: .normal)
        }
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
