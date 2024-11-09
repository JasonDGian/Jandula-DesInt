# 📌 Recuperar información acerca del usuario de google.
Para recuperar información acerca del usuario que ha iniciado sesion con firebase seguimos los siguientes pasos.   

# 🔸 En pantalla de autenticación (AuthGate)
1. Asignamos un proveedor.
```dart
final proveedor = context.watch<UserDetailProvider>();

```
    
2. Aprovechando el streambuilder que firebase ya genera, usamos su snapshot para acceder al usuario que devuelve.
![imagen](https://github.com/user-attachments/assets/a1e2a294-e4f8-4cb9-8c62-0856eb8178b1)

**Operamos con los datos del snapshot.**   
Podemos asignarlos a variables para operar en la misma clase.   
- ejemplo: logica `if user null`.
- ejemplo: almacenar en provider.
    
```dart
String? correo = snapshot.data?.email;
String? username = snapshot.data?.displayName;
```
