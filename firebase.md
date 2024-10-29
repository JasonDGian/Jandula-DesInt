# Login firebase flutter.
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
13. para comprobar que la CLI funciona correctamente hacemos `firebase:list`
14. `dart pub global activate flutterfire_cli` -> activa la posibilidad de usar los comandos flitterfire.
15. tras activar la consola de flutterfire_cli añadir la variable de entorno en el path o no funcionara.a.
16. dentro del proyecto de flutter ejecutamos `flutterfire configure` -> negamos el uso de configuraciones ya existentes.
17. sobreescribimos el fichero json existente con los cambios de la nueva configuracion.
18. 
