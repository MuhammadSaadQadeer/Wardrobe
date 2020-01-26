import 'package:flutter/material.dart';
import 'package:wardrobe/components/gradientbutton.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SingleChildScrollView(child: RegisterForm()),
    );
  }
}

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _agreedToTOS = true;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            //  crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 100.0),
              TextFormField(
                decoration: const InputDecoration(
                  border: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.teal)),
                  labelText: 'Name',
                ),
                validator: (String value) {
                  if (value.trim().isEmpty) {
                    return 'Name is required';
                  }
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  border: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.teal)),
                  labelText: 'Email',
                ),
                validator: (String value) {
                  if (value.trim().isEmpty) {
                    return 'Email is required';
                  }
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  // filled: true,
                  // fillColor: Colors.teal,
                  border: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xFFACACAC26))),
                  labelText: 'Phone',
                ),
                validator: (String value) {
                  if (value.trim().isEmpty) {
                    return 'Phone is required';
                  }
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.teal)),
                  labelText: 'Password',
                ),
                validator: (String value) {
                  if (value.trim().isEmpty) {
                    return 'Password is required';
                  }
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.teal)),
                  labelText: 'Confirm Password',
                ),
                validator: (String value) {
                  if (value.trim().isEmpty) {
                    return 'Confirm Password is required';
                  }
                },
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(vertical: 10.0),
              //   child: Row(
              //     children: <Widget>[
              //       Checkbox(
              //         value: _agreedToTOS,
              //         onChanged: _setAgreedToTOS,
              //       ),
              //       GestureDetector(
              //         onTap: () => _setAgreedToTOS(!_agreedToTOS),
              //         child: const Text(
              //           'I agree to the Terms of Services and Privacy Policy',
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Row(
              //   children: <Widget>[
              //     const Spacer(),
              //     OutlineButton(
              //       highlightedBorderColor: Colors.black,
              //       onPressed: _submittable() ? _submit : null,
              //       child: const Text('Register'),
              //     ),
              //   ],
              // ),
              const SizedBox(height: 20.0),
              GradientBtn(
                  btnText: "CREATE PROFILE",
                  onPress: _submittable() ? _submit : null)
            ],
          ),
        ));
  }

  bool _submittable() {
    return _agreedToTOS;
  }

  void _submit() {
    _formKey.currentState.validate();
    print('Form submitted');
  }

  void _setAgreedToTOS(bool newValue) {
    setState(() {
      _agreedToTOS = newValue;
    });
  }
}
