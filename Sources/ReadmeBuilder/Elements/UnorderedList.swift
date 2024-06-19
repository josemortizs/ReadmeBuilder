//
//  UnorderedList.swift
//  Created by Jose Manuel Ortiz Sanchez on 19/6/24.
//

import Foundation

public struct UnorderedList: MarkdownProtocol {
    
    private var content: [String]
    
    public init(
        @StringBuilder content: () -> [String]
    ) {
        self.content = content()
    }
    
    public func generateMarkdown() -> String {
        content.map { item in
            "- ".appending(item).appending("\n")
        }
        .joined()
    }
}
