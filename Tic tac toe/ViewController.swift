//
//  ViewController.swift
//  Tic tac toe
//
//  Created by Khomsan Bangbor  on 2021-01-02.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var PlayerName: UILabel!
    var Player = 1
    var boardRoom = [0,0,0,0,0,0,0,0,0]
    let winningCombination = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    var gameIsActive = true
    
    @IBAction func XOButton(_ sender: UIButton) {
        
        if boardRoom[sender.tag-1 ] == 0 && gameIsActive == true{
            
            boardRoom[sender.tag-1] = Player
            
            if Player == 1{
                sender.setImage(UIImage(named: "o.png"), for: UIControl.State())
                Player = 2
            }
            else{
                sender.setImage(UIImage(named: "x.png"), for: UIControl.State())
                Player = 1
            }
        }
        
        for combinations in winningCombination{
            if boardRoom[combinations[0]] != 0 && boardRoom[combinations[0]] == boardRoom[combinations[1]] && boardRoom[combinations[1]] == boardRoom[combinations[2]] {
                gameIsActive = false
                
                if boardRoom[combinations[0]] == 1 {
                    PlayerName.text = "O has won!"
                }
                else{
                    PlayerName.text = "X has won!"
                }
                
                PlayAgainButton.isHidden = false
                PlayerName.isHidden = false
                
            }
        }
        
        gameIsActive = false
        
        for i in boardRoom{
            if i == 0 {
                gameIsActive = true
                break
            }
            
        }
        
        if gameIsActive == false {
            PlayerName.text = "DRAW"
            PlayAgainButton.isHidden = false
            PlayerName.isHidden = false
        }
        
    }
    @IBOutlet weak var PlayAgainButton: UIButton!
    @IBAction func PlayAgin(_ sender: Any) {
        
        boardRoom = [0,0,0,0,0,0,0,0,0]
        gameIsActive = true
        Player = 1
        PlayAgainButton.isHidden = true
        PlayerName.isHidden = true
        
        for i in 1...9{
            let button = view.viewWithTag(i) as!UIButton
            button.setImage(nil, for: UIControl.State())
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


}

