//
//  Image.swift
//
//
//  Created by Jose Manuel Ortiz Sanchez on 24/6/24.
//

import Foundation

public struct ImagePath: MarkdownProtocol {
    
    private var path: String
    private var alt: String
    
    public init(path: String) {
        self.path = path
        self.alt = ""
    }
    
    public func generateMarkdown() -> String {
        "![\(alt)](\(path))  \n"
    }
}

extension ImagePath {
    
    public func textAlt(_ text: String) -> ImagePath {
        var image = self
        image.alt = text
        return image
    }
}
