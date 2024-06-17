//
//  BlockquoteTests.swift
//  
//
//  Created by Jose Manuel Ortiz Sanchez on 17/6/24.
//

import XCTest
import ReadmeBuilder

final class BlockquoteTests: XCTestCase {

    var sut: Blockquote!

    override func tearDownWithError() throws {
        sut = nil
    }

    func testHeaderSimpleInit() throws {
        sut = Blockquote { "Esto es una cita en bloque..." }
        let markdownText = "> Esto es una cita en bloque...  "
        XCTAssertEqual(sut.generateMarkdown(), markdownText)
    }
}
