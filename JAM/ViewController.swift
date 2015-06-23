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
        
        
        
        //再生する音源のURLを生成(D)
        let soundFilePathD : NSString =
        NSBundle.mainBundle().pathForResource("D", ofType: "wav")!
        let fileURLD : NSURL = NSURL(fileURLWithPath: soundFilePathD as String)!
        
        //再生する音源のURLを生成(E)
        let soundFilePathE : NSString =
        NSBundle.mainBundle().pathForResource("E", ofType: "wav")!
        let fileURLE : NSURL = NSURL(fileURLWithPath: soundFilePathE as String)!
        
        //再生する音源のURLを生成(F)
        let soundFilePathF : NSString =
        NSBundle.mainBundle().pathForResource("F", ofType: "wav")!
        let fileURLF : NSURL = NSURL(fileURLWithPath: soundFilePathF as String)!
        
        //再生する音源のURLを生成(G)
        let soundFilePathG : NSString =
        NSBundle.mainBundle().pathForResource("G", ofType: "wav")!
        let fileURLG : NSURL = NSURL(fileURLWithPath: soundFilePathG as String)!
        
        //再生する音源のURLを生成(Ad)
        let soundFilePathA : NSString =
        NSBundle.mainBundle().pathForResource("Ad", ofType: "wav")!
        let fileURLA : NSURL = NSURL(fileURLWithPath: soundFilePathA as String)!
        
        //再生する音源のURLを生成(Bd)
        let soundFilePathB : NSString =
        NSBundle.mainBundle().pathForResource("Bd", ofType: "wav")!
        let fileURLB : NSURL = NSURL(fileURLWithPath: soundFilePathB as String)!
        
        //再生する音源のURLを生成(Ed)
        let soundFilePathEd : NSString =
        NSBundle.mainBundle().pathForResource("Ed", ofType: "wav")!
        let fileURLEd : NSURL = NSURL(fileURLWithPath: soundFilePathEd as String)!
    
        //再生する音源のURLを生成(Fd)
        let soundFilePathFd : NSString =
        NSBundle.mainBundle().pathForResource("Fd", ofType: "wav")!
        let fileURLFd : NSURL = NSURL(fileURLWithPath: soundFilePathFd as String)!
    
        //再生する音源のURLを生成(Gd)
        let soundFilePathGd : NSString =
        NSBundle.mainBundle().pathForResource("Gd", ofType: "wav")!
        let fileURLGd : NSURL = NSURL(fileURLWithPath: soundFilePathGd as String)!
        
        //AVAudioPlayerのインスタンス化
        audioPlayer = AVAudioPlayer(contentsOfURL: fileURL, error: nil)
    
    
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
          
    
    
    

}