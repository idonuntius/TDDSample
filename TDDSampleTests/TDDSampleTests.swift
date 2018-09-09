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
    func testCardNotation() {
        var card: Card

        card = Card(rank: .three, suit: .heart)
        XCTAssertEqual(card.notation, "3♥")

        card = Card(rank: .jack, suit: .spade)
        XCTAssertEqual(card.notation, "J♠")
    }

    func testHasSameSuit() {
        var card1: Card
        var card2: Card

        card1 = Card(rank: .ace, suit: .heart)
        card2 = Card(rank: .two, suit: .heart)
        XCTAssertTrue(card1.hasSameSuit(card2))

        card1 = Card(rank: .ace, suit: .spade)
        card2 = Card(rank: .two, suit: .heart)
        XCTAssertFalse(card1.hasSameSuit(card2))
    }
}
