//
//  MarkdownResultBuilder.swift
//  Created by Jose Manuel Ortiz Sanchez on 12/6/24.
//

import Foundation

@resultBuilder
public struct MARKDOWNBuilder {
    
    /// Receives a variable number of parameters and returns them as a single array
    public static func buildBlock(_ components: any MarkdownProtocol...) -> [any MarkdownProtocol] {
        components.compactMap { $0 }
    }
    
    /// Receives a single Markdown expression and returns it within an array
    public static func buildExpression(_ expression: any MarkdownProtocol) -> [any MarkdownProtocol] {
        [expression]
    }
    
    /// This method allows us to implement optionals in our results constructor, for example:
    /// if showHeader { ...
    public static func buildOptional(_ component: [any MarkdownProtocol]?) -> [any MarkdownProtocol] {
        component ?? []
    }
    
    /// These two buildEither functions, with first and seconds component, allow us to replicate
    /// an if - else within our results constructor, for example:
    /// if showHeader { ... } else { ... }
    public static func buildEither(first component: [any MarkdownProtocol]) -> [any MarkdownProtocol] {
        component
    }
    
    /// These two buildEither functions, with first and seconds component, allow us to replicate
    /// an if - else within our results constructor, for example:
    /// if showHeader { ... } else { ... }
    public static func buildEither(second component: [any MarkdownProtocol]) -> [any MarkdownProtocol] {
        component
    }
}
