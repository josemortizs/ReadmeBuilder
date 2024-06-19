//
//  Blockquote.swift
//  Created by Jose Manuel Ortiz Sanchez on 17/6/24.
//

import Foundation

public struct Blockquote: MarkdownProtocol {
    
    private var content: [MarkdownProtocol]

    public init(
        @MARKDOWNBuilder contents: () -> [MarkdownProtocol]
    ) {
        self.content = contents()
    }
    
    public func generateMarkdown() -> String {
        content.map { tag in
            "> "
                .appending(tag.generateMarkdown())
        }
        .joined()
    }
}
