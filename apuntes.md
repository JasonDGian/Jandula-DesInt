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

hacer ejemplo de clase con required y sin required, parametros con corchetes.


Constructores con nombre.

### Names constructors.
In dart we can create named constructors for specific calls and behavior a t thte time of creating the object.
Thhese constructors are create with syntax.

Los constructores sobrecargados se sostituyen por los constructores con nombres.

contructor.specificName.(){
constructor instructions.
}



## Atributos privados.
double _side; -> privado
double side; -> publico.

## Herencia y abstractars mixins
Una clase abstracta mixin es un tipo de clase abstracta que se usa como herencia adicional .
Para aplicar una herencia adicional, se usan las palabras clave "extends Clase wih Clase 2"
en este ejemplo clase2 puede ser declarada como una clase "mixin" en lugar de especificar abstract class.
Extender directamente de una clase mixin no se puede, se hace con `with`


## futures
los futures agregan funcionalidad de .then y async.
anotar diferencia entre await y .then
La principal diferencia entre Await  y .then  es que uno se para y espera por la instruccion que indicada, y el otro "la salta" aunque también la espera, siguiendo con la secuencia de instrucciones.

## Flujos, emision y escuchas.
Si no existe un .listen los flujos de dathos no emiten.

## Yield
para los flujos de datos en lugar de la palabra Return se utiliza la palabra `yield` que es el valor que se entrega cada lapso configurado de tiempo como ciclo del flujo.


