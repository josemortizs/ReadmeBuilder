//
//  DocumentProtocol.swift
//  Created by Jose Manuel Ortiz Sanchez on 13/6/24.
//

import Foundation

public protocol DocumentProtocol: MarkdownProtocol {
    associatedtype GenerableMarkdown: MarkdownProtocol
    var body: GenerableMarkdown { get }
}

extension DocumentProtocol {
    
    public func generateMarkdown() -> String {
        self.body.generateMarkdown()
    }
}
