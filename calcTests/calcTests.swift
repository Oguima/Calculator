//
//  calcTests.swift
//  calcTests
//
//  Created by rafael.guimaraes on 05/06/22.
//

import XCTest
@testable import calc

class calcTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    //Para esconder o teste: coloque o _ na frente...
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        let test = "true"
        XCTAssertEqual(test , "true")

        let testBool = true
        XCTAssertEqual(testBool , true)

        //Caso fosse uma lib: Poderia importar, e pegar um valor da lib...

    }

    func test_optionalBool_init_validBits() throws {
        /*
        let boolFromTrueBit = Bool(bit: 1)
        //XCTAssertTrue(boolFromTrueBit) optional Bool
         */

        if let boolFromTrueBit = Bool(bit: 1) {
            XCTAssertTrue(boolFromTrueBit)
        } else {
            XCTFail()
        }

        //XCTUnwrap( Bool(bit: -1) )
        let bollFromFalseBit = try XCTUnwrap( Bool(bit: 0) )
        XCTAssertFalse(bollFromFalseBit)
        //XCTAssertTrue(boolFromTrueBit) optional Bool

        if let boolFromFalseBit = Bool(bit: 0) {
            XCTAssertFalse(boolFromFalseBit)
        }

        /*if Bool(bit: 1) == false {
            XCTFail("bit is false; expected true")
        }*/
    }

    func test_optionalBool_init_invalidBits() {
        XCTAssertNil( Bool(bit: -1) )
        XCTAssertNil( Bool(bit: 2) )
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
