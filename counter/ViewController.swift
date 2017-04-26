//
//  ViewController.swift
//  counter
//
//  Created by s20151104682 on 17/4/19.
//  Copyright © 2017年 s20151104682. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgtwo: UIImageView!
    @IBOutlet weak var imgone: UIImageView!
    @IBOutlet weak var scoretwo: UILabel!
    @IBOutlet weak var scoreone: UILabel!
    @IBOutlet weak var one: UILabel!
    @IBOutlet weak var two: UILabel!
    @IBAction func oneup(_ sender: Any) {
        var score:Int = 0
        score=Int(one.text!)!;
        score=score+1;
        one.text=("\(score)");
    }
    @IBAction func twoup(_ sender: Any) {
        var score:Int = 0
        score=Int(two.text!)!;
        score=score+1;
        two.text=("\(score)");
    }
    @IBAction func exchange(_ sender: UIButton) {
        var sone:Int = 0
        var stwo:Int = 0
        var onescore:Int=0
        var twoscore:Int=0
        //var img1:UIImage
        //var img2:UIImage
        //var img:UIImage
    //img1=UIImage(imgone.image);
    //img2=UIImage(imgtwo.image);
        //img=onebody.image;
        //onebody.image=onebody.image;
        //onebody.image=img;
    onescore=Int(scoreone.text!)!;
    twoscore=Int(scoretwo.text!)!;
        stwo=Int(two.text!)!;
        sone=Int(one.text!)!;
        if(sone>=11){
            if (stwo<10) {
                onescore=1+onescore;
                sone=0;
                stwo=0;
            }
            if(sone-stwo>1){
                onescore=1+onescore;
                sone=0;
                stwo=0;
            }
            if(stwo-sone>1){
                twoscore=1+twoscore;
                sone=0;
                stwo=0;
            }
            print("wrong!");
        }
        if(stwo>=11){
            if (sone<10) {
                twoscore=1+twoscore;
                sone=0;
                stwo=0;
            }
            if(sone-stwo>1){
                onescore=1+onescore;
                sone=0;
                stwo=0;
            }
            if(stwo-sone>1){
                twoscore=1+twoscore;
                sone=0;
                stwo=0;
            }
            print("wrong!");
        }
    scoreone.text=("\(onescore)");
    scoretwo.text=("\(twoscore)");
        one.text=("\(sone)");
        two.text=("\(stwo)");
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

