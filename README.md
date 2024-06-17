# ReadmeBuilder - v0.1  

ReadmeBuilder es un paquete de Swift que permite a los desarrolladores crear archivos Markdown utilizando una sintaxis que se asemeja a SwiftUI. Este proyecto está diseñado para facilitar la creación de dichos tipos de documentos a aquellos programadores que ya están familiarizados con SwiftUI, pero que no necesariamente conocen la sintaxis de Markdown. En construcción...  
## Algunos ejemplos de uso...  

### Bloque de código:  

Code {
    """
        var body: some View {
            Text("Hola mundo!")
        }
    """
}
.language(.swift)  
```swift
    var body: some View {
        Text("Hola mundo!")
    }
```

### Citas en bloque:  

Blockquote { "Esto es una cita en bloque..." }  
> Esto es una cita en bloque...  
