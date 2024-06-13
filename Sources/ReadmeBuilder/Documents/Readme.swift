//
//  File.swift
//  Example document to create the Readme.md file for this repository.
//  Created by Jose Manuel Ortiz Sanchez on 13/6/24.
//

import Foundation

public struct Readme: DocumentProtocol {
    
    public init() { }
    
    public var body: some MarkdownProtocol {
        Markdown {
            Header("ReadmeBuilder - v0.1")
            Divider()
            Text(firstParagraph)
        }
    }
}

extension Readme {
    
    var firstParagraph: String {
        """
        ReadmeBuilder es un paquete de Swift que permite a los desarrolladores crear archivos Markdown utilizando una sintaxis que se asemeja a SwiftUI. Este proyecto está diseñado para facilitar la creación de dichos tipos de documentos a aquellos programadores que ya están familiarizados con SwiftUI, pero que no necesariamente conocen la sintaxis de Markdown. En construcción...
        """
    }
}
