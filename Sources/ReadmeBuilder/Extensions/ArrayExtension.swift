//
//  ArrayExtension.swift
//  Created by Jose Manuel Ortiz Sanchez on 12/6/24.
//

import Foundation

extension Array: MarkdownProtocol where Element == MarkdownProtocol {
    
    public func generateMarkdown() -> String {
        map { $0.generateMarkdown() }.joined()
    }
}
