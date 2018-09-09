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

    func testHasSameRank() {
        var card1: Card
        var card2: Card

        card1 = Card(rank: .two, suit: .spade)
        card2 = Card(rank: .two, suit: .heart)
        XCTAssertTrue(card1.hasSameRank(card2))

        card1 = Card(rank: .ace, suit: .spade)
        card2 = Card(rank: .two, suit: .heart)
        XCTAssertFalse(card1.hasSameRank(card2))
    }

    func testCardEqual() {
        XCTAssertEqual(
            Card(rank: .jack, suit: .club),
            Card(rank: .jack, suit: .club)
        )
        XCTAssertNotEqual(
            Card(rank: .queen, suit: .diamond),
            Card(rank: .jack, suit: .club)
        )
        XCTAssertNotEqual(
            Card(rank: .jack, suit: .diamond),
            Card(rank: .jack, suit: .club)
        )
        XCTAssertNotEqual(
            Card(rank: .queen, suit: .club),
            Card(rank: .jack, suit: .club)
        )
    }

    func testHand() {
        var card1: Card
        var card2: Card
        var hand: Hand

        card1 = Card(rank: .king, suit: .spade)
        card2 = Card(rank: .king, suit: .heart)
        hand = Hand.resolve(lhs: card1, rhs: card2)
        XCTAssertEqual(hand, Hand.pair)

        card1 = Card(rank: .ace, suit: .heart)
        card2 = Card(rank: .king, suit: .heart)
        hand = Hand.resolve(lhs: card1, rhs: card2)
        XCTAssertEqual(hand, Hand.flush)

        card1 = Card(rank: .ace, suit: .spade)
        card2 = Card(rank: .king, suit: .heart)
        hand = Hand.resolve(lhs: card1, rhs: card2)
        XCTAssertEqual(hand, Hand.high)
    }
}
