//
//  Code.swift
//  Created by Jose Manuel Ortiz Sanchez on 17/6/24.
//

import Foundation

public enum CodeLanguageType: String {
    case json = "json"
    case markdown = "markdown"
    case swift = "swift"
    case void = ""
}

public struct Code: MarkdownProtocol {
    
    private var type: CodeLanguageType
    private var text: String
    
    public init(_ text: String) {
        self.type = .void
        self.text = text
    }
    
    public init(_ text: () -> String) {
        self.type = .void
        self.text = text()
    }
    
    public func generateMarkdown() -> String {
         """
         ```\(type.rawValue)
         \(text)
         ```\n\n
         """
    }
}

extension Code {
    
    public func language(_ language: CodeLanguageType) -> Code {
        var code = self
        code.type = language
        return code
    }
}
