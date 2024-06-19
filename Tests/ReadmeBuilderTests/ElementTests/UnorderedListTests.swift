//
//  UnorderedListTests.swift
//  Created by Jose Manuel Ortiz Sanchez on 19/6/24.
//

import XCTest
import ReadmeBuilder

final class UnorderedListTests: XCTestCase {
    
    var sut: UnorderedList!

    override func tearDownWithError() throws {
        sut = nil
    }

    func testSimpleOrderedList() throws {
        sut = UnorderedList {
            "First item"
            "Second item"
            "Third item"
            "Fourth item"
        }
        let markdownText = """
                            - First item
                            - Second item
                            - Third item
                            - Fourth item
                            
                            """
        print(sut.generateMarkdown())
        XCTAssertEqual(sut.generateMarkdown(), markdownText)
    }
}
