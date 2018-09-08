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
        var card: Card

        card = Card(suit: .heart, rank: .three)
        XCTAssertEqual(card.suit, .heart)
        XCTAssertEqual(card.rank, .three)

        card = Card(suit: .spade, rank: .jack)
        XCTAssertEqual(card.suit, .spade)
        XCTAssertEqual(card.rank, .jack)
    }

    func testCardNotation() {
        var card: Card

        card = Card(suit: .heart, rank: .three)
        XCTAssertEqual(card.notation, "3♥")

        card = Card(suit: .spade, rank: .jack)
        XCTAssertEqual(card.notation, "J♠")
    }
}
