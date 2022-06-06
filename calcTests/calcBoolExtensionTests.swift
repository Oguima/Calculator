//
//  calcTests.swift
//  calcBoolExtensionTests
//
//  Created by rafael.guimaraes on 05/06/22.
//

import XCTest
@testable import calc

class calcBoolExtensionTests: XCTestCase {

    func test_optionalBool_init_validBits() throws {
        if let boolFromTrueBit = Bool(bit: 1) {
            XCTAssertTrue(boolFromTrueBit)
        }

        if let boolFromFalseBit = Bool(bit: 0) {
            XCTAssertFalse(boolFromFalseBit)
        }
    }

    func test_optionalBool_init_invalidBits() {
        XCTAssertNil( Bool(bit: -1) )
        XCTAssertNil( Bool(bit: 2) )
    }
}
