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

    func testBlockquoteSimple() throws {
        sut = Blockquote { "Esto es una cita en bloque..." }
        let markdownText = "> Esto es una cita en bloque...  \n"
        print(sut.generateMarkdown())
        print(markdownText)
        XCTAssertEqual(sut.generateMarkdown(), markdownText)
    }
    
    func testBlockquoteMultiple() throws {
        sut = Blockquote {
            "Esto es una cita en bloque..."
            "Esto es la segunda línea de la cita"
        }
        let markdownText = """
                            > Esto es una cita en bloque...\u{0020}\u{0020}
                            > Esto es la segunda línea de la cita\u{0020}\u{0020}\n
                            """
        print(sut.generateMarkdown())
        print(markdownText)
        XCTAssertEqual(sut.generateMarkdown(), markdownText)
    }
}
