//
//  OrderedListTests.swift
//  Created by Jose Manuel Ortiz Sanchez on 19/6/24.
//

import XCTest
import ReadmeBuilder

final class OrderedListTests: XCTestCase {
    
    var sut: OrderedList!

    override func tearDownWithError() throws {
        sut = nil
    }

    func testSimpleOrderedList() throws {
        sut = OrderedList {
            "First item"
            "Second item"
            "Third item"
            "Fourth item"
        }
        let markdownText = """
                            1. First item
                            1. Second item
                            1. Third item
                            1. Fourth item
                            
                            """
        XCTAssertEqual(sut.generateMarkdown(), markdownText)
    }
}
