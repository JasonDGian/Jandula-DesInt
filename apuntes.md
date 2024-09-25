º# :pushpin: DART
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

# Instalar flutter
- Instalar android sdk command line tools.
- Instalar SDK -> entrada path de /x/bin
- where flutter -> indica donde se encuentran los binario.
- Google usb driver.
- 
https://dl.google.com/android/repository/sys-img/google_apis_playstore/x86_64-35_r08.zip

![image](https://github.com/user-attachments/assets/f8b23c11-f0c3-4277-a224-e23aefe5200e)

[X] Android toolchain - develop for Android devices
    X cmdline-tools component is missing
      Run `path/to/sdkmanager --install "cmdline-tools;latest"`
      See https://developer.android.com/studio/command-line for more details.




# 📌 Android studio.
- Pantalla y resolución. -> Configuracióin de pantalla. 1440*3088 6,9"
- Nivel de API -> Elige la versión de Android.
- Seleccionar la gráfica - Configurar el hardware usado para emular la representación grafica.
- Asignar la ram -> Ram que se le asigna al equipo. 
- Asignar almacenamiento -> Almacenamiento que se le asigna al dispositivo.

![image](https://github.com/user-attachments/assets/107cd511-1128-4391-8bcf-e4d5cedf3ac5)

![image](https://github.com/user-attachments/assets/cf341e67-70be-4d91-a51f-b61b6bc8c1fa)

![image](https://github.com/user-attachments/assets/4c9be88f-0216-4e7e-ba84-9aa4a44546e9)


## Generar proyecto flutter.
Generar nueva `Application` de flutter.
- Seleccionamos como directorio el directorio raiz donde colgamos proyectos. 
- A continuación elegimos el nombre del directorio raiz del proyecto.
Ejemplo: Seleccionamos como directorio de proyectos "Mis proyectos" y nombramos el proyecto "Proy1"
   
  A continuación pinchamos en "NO DEVICE"   
  ![image](https://github.com/user-attachments/assets/2a4a1808-7746-4a22-9419-2f8c573a9fe3)
   
O usamos el acceso a paleta. CTRL SHIT P -> Select device.   
![image](https://github.com/user-attachments/assets/ade394af-fe92-4ee6-999b-df81c4f2c800)
   
Ahora seleccionamos el dispositivo para redirigir la salida a ese dispositivo.   
![image](https://github.com/user-attachments/assets/2c21cd50-5d71-485c-8ffd-7196c25761e3)

Una vez seleccionado el dispositivo de salida podemos ejecutar el código y observar los resultados.   
La primera vez que se ejecuta el código puede tardar un poquito.   
![image](https://github.com/user-attachments/assets/9f1b8292-70b1-4bc5-a3dc-611706a5f85a)
   
Tras unos instantes se cargará el código en el dispositivo de salida.    
![image](https://github.com/user-attachments/assets/f2c9c040-a800-4700-aa05-66edbd933b1e)

Panel de estado.   
En este panel podemos forzar el reinicio, la recarga etc...     
![image](https://github.com/user-attachments/assets/0f8f6795-3538-43cd-89af-1cef17cf0c34)     


## Directorios de flutter.       
Directorio `lib`   
En este directorio se estructura de manera ordenada los modelos,clases,objetos etc... Contiene los ficheros principales del proyecto. -> (?)     

Directorio `test`      
Directorio para el test.     

Fichero `analysis_options.yaml`     
Es el fichero de excepciones y reglas del linter de Flutter. -> Al crear un proyecto de esta manera incluye automaticamente un linter llamado "Flutter_lint : version".      

Directorio `.idea`      
Directorio utilizado con IntelliJ      

Fichero `pubspec.lock`     


Fichero `pubspeck.yaml`   
Es el fichero de dependencias y paquetes del proyecto.     
  
Directorios Android, Windows, Ios, MAcos y Web.   
Son los directorios que contienen los ficheros de construcción del proyecto. Todos se basan en la misma raiz u origen del directorio `lib`, pero cada una de ellas especifica comportamientos concretos para el sistema en cuestion. **En teoria** podemos eliminar el directorio windows sin afectar al directorio Linux, por ejemplo.   

## En android.   
Entrar en modo desarrollador.   
Desactivar hibernación al cargar -> "Stay awake".  
-> Buscar como.     



## Crear skeleton file.
Teniendo instalado Flutter Awsome Snippets podemos crear un fichero esqueleto con "mateapp"

##Widgets con estado vs sin estado.
Un widget sin estado es un widget con código que nunca cambia. Un ejemplo es un contenedor de fondo rojo.
Un widge con estado que permite mantener un ciclo de vida. Un ejemplo es un contador de clics.



  
