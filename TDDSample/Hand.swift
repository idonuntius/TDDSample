//
//  Hand.swift
//  TDDSample
//
//  Created by NatsukiIdota on 2018/09/09.
//  Copyright © 2018年 idonuntius. All rights reserved.
//

import Foundation

enum Hand {
    case high
    case pair
    case flush

    static func resolve(lhs: Card, rhs: Card) -> Hand {
        if lhs.rank == rhs.rank {
            return .pair
        } else if lhs.suit == rhs.suit {
            return .flush
        } else {
            return .high
        }
    }
}
