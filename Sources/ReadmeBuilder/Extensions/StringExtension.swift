//
//  StringExtension.swift
//  Created by Jose Manuel Ortiz Sanchez on 12/6/24.
//

import Foundation

extension String: MarkdownProtocol {
    
    public func generateMarkdown() -> String {
        self.appending("  \n")
    }
}
