//
//  StringResultBuilder.swift
//  Created by Jose Manuel Ortiz Sanchez on 18/6/24.
//

import Foundation

@resultBuilder
public struct StringBuilder {
    
    /// Receives a variable number of parameters and returns them as a single array
    public static func buildBlock(_ components: String...) -> [String] {
        components.compactMap { $0 }
    }
}
