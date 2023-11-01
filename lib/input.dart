import 'package:flutter/material.dart';

class imput extends StatefulWidget {
  const imput({super.key});

  @override
  State<imput> createState() => _imputState();
}

class _imputState extends State<imput> {
  GlobalKey<FormState> form = GlobalKey();
  TextEditingController controllertudo = TextEditingController();

  @override
  void initState() {
    controllertudo = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    controllertudo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Digite sua Tarefa'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: form,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  controller: controllertudo,
                  validator: (value) {
                    if ((value ?? '').isEmpty) {
                      return 'Campo Obrigatorio';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: salvartudo,
                  child: Text('Salvar'),
                ),
              ],
            ),
          ),
        ));
  }

  void salvartudo() {
    if (form.currentState?.validate() == true) {
      Navigator.of(context).pop(controllertudo.text);
    }
  }
}
