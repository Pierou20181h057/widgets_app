import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void ShowCustomSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(
        label: 'Ok!',
        onPressed: () {},
      ),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text('¿Estas seguro?'),
        content: Text(
            'Minim sit reprehenderit reprehenderit culpa cillum excepteur incididunt Lorem reprehenderit laborum sit aliquip.'),
        actions: [
          TextButton(onPressed: ()=>context.pop(), child: Text('Cancelar')),
          FilledButton(onPressed: ()=>context.pop(), child: Text('Aceptar')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Diálogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          FilledButton(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  Text(
                      'Exercitation aliqua laboris mollit exercitation ipsum ipsum sunt.')
                ]);
              },
              child: Text('Licencias usadas')),
          FilledButton(onPressed: ()=>openDialog(context), child: Text('Mostrar diálogo'))
        ]),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => ShowCustomSnackBar(context),
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
