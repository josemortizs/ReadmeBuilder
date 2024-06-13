//
//  ReadmeTests.swift, 
//  Created by Jose Manuel Ortiz Sanchez on 13/6/24.
//

import XCTest
import ReadmeBuilder

final class ReadmeTests: XCTestCase {
    
    var sut: Readme!
    
    override func tearDownWithError() throws {
        sut = nil
    }
    
    // This is a test test, to verify the output of the generateMarkdown function
    func testQA() throws {
        sut = Readme()
        print(sut.generateMarkdown())
    }
}
