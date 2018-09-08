//
//  TDDSampleTests.swift
//  TDDSampleTests
//
//  Created by NatsukiIdota on 2018/09/08.
//  Copyright © 2018年 idonuntius. All rights reserved.
//

import XCTest
@testable import TDDSample

class TDDSampleTests: XCTestCase {
    func testInitializeCard() {
        let card1 = Card(suit: .heart, rank: .three)
        XCTAssertEqual(card1.suit, .heart)
        XCTAssertEqual(card1.rank, .three)

        let card2 = Card(suit: .spade, rank: .jack)
        XCTAssertEqual(card2.suit, .spade)
        XCTAssertEqual(card2.rank, .jack)
    }
}
