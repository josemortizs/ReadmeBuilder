//
//  Text.swift
//  Created by Jose Manuel Ortiz Sanchez on 13/6/24.
//

import Foundation

struct Text: MarkdownProtocol {
    
    private var fontWeight: FontWeightType
    private var text: String
    
    public init(_ text: String) {
        self.fontWeight = .none
        self.text = text
    }
    
    public func generateMarkdown() -> String {
        "\(fontWeight.rawValue)\(text)\(fontWeight.rawValue)  \n"
    }
}

extension Text {
    
    public func bold() -> Text {
        var text = self
        text.fontWeight = .bold
        return text
    }
    
    public func italic() -> Text {
        var text = self
        text.fontWeight = .italic
        return text
    }
    
    public func italicbold() -> Text {
        var text = self
        text.fontWeight = .italicbold
        return text
    }
    
    public func fontWeight(_ fontWeight: FontWeightType) -> Text {
        var text = self
        text.fontWeight = fontWeight
        return text
    }
}
