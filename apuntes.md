# :pushpin: DART
Dart is a compiled language.


## :small_blue_diamond: Types of variables.
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

```dart
List<TYPE> listname = ['string1', 'string2'];
sprites = <String> = [ 'String1','String2' ];
```



## Dynamic variable types.
Dynamic variable types are excelent for managing API request answers. Dynamic can handle null content. One of the main downsides of using Dynamics is the code efficiency.

    dynamic dynamicVariable = "hola";
    dynamicVariable = 1;
    dynamicVariable = () => true;
    dynamicVariable = false;


## Collection-like structures.
lists - final listName = [1,2,3,4,5,];
iterables - final iterableName = (1,2,4,5,6,);
sets - final setName = {1,2,3,4,5,6};

## Optional parameters
Optional parameters are used to mitigate a possible lack of parameter specificacion and turn to a default value in case that happens.
```dart
int functionName( int a , [ int b = 0 ]){
    function body.
}
```



community: 
Dart pub
https://pub.dev/packages/google_sign_in