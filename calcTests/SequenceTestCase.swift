//
//  SequenceTestCase.swift
//  calcTests
//
//  Created by rafael.guimaraes on 05/06/22.
//

import XCTest

class SequenceTestCase: XCTestCase {

    func testExample() throws {
        let odds = stride(from: 1, through: 9, by: 2)
        XCTAssertEqual(Array(odds), [1, 3, 5, 7, 9])
        XCTAssertEqual(1, [1, 3, 5, 7, 9].first)
    }

    func testTuples() {
        XCTAssert( (1, "A") == (1, "A") )
    }

}
