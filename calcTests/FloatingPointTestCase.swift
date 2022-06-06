//
//  FloatingPointTestCase.swift
//  calcTests
//
//  Created by rafael.guimaraes on 05/06/22.
//

import XCTest
@testable import calc

class FloatingPointTestCase: XCTestCase {

    func test_isInteger() throws {
        var value = CGFloat(1.0)
        XCTAssertTrue(value.isInteger)
        var valueFalse = CGFloat(1.1)
        XCTAssertFalse(valueFalse.isInteger)
    }

}
