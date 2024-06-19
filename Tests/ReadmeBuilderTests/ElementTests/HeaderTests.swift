//
//  HeaderTests.swift
//  Created by Jose Manuel Ortiz Sanchez on 12/6/24.
//

import XCTest
import ReadmeBuilder

final class HeaderTests: XCTestCase {
    
    var sut: Header!

    override func tearDownWithError() throws {
        sut = nil
    }

    func testHeaderSimpleInit() throws {
        sut = Header("Esto es una cabecera")
        let markdownText = "# Esto es una cabecera  \n\n"
        XCTAssertEqual(sut.generateMarkdown(), markdownText)
    }
}
