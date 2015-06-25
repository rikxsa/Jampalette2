//
//  ViewController.swift
//  JAM
//
//  Created by 桜木力丸 on 2015/06/16.
//  Copyright (c) 2015年 桜木力丸. All rights reserved.
//


import UIKit

//音楽や動画の再生に使えるフレームワーク
import AVFoundation












//AudioPlayerDelegateプロトコル：音楽の再生／終了の処理
class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer : AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //再生する音源のURLを生成(C)
        let soundFilePath : NSString =
        NSBundle.mainBundle().pathForResource("C", ofType: "wav")!
        let fileURL : NSURL = NSURL(fileURLWithPath: soundFilePath as String)!
            
        
        //AVAudioPlayerのインスタンス化
        audioPlayer = AVAudioPlayer(contentsOfURL: fileURL, error: nil)
    
    
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    

    
    
//AudioPlayerDelegateプロトコル：音楽の再生／終了の処理
class ViewController: UIViewController, AVAudioPlayerDelegate {
        
        var audioPlayerD : AVAudioPlayer!
        override func viewDidLoad() {
            super.viewDidLoad()
            
        
            
            //再生する音源のURLを生成(D)
            let soundFilePathD : NSString =
            NSBundle.mainBundle().pathForResource("D", ofType: "wav")!
            let fileURLD : NSURL = NSURL(fileURLWithPath: soundFilePathD as String)!
            
            
            
            //AVAudioPlayerのインスタンス化
            audioPlayerD = AVAudioPlayer(contentsOfURL: fileURLD, error: nil)
            

            
            }
 
    
    
            // Do any additional setup after loading the view, typically from a nib.
            
        }
        

    
    
 

    
    
    
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
        
    }
    
    
    
    //ボタンをタップしている間音がなるアクション
    @IBAction func playButton(){
        audioPlayer.play()
        
   }
    
    //ボタンをタップをやめると音が止まるアクション
    @IBAction func playButton2(){
        audioPlayer.stop()
    }
    
    
    
    @IBAction func playButtonDstart(){
        audioPlayerD.play()
    }
    
    
    @IBAction func playButtonDstop(){
        audioPlayerD.stop()
    }

    
    
 


  
          
    
        
}