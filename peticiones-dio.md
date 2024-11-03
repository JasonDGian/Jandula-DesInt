# 📓 Resumen de funcionamiento de Dio.
1. Agregar la dependencia al Pubspec.
2. Crear clase Dio
3. Definir las peticiones que el dio gestiona.

# 📌 Agregar la dependencia al Pubspec.yaml
Agregamos el paquete dio al pubspec.
```yaml
dependencies:
  dio: ^5.7.0
```

Una vez instalado se importa el paquete en la clase de definición:
```yaml
import 'package:dio/dio.dart';
```

# 📌 Definir la clase Dio.
```dart
// Importamos el paquete dio.
import 'package:dio/dio.dart';

class Pedidor {

  final Dio _dio = Dio( 
    BaseOptions (
      // URL base de las peticiones, ubicacion raiz.
      baseUrl: "https://pablo.esta.fuerte.com",

      // Si la conexión no se puede establecer dentro de este tiempo, se lanzará una excepción.
      connectTimeout: const Duration(seconds: 5),

      // Se utiliza para establecer el tiempo máximo que dio esperará para 
      // recibir una respuesta después de que se haya establecido una conexión.
      receiveTimeout: const Duration(milliseconds: 3000)    
    )
   );

  //Definición de metodos y llamadas de clase dio Pedidor.

}
```

# 📌 Como realizar peticiones.
En dio podemos realizar las distintas peticiones HTTP.   
**Ejemplo:**   
## 🟢 GET
```dart
import 'package:dio/dio.dart';

Future<void> fetchUserData() async {
  Dio dio = Dio();
  try {
    Response response = await dio.get('https://jsonplaceholder.typicode.com/users/1');
    print(response.data.toString());
  } catch (e) {
    print(e.toString());
  }
}
```

## 🟠 POST
```dart
Future<void> createUser() async {
  Dio dio = Dio();
  try {
    Response response = await dio.post(
      'https://jsonplaceholder.typicode.com/users',
      data: {
        'name': 'John Doe',
        'email': 'johndoe@example.com',
      },
    );
    print(response.data);
  } catch (e) {
    print(e.toString());
  }
}
```
## 🔵 PUT
```dart
``` 
## 🔴 DELETE

# 📌 Manejar códigos de respuesta HTTP.
En Dio podemos manejar las respuestas analizando el código de respuesta HTTP.   

Ejemplo de condición con código respuesta.
```dart
if ( response.statusCode == 200 ){
  /* Instrucciones en caso de respuesta OKAY */
}

if ( response.statusCode == 404 ){
  /* Instrucciones en caso de recurso no encontrado. */ 
}
```

<div align="center">
   <strong>Los códigos más comunes</strong><br/>  
   <table border="1">
  <thead>
    <tr>
      <th>Código de Estado</th>
      <th>Descripción</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>200 OK</td>
      <td>La solicitud fue exitosa.</td>
    </tr>
    <tr>
      <td>201 Created</td>
      <td>Un nuevo recurso fue creado.</td>
    </tr>
    <tr>
      <td>204 No Content</td>
      <td>La solicitud fue exitosa, pero no hay contenido que devolver.</td>
    </tr>
    <tr>
      <td>400 Bad Request</td>
      <td>La solicitud no se pudo procesar debido a un error del cliente.</td>
    </tr>
    <tr>
      <td>401 Unauthorized</td>
      <td>Falta autenticación o no es válida.</td>
    </tr>
    <tr>
      <td>404 Not Found</td>
      <td>El recurso solicitado no existe.</td>
    </tr>
    <tr>
      <td>500 Internal Server Error</td>
      <td>Error en el servidor.</td>
    </tr>
  </tbody>
</table>
</div>
