//
//  MarkdownElement.swift
//  Created by Jose Manuel Ortiz Sanchez on 12/6/24.
//

import Foundation

public struct Markdown: MarkdownProtocol {
    
    var content: [MarkdownProtocol]

    public init(
        @MARKDOWNBuilder contents: () -> [MarkdownProtocol]
    ) {
        self.content = contents()
    }
    
    public func generateMarkdown() -> String {
        content.generateMarkdown()
    }
}
