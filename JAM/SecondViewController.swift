//
//  SecondViewController.swift
//  JAM
//
//  Created by 桜木力丸 on 2015/06/28.
//  Copyright (c) 2015年 桜木力丸. All rights reserved.
//

import UIKit

//音楽や動画の再生に使えるフレームワーク
import AVFoundation


import UIKit

//音楽や動画の再生に使えるフレームワーク
import AVFoundation



//AudioPlayerDelegateプロトコル：音楽の再生／終了の処理
class SecondViewController: UIViewController, AVAudioPlayerDelegate {
    
    
    
    
    var audioPlayer : AVAudioPlayer?
    let filenames = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9","10","11","12","13","14","15","16","17","18","19","20","21","22"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
    }
    
    
    func playerWithFilename(filename: String) -> AVAudioPlayer? {
        if let soundFilePath =
            NSBundle.mainBundle().pathForResource(filename, ofType: "wav"),
            fileURL = NSURL(fileURLWithPath: soundFilePath) {
                return AVAudioPlayer(contentsOfURL: fileURL, error: nil)
        } else {
            return nil
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
        
    }
    
    //ボタンをタップしている間音がなるアクション
    @IBAction func playButton(button: UIButton){
        audioPlayer = playerWithFilename(filenames[button.tag])
        audioPlayer?.play()
    }
    
    //ボタンをタップをやめると音が止まるアクション
    @IBAction func playButton2(){
        audioPlayer?.stop()
    }
}