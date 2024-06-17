//
//  CodeTests.swift
//  Created by Jose Manuel Ortiz Sanchez on 17/6/24.
//

import XCTest
import ReadmeBuilder

final class CodeTests: XCTestCase {
    
    var sut: Code!
    var codeString: String!
    
    override func setUpWithError() throws {
        codeString =  
                """
                var body: some View {
                    Text("Hola mundo!")
                }
                """
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func testCodeSimple() throws {
        sut = Code(codeString)
        let markdownText =
            """
            ```
            var body: some View {
                Text("Hola mundo!")
            }
            ```
            """
        
        XCTAssertEqual(sut.generateMarkdown(), markdownText)
    }
    
    func testCodeWithLanguage() throws {
        sut = Code(codeString)
                .language(.swift)
        let markdownText =
            """
            ```swift
            var body: some View {
                Text("Hola mundo!")
            }
            ```
            """
        
        XCTAssertEqual(sut.generateMarkdown(), markdownText)
    }
}
