# :pushpin: Dropdown Button.
Este widget trabaja en sintonia con `DropdownMenuItem`, que se usa para definir los objetos que aparecen en la lista y los valores asociados a ellos.

![imagen](https://github.com/user-attachments/assets/e062cf64-17ca-40f8-af0f-deb532b29763)


**Definicion de los objetos seleccionables**
```dart
// Define una lista de objetos con su valor y su representación dentro del menú. 
List<DropdownMenuItem<String>> entradasMenu = const [
    DropdownMenuItem<String>(value: "0.1", child: Text("0.1")),
    DropdownMenuItem<String>(value: "0.2", child: Text("0.2")),
    DropdownMenuItem<String>(value: "0.3", child: Text("0.3")),
    DropdownMenuItem<String>(value: "0.4", child: Text("0.4")),
    DropdownMenuItem<String>(value: "0.5", child: Text("0.5")),
  ];
```

**Definición del menú a cascada**
```dart
DropdownButton<String>(
      icon: const Icon(Icons.arrow_drop_down_circle),
      value: aulaSeleccionada,
      items: proveedor.entradasNumAula,
      // Funcion que se triggerea
      onChanged: (newValue) {
        // Actualiza el estado
        setState(() {
          // Variable actualizada.
          aulaSeleccionada = newValue!;
        });
      },
    );
```

>[!IMPORTANT]
>Los `DropdownButton` son de tipo generico, es decir, se debe de concretar el tipo de valor que manejarán , esto se hace en la declaración DropdownButton<TIPO>().
>

# 📌 ListView.builder
Este widget, variacion de ListView, se compone de un itemCount  que define cuantos objetos se van a generar, y una funcion que retorna dichos objetos.
Lo tipico es disponer de una coleccion de objetos o valores con los que generar los objetos retornados en la lambda.

**Ejemplo de builder**
```dart
const itemCount = 10;

var listado = ListView.builder(
  itemCount: itemCount,
  itemBuilder: (context, index) {
    return Text(index.toString());
  },
);
```


