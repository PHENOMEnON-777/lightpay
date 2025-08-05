import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lightpay/constants/pagenavigation.dart';
import 'package:lightpay/data/model/usermodel/user.dart';
import 'package:lightpay/logic/bloc/authbloc/Auth/Auth_bloc.dart';
import 'package:lightpay/presentation/widgets/expandablecontainer.dart';

enum AuthMode { signup, login }

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _AuthState();
}

class _AuthState extends State<LoginWidget>
    with SingleTickerProviderStateMixin {
  final GlobalKey<FormState> _formKey = GlobalKey();
  bool hide = false;
  late AnimationController _controller;
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

  TextEditingController numberController = TextEditingController();

  AuthMode _authMode = AuthMode.login;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
    numberController.dispose();
    super.dispose();
  }

  void _switchAuthMode() {
    if (_authMode == AuthMode.login) {
      setState(() {
        _authMode = AuthMode.signup;
      });
      _controller.forward();
    } else {
      setState(() {
        _authMode = AuthMode.login;
      });
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if(state is LoginSuccess){
          Navigator.of(context).popAndPushNamed(Pagenavigation.tabscreen);
        }
        if(state is LoginFailure){
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message)),
          );
        }
        if(state is RegistrationSuccess){
          Navigator.of(context).popAndPushNamed(Pagenavigation.tabscreen);
        }else if (state is RegistrationFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message)),
          );
        }
      },
      builder: (context, state) {
        return SizedBox(
          height:
              _authMode == AuthMode.login
                  ? screenHeight * 0.39
                  : screenHeight * 0.69,
          width: screenWidth * 0.75,
          child: Card(
            color: Theme.of(context).secondaryHeaderColor ,
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      const Text('LightPay', style: TextStyle(fontSize: 24,color: Colors.white)),
                       SizedBox(height: screenHeight * 0.01),
                         _authMode == AuthMode.signup ?   Padding(
                           padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                           child: TextFormField(
                            controller: nameController,
                                enabled: _authMode == AuthMode.signup,
                                decoration: InputDecoration(
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100),
                                    borderSide: BorderSide.none,
                                  ),
                                  labelText: 'user name',
                                ),
                                validator:
                                    _authMode == AuthMode.signup
                                        ? (value) {
                                          if (value!.isEmpty ||
                                              value.length > 20) {
                                            return 'invalid user name!';
                                          }
                                          return null;
                                        }
                                        : null,
                              ),
                         ): SizedBox.shrink(), 
                       SizedBox(height: screenHeight * 0.01),
                      SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                          child: TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100),
                                borderSide: BorderSide.none,
                              ),
                              labelText: 'Email',
                            ),
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value!.isEmpty || !value.contains('@')) {
                                return 'Invalid email!';
                              }
                              return null;
                            },
                            onSaved: (value) {},
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                        child: TextFormField(
                        
                          decoration: InputDecoration(
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide.none,
                            ),
                            labelText: 'Password',
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  hide = !hide;
                                });
                              },
                              icon:
                                  hide
                                      ? const Icon(Icons.visibility_off)
                                      : const Icon(Icons.visibility),
                            ),
                          ),
                          obscureText: hide,
                          controller: passwordController,
                          validator: (value) {
                            if (value!.isEmpty || value.length < 8) {
                              return 'At least 8 Characters!';
                            }
                            return null;
                          },
                          onSaved: (value) {},
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ExpandableContainer(
                          
                          backgroundColor: Theme.of(context).secondaryHeaderColor ,
                          controller: _controller,
                          initialState:
                              _authMode == AuthMode.login
                                  ? ExpandableContainerState.shrunk
                                  : ExpandableContainerState.expanded,
                          child: Column(
                            children: [
                              TextFormField(
                                controller: confirmpasswordController,
                                enabled: _authMode == AuthMode.signup,
                                decoration: InputDecoration(
                                  labelText: 'Confirm password',
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100),
                                    borderSide: BorderSide.none,
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        hide = !hide;
                                      });
                                    },
                                    icon:
                                        hide
                                            ? const Icon(Icons.visibility_off)
                                            : const Icon(Icons.visibility),
                                  ),
                                ),
                                obscureText: hide,
                                validator:
                                    _authMode == AuthMode.signup
                                        ? (value) {
                                          if (value != passwordController.text) {
                                            return 'Passwords do not match!';
                                          }
                                          if (value!.isEmpty) {
                                            return 'Passwords do not match!';
                                          }
                                          return null;
                                        }
                                        : null,
                              ),
                             
                              SizedBox(height: screenHeight * 0.01),
                              TextFormField(
                                controller: numberController,
                                enabled: _authMode == AuthMode.signup,
                                decoration: InputDecoration(
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100),
                                    borderSide: BorderSide.none,
                                  ),
                                  labelText: 'phone number',
                                ),
                                validator:
                                    _authMode == AuthMode.signup
                                        ? (value) {
                                          if (value!.isEmpty ||
                                              value.length > 20) {
                                            return 'Invalid number!';
                                          }
                                          return null;
                                        }
                                        : null,
                              ),
                            ],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          // elevation: 9,
                          backgroundColor: WidgetStateProperty.all<Color>(
                            Colors.blue,
                          ), // Background color
                          foregroundColor: WidgetStateProperty.all<Color>(
                            Colors.white,
                          ),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            final user = User(
                              name: nameController.text.trim(),
                              email: emailController.text.trim(),
                              password: passwordController.text.trim(),
                              password_confirmation: confirmpasswordController.text.trim(),
                              phone: numberController.text.trim(),
                            );
                            if(_authMode == AuthMode.login){
                              context.read<AuthBloc>().add(AuthEvent.loginUser(user: user.copyWith(email: emailController.text.trim(),password: passwordController.text.trim())));
                            }else{
                            context.read<AuthBloc>().add(AuthEvent.registerUser(user: user),);
                            }
                          }
                        },
                        child:state is LoadInProgress || state is LoadingLogin ? CircularProgressIndicator(strokeWidth: 2,color: Theme.of(context).colorScheme.secondaryFixed,) : Text(
                          _authMode == AuthMode.login ? 'LOGIN' : 'SIGN UP',
                        ),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor: WidgetStateProperty.all<Color>(
                            Colors.blue,
                          ), // Text color
                        ),
                        onPressed: _switchAuthMode,
                        child: Text(
                          '${_authMode == AuthMode.login ? 'SIGNUP' : 'LOGIN'} INSTEAD',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
