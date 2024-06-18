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
            
            Text(firstParagraph)
            
            Header("Algunos ejemplos de uso...")
                .type(.header2)
            
            Header("Bloque de código:")
                .type(.header3)
            
            Text(code1)
            Code {
                """
                    var body: some View {
                        Text("Hola mundo!")
                    }
                """
            }
            .language(.swift)
            
            Header("Citas en bloque:")
                .type(.header3)
            
            Text("Blockquote { \"Esto es una cita en bloque...\" }")
            Blockquote { "Esto es una cita en bloque..." }
            
            Header("Texto plano:")
                .type(.header3)
            
            """
            La extensión de String para que implemente el protocolo MarkdownProtocol permite
            que podamos agregar textos directamente, usando la sintaxis de String multilínea
            estándar en el lenguaje Swift
            """
            
            Code {
                """
                import Foundation

                extension String: MarkdownProtocol {
                    
                    public func generateMarkdown() -> String {
                        self.appending("  \\n")
                    }
                }
                """
            }
            .language(.swift)
            
            
        }
    }
}

extension Readme {
    
    var firstParagraph: String {
        """
        ReadmeBuilder es un paquete de Swift que permite a los desarrolladores crear archivos Markdown utilizando una sintaxis que se asemeja a SwiftUI. Este proyecto está diseñado para facilitar la creación de dichos tipos de documentos a aquellos programadores que ya están familiarizados con SwiftUI, pero que no necesariamente conocen la sintaxis de Markdown. En construcción...
        """
    }
    
    var code1: String {
        """
        Code {
            \"""
                var body: some View {
                    Text("Hola mundo!")
                }
            \"""
        }
        .language(.swift)
        """
    }
}
