# :pushpin: DART

## :small_blue_gem: Types of variables.
Dart is a semi-typed language, meaning we can use inferred type variables. To declare variables in DART we use the following syntax.

```dart
  // Variable de tipo inferido.
  var myName1;
  
  // Variable tipada.
  String myName3;

  // Constante inicializada en tiempo de ejecución.  
  late final myName2;
    
  // Constante inicializada en tiempo de compilación.
  const myName4="Paco";
```

### :white_small_square: final vs const
The difference between `final` and `const` constant declarations is the execution time. 
`final`is a runtime execution constant declaration while `const` is a compilation time execution constant. This means that values declares with the `final` keyword can be initialized through runtime logic while `const` values must be initialized before compiling the programme itself.



