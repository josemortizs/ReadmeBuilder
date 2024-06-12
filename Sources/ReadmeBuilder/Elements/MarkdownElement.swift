//
//  MarkdownElement.swift
//  Created by Jose Manuel Ortiz Sanchez on 12/6/24.
//

import Foundation

public struct Markdown: MARKDOWN {
    
    var content: [MARKDOWN]

    public init(
        @MARKDOWNBuilder contents: () -> [MARKDOWN]
    ) {
        self.content = contents()
    }
    
    public func generateMarkdown() -> String {
        content.generateMarkdown()
    }
}
