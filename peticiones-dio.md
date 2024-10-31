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

// Creamos la clase.
class GetValidationDetails {
  // Instanciamos el objeto Dio().
  final _dio = Dio();

  /* ------  Definimos los metodos de uso del Dio ------ */

  // Petición GET
  Future getData() async {
  final response = await _dio.get( /* peticion a la api de turno.*/ )

  // Procesamos o formateamos la respuesta segun necesidad. 

  // Devolvemos la respuesta.
  return response.data;
  }
```

# 📌 Como realizar peticiones.
En dio podemos realizar las distintas peticiones HTTP.

## 🟢 GET


## 🟠 POST

## 🔵 PUT
 
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
