//
//  OrderedList.swift
//  Created by Jose Manuel Ortiz Sanchez on 18/6/24.
//

import Foundation

public struct OrderedList: MarkdownProtocol {
    
    private var content: [String]
    
    public init(
        @StringBuilder content: () -> [String]
    ) {
        self.content = content()
    }
    
    public func generateMarkdown() -> String {
        content.map { item in
            "1. ".appending(item)
        }
        .joined()
        .appending("  \n")
    }
}
