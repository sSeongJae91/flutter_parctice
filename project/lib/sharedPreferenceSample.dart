import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceSample extends StatefulWidget {
  const SharedPreferenceSample({super.key});

  @override
  State<SharedPreferenceSample> createState() => _MySharedPreferenceSample();
}

class _MySharedPreferenceSample extends State<SharedPreferenceSample> {

  late SharedPreferences _prefs;
  String _username = "";
  final TextEditingController _usernameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _getUsername();
  }

  _saveUsername() {
    setState(() {
      _username = _usernameController.text;
      _prefs.setString("currentUsername", _username);
    });
  }

  _getUsername() async {
    _prefs = await SharedPreferences.getInstance();
    setState(() {
      _username = _prefs.getString("currentUsername") ?? "";
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test App"),
      ),
      body: Container(
        child: Column(
          children: [
            Text("현재 사용자 이름 : $_username"),
            Container(
              child: TextField(
                controller: _usernameController,
                textAlign: TextAlign.left,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Input your name"
                ),
              ),
            ),
            TextButton(
              onPressed: () => _saveUsername(), 
              child: const Text("저장")
            )
          ],
        ),
      ),
    );
  }
}

//stful 입력 후 tab