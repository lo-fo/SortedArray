//
//  SortedArrayTests.swift
//  SortedArrayTests
//
//  Created by Louis Fournier on 26/09/2018.
//  Copyright © 2018 Louis Fournier. All rights reserved.
//

import XCTest
@testable import SortedArray

class SortedArrayTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testInitializingWithUnsortedArray() { // change test by using a type that isn't comparable ? on use it as if it wasnt comparable
        let unsortedArray: Array<Int> = [1, 2, 4, 1, 2, 10]
        let expected: Array<Int> = unsortedArray.sorted()
        let tested = SortedArray<Int>(of: unsortedArray, comparator: <)
        XCTAssertTrue(tested == expected)
    }

    func testInsertingElement() {
        let unsortedArray: Array<Int> = [1, 2, 4, 1, 2, 10]
        let expected: Array<Int> = (unsortedArray + [5]).sorted()
        var tested = SortedArray<Int>(of: unsortedArray, comparator: <)
        tested.insert(5)
        XCTAssertTrue(tested == expected)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
