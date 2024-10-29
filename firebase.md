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





