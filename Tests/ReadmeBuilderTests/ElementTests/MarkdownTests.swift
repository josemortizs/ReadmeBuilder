//
//  MarkdownTests.swift
//  Created by Jose Manuel Ortiz Sanchez on 12/6/24.
//

import XCTest
import ReadmeBuilder

final class MarkdownTests: XCTestCase {
    
    var sut: Markdown!

    override func tearDownWithError() throws {
        sut = nil
    }

    func testHeaderSimpleInit() throws {
        sut = Markdown {
            Header("Esto es una cabecera h1")
            Header("Esto es una cabecera h2")
                .type(.header2)
        }
        let markdownText = 
        """
        # Esto es una cabecera h1\u{0020}\u{0020}\n
        ## Esto es una cabecera h2\u{0020}\u{0020}\n\n
        """
        XCTAssertEqual(sut.generateMarkdown(), markdownText)
    }
}
