//
//  Sign.swift
//  RPS
//
//  Created by 陈沫言 on 2021/9/21.
//

import Foundation

enum Sign{
    case paper, rock, scissors, none
}

func randomSign() -> Sign {
    let sign = Int.random(in: 0...2)
    if sign == 0 {
        return .rock
    }else if sign == 1 {
        return .paper
    }else {
        return .scissors
    }
}
