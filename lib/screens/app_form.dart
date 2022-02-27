import 'package:flutter/material.dart';

enum Gender { Male, Female }

final cities = [
  'Jakarta',
  'Surabaya',
  'Bandung',
  'Semarang',
  'Bali',
  'Pontianak',
  'Medan',
  'Palembang',
  'Balikpapan',
  'Makassar'
];

class AppForm extends StatefulWidget {
  const AppForm({Key? key}) : super(key: key);

  @override
  _AppFormState createState() => _AppFormState();
}

class _AppFormState extends State<AppForm> {
  final _formKey = GlobalKey<FormState>();
  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = [];
    for (String city in cities) {
      items.add(DropdownMenuItem(child: Text(city), value: city));
    }

    return items;
  }

  @override
  Widget build(BuildContext context) {
    Gender? _character = Gender.Male;
    String? _city = cities[0];

    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Masukkan Nama Lengkap Anda",
                    labelText: "Nama Lengkap",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Nama lengkap harus diisi";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Masukkan Kata Kunci Anda",
                    labelText: "Kata Kunci",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Kata kunci harus diisi";
                  }
                  return null;
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: InputDecorator(
                  decoration: InputDecoration(
                    labelText: "Kota",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  child: DropdownButton(
                    isExpanded: true,
                    value: _city,
                    items: getDropDownMenuItems(),
                    isDense: true,
                    underline: SizedBox.shrink(),
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: InputDecorator(
                  decoration: InputDecoration(
                    labelText: 'Gender',
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  child: Row(
                    children: [
                      Radio<Gender>(
                        value: Gender.Male,
                        groupValue: _character,
                        onChanged: (value) {
                          setState(() {});
                        },
                      ),
                      const Text('Pria'),
                      Radio<Gender>(
                        value: Gender.Female,
                        groupValue: _character,
                        onChanged: (value) {
                          setState(() {});
                        },
                      ),
                      const Text('Wanita'),
                    ],
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'contoh: 0812xxxxxxx',
                  labelText: 'Nomor Telepon',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(value: false, onChanged: (value) {}),
                const Text('Saya menyetujui S&K yang berlaku'),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: const Text('Submit'),
            ),

          ],
        ),
      ),
    );
  }
}
