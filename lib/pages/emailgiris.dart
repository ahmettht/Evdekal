import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:evdekal/services/auth.dart';
import 'package:provider/provider.dart';

enum FormStatus { signIn, register, reset }

class EmailSignInPage extends StatefulWidget {
  @override
  _EmailSignInPageState createState() => _EmailSignInPageState();
}

class _EmailSignInPageState extends State<EmailSignInPage> {
  FormStatus _formStatus = FormStatus.signIn;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _formStatus == FormStatus.signIn
            ? buildSignInForm()
            : _formStatus == FormStatus.register
            ? buildRegisterForm()
            : buildResetForm(),
      ),
    );
  }

  Widget buildSignInForm() {
    final _signInFormKey = GlobalKey<FormState>();
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    return DecoratedBox(
        decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/letstayhome.png"), fit: BoxFit.cover),),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _signInFormKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Lütfen Giriş Yapınız', style: TextStyle(fontSize: 25,color: Colors.blueGrey)),
              SizedBox(
                height: 145,
              ),
              TextFormField(
                controller: _emailController,
                validator: (value) {
                  if (!EmailValidator.validate(value)) {
                    return 'Lütfen Geçerli bir adres giriniz';
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.grey),
                    labelStyle: TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                    prefixIcon: Icon(Icons.email,color: Colors.grey,),
                    hintText: 'E-mail',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _passwordController,
                validator: (value) {
                  if (value.length < 6) {
                    return 'Şifreniz en az 6 karakter olmalıdır';
                  } else {
                    return null;
                  }
                },
                obscureText: true,
                decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.grey),
                    labelStyle: TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                    prefixIcon: Icon(Icons.lock,color: Colors.grey,),
                    hintText: 'Şifre',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () async {
                  if (_signInFormKey.currentState.validate()) {
                    try {
                      final user = await Provider.of<Auth>(context, listen: false)
                          .signInWithEmailAndPassword(
                          _emailController.text, _passwordController.text);

                      if (!user.emailVerified) {
                        await _showMyDialog();
                        await Provider.of<Auth>(context, listen: false).signOut();
                      }

                      Navigator.pop(context);
                    } on FirebaseAuthException catch (e) {
                      _showErrorDialog(e.code);
                    } catch (e) {
                      _showErrorDialog(e.toString());
                    }
                  }
                },
                child: Text('Giriş'),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white10,
                ),
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        _formStatus = FormStatus.register;
                      });
                    },
                    child: Text('Kayıt Olmak için Tıklayınız')),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white10,
                ),
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        _formStatus = FormStatus.reset;
                      });
                    },
                    child: Text('Şifremi unuttum')),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildResetForm() {
    final _resetFormKey = GlobalKey<FormState>();
    TextEditingController _emailController = TextEditingController();

    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/keepdistance.jpg"), fit: BoxFit.cover),),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _resetFormKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Şifre Yenileme', style: TextStyle(fontSize: 25,color: Colors.white)),
              SizedBox(
                height: 210,
              ),
              TextFormField(
                controller: _emailController,
                validator: (value) {
                  if (!EmailValidator.validate(value)) {
                    return 'Lütfen Geçerli bir adres giriniz';
                  } else {
                    return null;
                  }
                },
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.white),
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                    prefixIcon: Icon(Icons.email,color: Colors.white),
                    hintText: 'E-mail',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () async {
                  if (_resetFormKey.currentState.validate()) {
                    try {
                      await Provider.of<Auth>(context, listen: false)
                          .sendPasswordResetEmail(_emailController.text);

                      await _showResetPasswordDialog();

                      Navigator.pop(context);
                    } on FirebaseAuthException catch (e) {
                      _showErrorDialog(e.code);
                    } catch (e) {
                      _showErrorDialog(e.toString());
                    }
                  }
                },
                child: Text('Gönder'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildRegisterForm() {
    final _registerFormKey = GlobalKey<FormState>();
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    TextEditingController _passwordConfirmController = TextEditingController();

    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/letstayhome.png"), fit: BoxFit.cover),),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
            key: _registerFormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Kayıt Olma Formu', style: TextStyle(fontSize: 25,color: Colors.blueGrey)),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _emailController,
                  validator: (value) {
                    if (!EmailValidator.validate(value)) {
                      return 'Lütfen Geçerli bir adres giriniz';
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email,color: Colors.grey),
                      hintText: 'E-mail',
                      hintStyle: TextStyle(color: Colors.grey),
                      labelStyle: TextStyle(color: Colors.grey),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _passwordController,
                  validator: (value) {
                    if (value.length < 6) {
                      return 'Şifreniz en az 6 karakter olmalıdır';
                    } else {
                      return null;
                    }
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.grey),
                      labelStyle: TextStyle(color: Colors.grey),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                      prefixIcon: Icon(Icons.lock,color: Colors.grey),
                      hintText: 'Şifre',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _passwordConfirmController,
                  validator: (value) {
                    if (value != _passwordController.text) {
                      return 'Şifreler Uyuşmuyor';
                    } else {
                      return null;
                    }
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.grey),
                      labelStyle: TextStyle(color: Colors.grey),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                      prefixIcon: Icon(Icons.lock,color: Colors.grey),
                      hintText: 'Onay',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () async {
                    try {
                      if (_registerFormKey.currentState.validate()) {
                        final user = await Provider.of<Auth>(context,
                            listen: false)
                            .createUserWithEmailAndPassword(
                            _emailController.text, _passwordController.text);
                        if (!user.emailVerified) {
                          await user.sendEmailVerification();
                        }
                        await _showMyDialog();
                        await Provider.of<Auth>(context, listen: false).signOut();

                        setState(() {
                          _formStatus = FormStatus.signIn;
                        });
                      }
                    } on FirebaseAuthException catch (e) {
                      _showErrorDialog(e.code);
                    } catch (e) {
                      _showErrorDialog(e.toString());
                    }
                  },
                  child: Text('Kayıt'),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white10,
                  ),
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          _formStatus = FormStatus.signIn;
                        });
                      },
                      child: Text('Zaten üye misiniz? Tıklayınız')),
                ),
              ],
            )),
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('ONAY GEREKİYOR'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Merhaba, lütfen mailinizi kontrol ediniz,'),
                Text('Onay linkini tıklayıp tekrar giriş yapmalısınız.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('ANLADIM'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _showResetPasswordDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('ŞİFRE YENİLEME'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Merhaba, lütfen mailinizi kontrol ediniz,'),
                Text('Linki tıklayarak şifrenizi yenileyiniz.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('ANLADIM'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _showErrorDialog(String errorText) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('BİR HATA OLUŞTU'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(errorText),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}