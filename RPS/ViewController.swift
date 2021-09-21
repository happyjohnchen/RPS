//
//  ViewController.swift
//  RPS
//
//  Created by 陈沫言 on 2021/9/21.
//

import UIKit

class ViewController: UIViewController {
    var gameStateNow:GameState = .start
    var randomSignNow:Sign = .none
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateGameView()
    }
    @IBOutlet weak var appSign: UILabel!
    @IBOutlet weak var gameState: UILabel!
    
    @IBOutlet weak var playerRock: UIButton!
    @IBOutlet weak var playerPaper: UIButton!
    @IBOutlet weak var playerScissors: UIButton!
    @IBOutlet weak var playAgain: UIButton!
    
    @IBAction func rockButton(_ sender: Any) {
        print("stone")
        if gameStateNow == .start{
            randomSignNow = randomSign()
            gameStateNow = judge(user: .rock, computer: randomSignNow)
            updateGameView()
        }
    }
    @IBAction func paperButton(_ sender: Any) {
        print("paper")
        if gameStateNow == .start{
            randomSignNow = randomSign()
            gameStateNow = judge(user: .paper, computer: randomSignNow)
            updateGameView()
        }
    }
    @IBAction func scissorsButton(_ sender: Any) {
        print("scissors")
        if gameStateNow == .start{
            randomSignNow = randomSign()
            gameStateNow = judge(user: .scissors, computer: randomSignNow)
            updateGameView()
        }
    }
    @IBAction func playAgainButton(_ sender: Any) {
        print("Play Again")
        gameStateNow = .start
        randomSignNow = .none
        updateGameView()
    }
    
    func updateGameView(){
        print("Game View Updated")
        switch randomSignNow {
        case .paper:
            appSign.text = "✋🏻"
        case .rock:
            appSign.text = "👊🏻"
        case .scissors:
            appSign.text = "✌🏻"
        case .none:
            appSign.text = "🕹"
        }
        switch gameStateNow {
        case .start:
            gameState.text = "开始游戏\n请做出你的选择："
        case .win:
            gameState.text = "你赢了！！！"
        case .lose:
            gameState.text = "你输了"
        case .draw:
            gameState.text = "平局！"
        }
    }
    
}

