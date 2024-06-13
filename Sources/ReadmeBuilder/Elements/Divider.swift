//
//  Divider.swift
//  Created by Jose Manuel Ortiz Sanchez on 13/6/24.
//

import Foundation

public struct Divider: MarkdownProtocol {
    
    public init() { }
    
    public func generateMarkdown() -> String {
        "--- \n"
    }
}
