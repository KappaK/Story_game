//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by Rayne on 11/11/15.
//  Copyright (c) 2015 Chibidebu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var whenLabel: UILabel!   //Label の宣言
    @IBOutlet var whereLabel: UILabel!
    @IBOutlet var whoLabel: UILabel!
    @IBOutlet var whatLabel: UILabel!
    
    
    var whenArray:[String] = ["One year ago", "One month ago", "One week ago", "Yesterday", "Today"]
    var whereArray:[String] = ["At my house,", "At school,", "At the hotel,", "At my friend's house,", "At the onsen,"]
    var whoArray: [String] = ["I", "My friend", "My teacher", "My mum", "My dad"]
    var whatArray: [String] = ["Got mad", "Cried", "Screamed", "Swore at me", "Fought"]
    
    var index:Int = 0
    
    //when, where, who, what の配列でStringで表せるものを宣言する
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func change() {
        whenLabel.text = whenArray[index]    //配列をテキストにして表示される
        whereLabel.text = whereArray[index]
        whoLabel.text = whoArray[index]
        whatLabel.text = whatArray[index]
        
        index = index + 1
                            //Index に１足して、次のIndexに変わる

        
        if index > 3{
            index = 0
        }
    }
    
    @IBAction func reset() {
        whenLabel.text = "-----"
        whereLabel.text = "-----"     //リセットする時にLabel を_____にする
        whoLabel.text = "-----"
        whatLabel.text = "-----"
        
    index = 0
        
    }
    
    @IBAction func random() {
        var whenIndex = Int(arc4random_uniform(5))
        var whereIndex = Int(arc4random_uniform(5))
        var whoIndex = Int(arc4random_uniform(5))
        var whatIndex = Int(arc4random_uniform(5))
        
                                                        //Indexからランダムに0~5のIndex を選ぶ
        
        
        NSLog("When: %d", whenIndex)
        NSLog("Where: %d", whereIndex)  //NSLog を使ってRandomで選ばれたIndexを表示させる
        NSLog("Who: %d", whoIndex)
        NSLog("What: %d", whatIndex)
        
        whenLabel.text = whenArray[whenIndex]
        whereLabel.text = whereArray[whereIndex]
        whoLabel.text = whoArray[whoIndex]
        whatLabel.text = whatArray[whatIndex]
        
        
                                        //テキストにして配列とそのIndexをLabel.textに代入する
    }
    
    
    

}

