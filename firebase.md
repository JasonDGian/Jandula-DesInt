# 🗒️ Resumen proceso:
1. **Crear proyecto Flutter.**  
2. **Crear proyecto Firebase.**   
   a. Configurar proveedores de login.
3. **Enlazar proyectos mediante comando `flutterfire configure`.**
4. **Crear fichero .firebaserc con ID de proyecto firebase**.
   ```json
   {
       "projects":{
           "default":"proyecto-login-djg"
       }
   }
   ```
   
5. **Añadir dependencias a proyecto flutter** (pubspec.yaml).
   ```yaml
     firebase_auth: ^5.2.0
     firebase_core: ^3.4.0
     firebase_ui_auth: ^1.15.0
     firebase_ui_oauth_google: ^1.3.3
     google_sign_in: ^6.2.1
   ```
6. **Configurar clase `Main` para que use configuraciones según plataforma (recuperadas de fichero `firebase_options.dart`)**
   ```dart
      void main() async {
       WidgetsFlutterBinding.ensureInitialized();
       await Firebase.initializeApp(
         options: DefaultFirebaseOptions.currentPlatform,
       );
      
      
       runApp(const MyApp());
      }
   ```
   
7. **Configurar la clase MyApp para que realize las operaciones de inicialización necesarias**.   
Estas operaciones pueden ser por ejemplo iniciar un provider, pasar un router etc... Tras eso llamar a AuthGate.
    ```dart
      import 'package:flutter/material.dart';
      import 'auth_gate.dart';
      
      class MyApp extends StatelessWidget {
       const MyApp({super.key});
       @override
       Widget build(BuildContext context) {
         return MaterialApp(
           theme: ThemeData(
             primarySwatch: Colors.blue,
           ),
           home: const AuthGate(),
         );
       }
      }
   ```

7. **Crear y configurar clase de autenticación. Ejemplo : clase `AuthGate()`**   
Esta clase es la que contiene realmente la pantalla de inicio.
    ```dart
   import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
   import 'package:firebase_ui_auth/firebase_ui_auth.dart';
   import 'package:flutter/material.dart';
   
   import 'home.dart';
   
   class AuthGate extends StatelessWidget {
    const AuthGate({super.key});
   
    @override
    Widget build(BuildContext context) {
      return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return SignInScreen(
              providers: [
                EmailAuthProvider(),
              ],
              headerBuilder: (context, constraints, shrinkOffset) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.asset('flutterfire_300x.png'),
                  ),
                );
              },
              subtitleBuilder: (context, action) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: action == AuthAction.signIn
                      ? const Text('Welcome to FlutterFire, please sign in!')
                      : const Text('Welcome to Flutterfire, please sign up!'),
                );
              },
              footerBuilder: (context, action) {
                return const Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text(
                    'By signing in, you agree to our terms and conditions.',
                    style: TextStyle(color: Colors.grey),
                  ),
                );
              },
              sideBuilder: (context, shrinkOffset) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.asset('flutterfire_300x.png'),
                  ),
                );
              },
            );
          }
          return const HomeScreen();
        },
      );
    }
   }
   
   
   ```


---

# Login firebase flutter.
1. Creamos un proyecto firebase en Firebase.   
2. Configuramos los proveedores deseados.   
   (De no haberlo hecho ya - Instalar flutterfire_cli con `curl -sL https://firebase.tools | bash`)   
   (Autenticarse en Firebase con `firebase login`)   
4. Configuramos flutterfire en el proyecto flutter.   



Para usar firebase en flutter debemos antes crear un proyectyo firebase con el que enganchar nuestra aplicaion.
Una vez creado el proyecto debemos crear el enlace.  -> Para ello instalamos firebase CLI
tras eso hacemos login en las herramientas de firebase con nuestra cuenta de google. 
Para c

dart pub global activate flutterfire_cli -> 


# 📌 
firebase.google.com/codelabs/firebase-auth-in-flutter-apps
console.firebase.google.com
1. Crear proyecto en firebase. -> Comenzar con un proyecto de firebase.
2. Omita la configuracion de google analitics.
3. IR a Firebase authentication.
4. Meterse en el proyecto y en el panel lateral izquierdo, pinchar en autenticacion (dentro de compilacion).
5. Elegir que tipo de autenticacion permite. -> facebook , google etc... Nos interesa google.
6. Configurar para que introduciendo user pass funcione tambien.
7. -> Agregar proveedor nuevo -> Seleccionar proveedor -> Habilitar.
8. correo electrocnico/ contraseña + gmail.
9. clonamos repositorio paso 3 si queremos ver el ejemplo.  -> Start muestra el estado inicial, complete muestra como quedaria completo.
10. Instalamos firebase CLI -> Necesaria para configuraciones de firebase en nuestro proyecto.
11. nodejs puede ayudar a instalar las herramientas de firebase en windows.
12. a continuacion `firebase login` en consola -> Usuario contraseña de google con el que hemos creado el proyecto..
13. para comprobar que la CLI funciona correctamente hacemos `firebase projects:list`
14. `dart pub global activate flutterfire_cli` -> activa la posibilidad de usar los comandos flitterfire.
15. tras activar la consola de flutterfire_cli añadir la variable de entorno en el path o no funcionara.a.
16. dentro del proyecto de flutter ejecutamos `flutterfire configure` -> negamos el uso de configuraciones ya existentes.
17. sobreescribimos el fichero json existente con los cambios de la nueva configuracion.
18. configuramos para que plataformas queremos configurar el proyecto.
19. `firebase_options.dart` -> contiene las opciones de configuracion  de firebase para ese proecto para las plataformas seleccionadas durante el proceso de configuracion.
20. flutter pub add firebase_core
21. flutter pub add firebase_auth
22. introducir en el main el sistema de deteccion de plataforma en el que es ejecutado.
23. 


