//
//  TextTests.swift
//  
//
//  Created by Jose Manuel Ortiz Sanchez on 18/6/24.
//

import XCTest
import ReadmeBuilder

final class TextTests: XCTestCase {

    var sut: Text!

    override func tearDownWithError() throws {
        sut = nil
    }

    func testRegularText() throws {
        sut = Text("Esto es un texto normal")
        let markdownText = "Esto es un texto normal  \n"
        XCTAssertEqual(sut.generateMarkdown(), markdownText)
    }
    
    func testBoldText() throws {
        sut = Text("Esto es un texto en negrita").bold()
        let markdownText = "**Esto es un texto en negrita**  \n"
        XCTAssertEqual(sut.generateMarkdown(), markdownText)
    }
    
    func testItalicText() throws {
        sut = Text("Esto es un texto en cursiva").italic()
        let markdownText = "*Esto es un texto en cursiva*  \n"
        XCTAssertEqual(sut.generateMarkdown(), markdownText)
    }
    
    func testItalicBoldText() throws {
        sut = Text("Esto es un texto en cursiva y negrita").italicbold()
        let markdownText = "***Esto es un texto en cursiva y negrita***  \n"
        XCTAssertEqual(sut.generateMarkdown(), markdownText)
    }
    
    func testBoldUsingFontWeight() throws {
        sut = Text("Esto es un texto en negrita").fontWeight(.bold)
        let markdownText = "**Esto es un texto en negrita**  \n"
        XCTAssertEqual(sut.generateMarkdown(), markdownText)
    }
}
