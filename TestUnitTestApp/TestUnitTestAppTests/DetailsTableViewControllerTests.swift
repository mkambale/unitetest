//
//  DetailsTableViewControllerTests.swift
//  DetailsTableViewControllerTests
//
//  Created by Manjunath K on 6/4/19.
//  Copyright © 2019 teksystems. All rights reserved.
//

import XCTest
@testable import TestUnitTestApp

class DetailsTableViewControllerTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testsomeFuncToTestPass() {
        let viewC = DetailsTableViewController()

        let retValue = viewC.someFuncToTest(someVal: true)

        XCTAssert(retValue == false, "testsomeFuncToTestPass")
    }

    func testsomeFuncToTestFail() {
        let viewC = DetailsTableViewController()

        let retValue = viewC.someFuncToTest(someVal: false)

        XCTAssert(retValue == true, "testsomeFuncToTestFail")
    }
}