# Crear un proyecto en firebase.
![imagen](https://github.com/user-attachments/assets/4633e5b7-eddc-4366-9160-73d2d3466cbd)
# Nombrar el proyecto.
![imagen](https://github.com/user-attachments/assets/0a8cd8b2-7b21-4a14-ad03-f5f6ae562afb)
# Omitir analiticas de google.
![imagen](https://github.com/user-attachments/assets/097a5973-063d-4dfd-ae30-744d633ecc82)
# Esperar a la generación del proyecto.
![imagen](https://github.com/user-attachments/assets/9571d16a-60e1-480c-b382-20ac592049bf)
# Pinchamos en 'Compilation' luego en 'Authentication'.
![imagen](https://github.com/user-attachments/assets/3631bc1c-114a-4e62-a739-e7035b735da5)
# Pinchamos en 'Comenzar'.
![imagen](https://github.com/user-attachments/assets/936008e8-19b1-4e49-a4aa-435065bf19fc)
# Seleccionamos los proveedores de autenticación deseados.
![imagen](https://github.com/user-attachments/assets/70a3f76b-c44a-42cf-aefb-2b5df9fb34fd)
# Primero habilitamos el proveedor de correo nativo.
![imagen](https://github.com/user-attachments/assets/a9069c72-7925-4f32-9759-d0b70e78f489)
### Pantalla de confirmación.
![imagen](https://github.com/user-attachments/assets/3f971c62-8c1b-4a08-8b5a-c22f162e43cf)

# Ahora habilitamos el proveedor de Gmail.
![imagen](https://github.com/user-attachments/assets/8a06b4d5-7161-445d-937b-819e7cab239e)

# Configuramos el nombre visible del proyecto (1) y el correo de asistencia del proyecto (2).
![imagen](https://github.com/user-attachments/assets/2f81bf77-35e9-42db-9d4d-c6ba59aa9428)
   
---   
   
# Instalar Instalar Firebase CLI
Para instalar firebase tools utilizamos el siguiente comando.
```bash
curl -sL https://firebase.tools | bash
```
![imagen](https://github.com/user-attachments/assets/40188776-4104-4868-9ad7-130e48c0a8da)

 # Iniciamos sesión en Firebase Auth.
 Para ello usamos la cuenta de google con la que hemos creado el proyecto.   
 Introducimos en consola el comando:
 ```bash
firebase login
```

![imagen](https://github.com/user-attachments/assets/2912a579-9619-4f31-b588-ed0e85771713)

# Visitamos el enlace generado por consola para la autenticación mediante navegador.
![imagen](https://github.com/user-attachments/assets/68ce8f4d-98a5-4ea1-8952-fd69a592c62b)
# Seleccionamos la cuenta con la que hemos creado el proyecto.
![imagen](https://github.com/user-attachments/assets/942d1ff2-dbf7-414e-bf23-2c4e9bee5837)

# Concedemos los permisos necesarios hasta dar con la notificación de exito.
![imagen](https://github.com/user-attachments/assets/0226811f-ae55-4f00-be22-580ee9c6372a)
# Controlamos en consola para confirmar.
![imagen](https://github.com/user-attachments/assets/131a6ef3-00e4-4fdd-a561-11480a03ff75)
# Para comprobar el correcto funcionamiento listamos los proyectos flutter.
![imagen](https://github.com/user-attachments/assets/628ec750-94c7-4c3b-acf9-c36ec884e277)
# Instalamos flutterfire CLI.
Este comando descarga e instala la herramienta de línea de comandos de FlutterFire, llamada flutterfire_cli, a nivel global en tu sistema. Esto significa que el comando flutterfire estará disponible para que lo uses en cualquier proyecto o directorio sin necesidad de configuraciones adicionales.
![imagen](https://github.com/user-attachments/assets/f5030cb3-f8a2-4e88-b0ac-633e7757585a)

>[!CAUTION]
> Es posible que aparezca un mensaje de error parecido a este, que nos informa que la variable de entorno no está correctamente configurada. De ser asi deberemos configurarla antes de continuar y repetir la operacion.
>   
>![imagen](https://github.com/user-attachments/assets/aa3e762d-c92b-4329-8447-43db0be91cf2)

# SI HA DADO ERROR: Reiniciamos la consola tras insertar la variable de entorno y repetimos el comando de instalación.
![imagen](https://github.com/user-attachments/assets/13ff24ad-f29c-4cf8-8371-d0aea747d7fc)


---

# Configuración de proyecto.
Con la terminal ubicada en la raiz del proyecto a configurar, ejecutamos el siguiente comando:   
```bash
flatterfire configure
```
![imagen](https://github.com/user-attachments/assets/098298c4-419c-4316-9f99-a17eed9191b7)

# Seleccionamos con que proyecto de firebase deseamos enlazar. 
![imagen](https://github.com/user-attachments/assets/d1e320d6-9f67-4091-94f6-0cc71ba495fa)

# Seleccionamos las plataformas que deseamos soportar.
Seleccionamos / deseleccionamos con `barra espaciadora`
![imagen](https://github.com/user-attachments/assets/7af6f29b-4bc9-4563-81f4-a58aac775f95)

# Configuramos el nombre o identificador para esta configuracion.
![imagen](https://github.com/user-attachments/assets/4d28e528-8b21-48a9-97c4-d828d5e62fe2)

![imagen](https://github.com/user-attachments/assets/681f40e2-05d5-4704-877e-4376085db980)


# Posible error que podemos encontrar.
![imagen](https://github.com/user-attachments/assets/7fc67331-f299-46e3-a914-6cc52cb3b7df)

Este error puede darse cuando el token de sesión del login de firebase expira. Para ello podemos re-autenticarnos con `firebase logout` y `firebase login` o con `firebase login --reauth`.
Si haciendo esto no se arregla el problema puede ser debido al nombre asignado al proyecto. El nombre del proyecto debe de respetar ciertas convenciones. 

# Generación correcta de proyecto.
![imagen](https://github.com/user-attachments/assets/7d840cf9-ff0f-4719-bf6f-f053a0d17222)


# Controlar el nombre del proyecto. 
si el proyecto ya ha sido configurado en pasado con firebase es posible que debamos actualizar el ID del proyecto.
Error que obtenemos en este caso.
![image](https://github.com/user-attachments/assets/6216bd8a-7d03-45ec-9251-86a3b2bab32c)

PAra el ide del proyecto debemos ir a firebase, pinchar en descripcion general y seleccionar Configuracion.
![image](https://github.com/user-attachments/assets/f85ecaf8-8f28-40ea-90c1-32ed4d480c8a)


Debemos configurar el  fichero .firebaserc
![image](https://github.com/user-attachments/assets/957811b4-3c38-4a5a-b0ab-e5637ab81a79)

#Operacion de configuracion terminada.
Aqui tenemos el firebase app id para cada plataforma.

### PAra que se usan estas ID ?
Estas claves se pueden exponer al publico sin temores por la seguridad de la aplicacion.

Este proceso de configuracion nos debe haber creado un fichero llamado `firebase_options.dart`.
Este fichero controla la plataforma en la que se ejecuta la aplicacion y retorna su configuracion por defecto en base a la plataforma donde se ejecuta. 

# el Configure NO añadirá automaticamente las dependencias al pubspec.yaml
Por este motivo debemos de añadir las dependencias necesarias en el fichero de dependencias del proyecto.
```yaml
  firebase_auth: ^5.2.0
  firebase_core: ^3.4.0
  firebase_ui_auth: ^1.15.0
  firebase_ui_oauth_google: ^1.3.3
  google_sign_in: ^6.2.1
```
![image](https://github.com/user-attachments/assets/759e44d1-117a-4004-b4b0-6b5aa1e88906)


# Actualizar el main.
Es necesario meter en el main un trozo de codigo que segun la plataforma en la que se ejecute la aplicacion se carguen las configuraciones correctas (desde el fichero de configuracion)
![image](https://github.com/user-attachments/assets/08921f0d-4531-488d-910f-af5ac6452d7e)



![image](https://github.com/user-attachments/assets/2ca1f164-e7fe-48e4-adc4-50b089e72676)


Nota: 
el streambuilder de autenticacion devuelve un usuario, este usuario NO VA DEFINIDO EN NUESTRO PROYECTO, es una dependencia de Firebase. Nosotros solo recibimos un objeto usuario de google QUE CONTIENE LOS DATOS DEL USUARIO, pero no devuelve una string con el UUID directamente.

Nota: 
En el kit de firebase vienen ciertas utilidades como el SignInScreen que podemos usar como chuleta para crear nuestro proprio screen de login.


Nota: 
Es necesario copiar el id de cliente web para incluirlo en la aplicacion web y que esta pueda configurarla en el GoogleProvider como parametro y que este sincronice o que se identifique.
![image](https://github.com/user-attachments/assets/89f2b783-7847-4203-ab9a-4ef97c8d5258)



#TODO : documentar.
En terminal de ide en directorio `flutter create --platforms=windows`


Multiprovider principio aplicacion -> retorna lista -> control current user instance por presencia en lista -> de estar devolver homescreen, de lo contrario error / pop


