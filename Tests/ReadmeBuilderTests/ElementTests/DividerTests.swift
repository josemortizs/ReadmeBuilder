//
//  DividerTests.swift
//  Created by Jose Manuel Ortiz Sanchez on 18/6/24.
//

import XCTest
import ReadmeBuilder

final class DividerTests: XCTestCase {

    var sut: Divider!

    override func tearDownWithError() throws {
        sut = nil
    }

    func testHeaderSimpleInit() throws {
        sut = Divider()
        let markdownText = "--- \n"
        XCTAssertEqual(sut.generateMarkdown(), markdownText)
    }

}
