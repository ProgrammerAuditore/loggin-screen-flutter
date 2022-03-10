import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Victor App'),
        ),
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1580327332925-a10e6cb11baa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=407&q=80'),
                    fit: BoxFit.fill)),
            child: Container(
              child: Center(
                child: Container(
                    width: 600,
                    height: 360,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 0.8),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // * Texto de inicio de sesion
                        Text(
                          'Inicio de sesión',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        // * Label : Correo
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Correo eléctronico',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ]),
                        ),

                        // * Campo de correo eléctronico
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: TextField(
                            autofocus: true,
                            style:
                                TextStyle(fontSize: 20, color: Colors.black87),
                            decoration: InputDecoration(
                                hintText: 'Correo eléctronico',
                                filled: true,
                                fillColor: Colors.white,
                                prefixIcon: Icon(Icons.email_outlined)),
                          ),
                        ),

                        // * Label : Contraseña
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Contraseña',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text('Olvide mi contraseña'))
                              ]),
                        ),

                        // *** Campo para Contraseña
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: TextField(
                            autofocus: true,
                            style:
                                TextStyle(fontSize: 20, color: Colors.black87),
                            decoration: InputDecoration(
                                hintText: 'Contraseña',
                                filled: true,
                                fillColor: Colors.white,
                                prefixIcon: Icon(Icons.password_outlined)),
                            obscureText: true,
                          ),
                        ),

                        // * Boton : Ingresar
                        Container(
                            height: 50,
                            width: 499,
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: ElevatedButton(
                              child: const Text('Ingresar',
                                  style: TextStyle(fontSize: 20)),
                              onPressed: () {},
                            )),

                        // * Label : Registrarte
                        Row(
                          children: <Widget>[
                            const Text(
                              '¿No tienes cuenta?',
                              style: TextStyle(color: Colors.black45),
                            ),
                            TextButton(
                              child: const Text(
                                'Registrate',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.blue),
                              ),
                              onPressed: () {
                                //signup screen
                              },
                            )
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                      ],
                    )),
              ),
            )),
      ),
    );
  }
}
