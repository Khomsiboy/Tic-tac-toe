//
//  ViewController.swift
//  Tic tac toe
//
//  Created by Khomsan Bangbor  on 2021-01-02.
//

import UIKit

class ViewController: UIViewController {
    
    var Player = 1
    var boardRoom = [0,0,0,0,0,0,0,0,0]
    
    @IBAction func XOButton(_ sender: UIButton) {
        
        if boardRoom[sender.tag-1 ] == 0{
            if Player == 1{
                sender.setImage(UIImage(named: "o.png"), for: UIControl.State())
                Player = 2
            }
            else{
                sender.setImage(UIImage(named: "x.png"), for: UIControl.State())
                Player = 1
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


}

