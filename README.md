# ReadmeBuilder - v0.1  

ReadmeBuilder es un paquete de Swift que permite a los desarrolladores crear archivos Markdown utilizando una sintaxis que se asemeja a SwiftUI. Este proyecto está diseñado para facilitar la creación de dichos tipos de documentos a aquellos programadores que ya están familiarizados con SwiftUI, pero que no necesariamente conocen la sintaxis de Markdown. En construcción...  
## Algunos ejemplos de uso...  

### Bloque de código:  

```swift
Code {
    """
        var body: some View {
            Text("Hola mundo!")
        }
    """
}
.language(.swift)
```

```swift
    var body: some View {
        Text("Hola mundo!")
    }
```

### Citas en bloque:  

```swift
Blockquote { "Esto es una cita en bloque..." }
```

> Esto es una cita en bloque...  
### Texto plano:  

La extensión de String para que implemente el protocolo MarkdownProtocol permite
que podamos agregar textos directamente, usando la sintaxis de String multilínea
estándar en el lenguaje Swift  
```swift
import Foundation

extension String: MarkdownProtocol {
    
    public func generateMarkdown() -> String {
        self.appending("  \n")
    }
}
```

### Listas ordenadas:  

```swift
OrderedList {
    "First item"
    "Second item"
    "Third item"
    "Fourth item"
}
```

1. First item
1. Second item
1. Third item
1. Fourth item
### Listas desordenadas:  

```swift
UnorderedList {
    "First item"
    "Second item"
    "Third item"
    "Fourth item"
}
```

- First item
- Second item
- Third item
- Fourth item
# Images  

```
ImagePath(path: "../Assets/images/tux.png")
    .textAlt("Tux, the Linux mascot")
```

![Tux, the Linux mascot](assets/images/tux.png)  
