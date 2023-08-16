import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'Buttons_screen';
  const ButtonsScreen
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Buttons Screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
        
      },),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
    
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){}, 
              child: const Text('Elevated Button')),
            const ElevatedButton(
              onPressed: null, 
              child: Text('Elevated Button')),
            ElevatedButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.access_alarm_rounded), 
              label: const Text('Elevated Icon'),
              ),
              FilledButton(onPressed: (){}, child: const Text('Filled')),
              FilledButton.icon(onPressed: (){}, icon: const Icon(Icons.access_alarms_rounded),
              label: const Text('Filled icon')),
              OutlinedButton(onPressed: (){}, child: const Text('Outline')),
              OutlinedButton.icon(onPressed: (){}, icon: const Icon(Icons.access_alarms_rounded),
              label: const Text('Outline icon')),
              TextButton(onPressed: (){}, child: const Text('Text')),
              TextButton.icon(onPressed: (){}, icon: const Icon(Icons.access_alarms_rounded),
              label: const Text('Text icon')),
              IconButton(onPressed: (){}, icon: const Icon(Icons.access_alarms_rounded)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.access_alarms_rounded),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(colors.primary),
                iconColor: MaterialStatePropertyAll(Colors.white),
              ),),
          ],
        )
      ),
    );
  }
}