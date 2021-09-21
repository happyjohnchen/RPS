//
//  GameState.swift
//  RPS
//
//  Created by 陈沫言 on 2021/9/21.
//

import Foundation

enum GameState {
    case start, win, lose, draw
}

func judge(user:Sign, computer:Sign) -> GameState {
    if user == .rock{
        switch computer {
        case .paper:
            return .lose
        case .rock:
            return .draw
        case .scissors:
            return .win
        case .none:
            return .draw
        }
    }else if user == .paper {
        switch computer {
        case .paper:
            return .draw
        case .rock:
            return .win
        case .scissors:
            return .lose
        case .none:
            return .draw
        }
    }else {
        switch computer {
        case .paper:
            return .win
        case .rock:
            return .lose
        case .scissors:
            return .draw
        case .none:
            return .draw
        }
    }
}
