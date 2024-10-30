# 📌 Dependencias.
```yaml
go_router: ^14.3.0
```

# 📌 Clase de rutas.
```dart
// Enrutador de trafico de aplicacion.
import 'package:go_router/go_router.dart';

// Clase router llamada por la aplicación para "saber como navegar"
final GoRouter myRouter = GoRouter(

    // Primera ubicación cargada: La raiz de la aplicación.
    initialLocation: '/',
    routes: [
      GoRoute(
          path: '/',
          name: ClaseEjemplo.name // atributo nombre especificado en la clase.
          builder: (context, state) {
            return const ClaseEjemplo();
          },

          // Rutas que cuelgan de '/'
          routes: [
            // Pantalla que invocada al hacer login con parametro por path.
            GoRoute(
              path: '/home_screen/:username',
              name: const HomeScreen().name,
              builder: (context, state) {
                return HomeScreen(
                  username: state.pathParameters['username'],
                );
              },
            ),
          ]),
    ]);
```

# 📌 Navegación.
La navegación en GoRouter funciona como una pila de ubicaciones que se amontonan en un historial.   

## 🔸 Por nombre.
```dart
// Registra en el historial de GoRouter.
context.pushNamed(ClaseEjemplo().name)

// Redirige a un historial nuevo con esta ubicacion como primera entrada.
context.goNamed(ClaseEjemplo().name)

```

## 🔸 Por ubicacion.
```dart
// Registra en el historial de GoRouter.
context.push(/clase-ejemplo)

// Redirige a un historial nuevo con esta ubicacion como primera entrada.
context.go(/clase-ejemplo)
```

## 🔸 Retroceso en pila.
```dart
context.pop()
```
