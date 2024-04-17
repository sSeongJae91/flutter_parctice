import 'package:flutter/material.dart';
import 'package:flutter_secure_keyboard/flutter_secure_keyboard.dart';

class SecureKeyboardSample extends StatefulWidget {
  const SecureKeyboardSample({super.key});

  @override
  State<SecureKeyboardSample> createState() => _SecureKeyboardSampleState();
}

class _SecureKeyboardSampleState extends State<SecureKeyboardSample> {

  final _secureKeyboardController = SecureKeyboardController();
  final _passwordEditor = TextEditingController();
  final _passwordTextFieldFocusNode = FocusNode();
  final _pinCodeEdtor = TextEditingController();
  final _pinCodeTextFieldFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return WithSecureKeyboard(
      controller: _secureKeyboardController, 
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Secure Keyboard Test"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                _buildPasswordTextField(),
                const SizedBox(height: 15.0),
                _buildPinCodeTextField()
              ],
            ),
          ),
        ),
      ));
  }

  Widget _buildPasswordTextField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Password"),
        TextFormField(
          controller: _passwordEditor,
          focusNode: _passwordTextFieldFocusNode,
          enableInteractiveSelection: false,
          obscureText: true,
          onTap: () {
            _secureKeyboardController.show(
              type: SecureKeyboardType.ALPHA_NUMERIC,
              focusNode: _passwordTextFieldFocusNode,
              initText: _passwordEditor.text,
              hintText: "password",
              onCharCodesChanged: (List<int> charCodes) {
                _passwordEditor.text = String.fromCharCodes(charCodes);
              }
              );
          },
        )
      ],
    );
  }

  Widget _buildPinCodeTextField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Pincode"),
        TextFormField(
          controller: _pinCodeEdtor,
          focusNode: _pinCodeTextFieldFocusNode,
          enableInteractiveSelection: false,
          obscureText: true,
          onTap: () {
            _secureKeyboardController.show(
              type: SecureKeyboardType.NUMERIC,
              focusNode: _pinCodeTextFieldFocusNode,
              initText: _pinCodeEdtor.text,
              hintText: "pinCode",
              onDoneKeyPressed: (List<int> charCodes) {
                _pinCodeEdtor.text = String.fromCharCodes(charCodes);
              }
              );
          },
        )
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _secureKeyboardController.dispose();
    _passwordEditor.dispose();
    _pinCodeEdtor.dispose();
  }
}