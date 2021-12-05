//
//  ViewController.swift
//  TTT
//
//  Created by Leena 1418 on 02/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gameBlock1: UIButton!
    @IBOutlet weak var gameBlock2: UIButton!
    @IBOutlet weak var gameBlock3: UIButton!
    @IBOutlet weak var gameBlock4: UIButton!
    @IBOutlet weak var gameBlock5: UIButton!
    @IBOutlet weak var gameBlock6: UIButton!
    @IBOutlet weak var gameBlock7: UIButton!
    @IBOutlet weak var gameBlock8: UIButton!
    @IBOutlet weak var gameBlock9: UIButton!
    @IBOutlet weak var Winner: UILabel!
    var currentPlayer = "yellowPlayer"
    var findWinner = false
    var curentGame = 0
    
    
    
    @IBAction func ResetButton(_ sender: UIButton) {
        Winner.isHidden = true
        self.curentGame = 0
        self.findWinner =  false
        currentPlayer = "yellowPlayer"
        gameBlock1.isEnabled = true
        gameBlock2.isEnabled = true
        gameBlock3.isEnabled = true
        gameBlock4.isEnabled = true
        gameBlock5.isEnabled = true
        gameBlock6.isEnabled = true
        gameBlock7.isEnabled = true
        gameBlock8.isEnabled = true
        gameBlock9.isEnabled = true
   
        gameBlock1.backgroundColor = UIColor(named: "purple-b")
        gameBlock2.backgroundColor = UIColor(named: "purple-b")
        gameBlock3.backgroundColor = UIColor(named: "purple-b")
        gameBlock4.backgroundColor = UIColor(named: "purple-b")
        gameBlock5.backgroundColor = UIColor(named: "purple-b")
        gameBlock6.backgroundColor = UIColor(named: "purple-b")
        gameBlock7.backgroundColor = UIColor(named: "purple-b")
        gameBlock8.backgroundColor = UIColor(named: "purple-b")
        gameBlock9.backgroundColor = UIColor(named: "purple-b")
    }
    
    @IBAction func PlayGame(_ gameBlock: UIButton) {
        self.curentGame = curentGame + 1
        if currentPlayer == "yellowPlayer"{
            gameBlock.backgroundColor = UIColor(named: "yellow")
            gameBlock.isEnabled = false
            currentPlayer = "purplePlayer"
        }else{
            gameBlock.backgroundColor = UIColor(named: "purple")
            gameBlock.isEnabled = false
            currentPlayer = "yellowPlayer"
        }
        checkWinner()
    }
    
    func checkWinner(){
        let colors = [UIColor(named: "purple"),UIColor(named: "yellow")]
        for color in colors {
            if gameBlock1.backgroundColor!.isEqual(color) && gameBlock2.backgroundColor!.isEqual(color) && gameBlock3.backgroundColor!.isEqual(color){
                endGame(color:color!)
            }else if gameBlock4.backgroundColor!.isEqual(color) && gameBlock5.backgroundColor!.isEqual(color) && gameBlock6.backgroundColor!.isEqual(color){
                endGame(color:color!)
            }else if gameBlock7.backgroundColor!.isEqual(color) && gameBlock8.backgroundColor!.isEqual(color) && gameBlock9.backgroundColor!.isEqual(color){
                endGame(color:color!)
            }else if gameBlock1.backgroundColor!.isEqual(color) && gameBlock4.backgroundColor!.isEqual(color) && gameBlock7.backgroundColor!.isEqual(color){
                endGame(color:color!)
            }else if gameBlock2.backgroundColor!.isEqual(color) && gameBlock5.backgroundColor!.isEqual(color) && gameBlock8.backgroundColor!.isEqual(color){
                endGame(color:color!)
            }else if gameBlock3.backgroundColor!.isEqual(color) && gameBlock6.backgroundColor!.isEqual(color) && gameBlock9.backgroundColor!.isEqual(color){
                endGame(color:color!)
            }else if gameBlock1.backgroundColor!.isEqual(color) && gameBlock5.backgroundColor!.isEqual(color) && gameBlock9.backgroundColor!.isEqual(color){
                endGame(color:color!)
            }else if gameBlock3.backgroundColor!.isEqual(color) && gameBlock5.backgroundColor!.isEqual(color) && gameBlock7.backgroundColor!.isEqual(color){
                endGame(color:color!)
            }

        }
       
        if self.findWinner == false && self.curentGame == 9{
            self.Winner.isHidden = false
            self.Winner.text = "No Winner!!"
            self.curentGame = 0
            print("No Winner!!")
        }
    }
    func endGame(color: UIColor){
        self.findWinner = true
        self.Winner.isHidden = false
        if color == UIColor(named: "purple")
        {
            self.Winner.text = "Winner is purple"
        }else{
            self.Winner.text = "Winner is yellow"
        }
            gameBlock1.isEnabled = false
            gameBlock2.isEnabled = false
            gameBlock3.isEnabled = false
            gameBlock4.isEnabled = false
            gameBlock5.isEnabled = false
            gameBlock6.isEnabled = false
            gameBlock7.isEnabled = false
            gameBlock8.isEnabled = false
            gameBlock9.isEnabled = false
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Winner.isHidden = true
    }


}

