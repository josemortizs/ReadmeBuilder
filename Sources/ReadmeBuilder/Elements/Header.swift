//
//  Header.swift
//  Created by Jose Manuel Ortiz Sanchez on 12/6/24.
//

import Foundation

public struct Header: MarkdownProtocol {

    private var type: HeaderType
    private var text: String
    
    public init(_ text: String) {
        self.type = .header1
        self.text = text
    }
    
    public func generateMarkdown() -> String {
        "\(type.rawValue)\(text)  \n"
    }
}

extension Header {
    
    public func type(_ type: HeaderType) -> Header {
        var header = self
        header.type = type
        return header
    }
}
