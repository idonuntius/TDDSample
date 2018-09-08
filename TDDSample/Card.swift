//
//  Card.swift
//  TDDSample
//
//  Created by NatsukiIdota on 2018/09/08.
//  Copyright © 2018年 idonuntius. All rights reserved.
//

import Foundation

struct Card {
    enum Suit {
        case spade
        case heart
        case club
        case diamond
    }

    enum Rank {
        case ace
        case two
        case three
        case four
        case five
        case six
        case seven
        case eight
        case nine
        case ten
        case jack
        case queen
        case king
    }

    let suit: Suit
    let rank: Rank
}
