//
//  ImagePathTests.swift
//  
//
//  Created by Jose Manuel Ortiz Sanchez on 24/6/24.
//

import XCTest
import ReadmeBuilder

final class ImagePathTests: XCTestCase {

    var sut: ImagePath!

    override func tearDownWithError() throws {
        sut = nil
    }

    func testImagePathInit() throws {
        sut = ImagePath(path: "/assets/images/tux.png")
            .textAlt("Tux, the Linux mascot")
        let markdownText = """
                            ![Tux, the Linux mascot](/assets/images/tux.png)  \n
                            """
        print(sut.generateMarkdown())
        XCTAssertEqual(sut.generateMarkdown(), markdownText)
    }
}
