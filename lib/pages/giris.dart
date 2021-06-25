import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:evdekal/services/auth.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:provider/provider.dart';
import 'emailgiris.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _isLoading = false;

  Future<void> _signInAnonymously() async {
    try {
      setState(() {
        _isLoading = true;
      });
      await Provider.of<Auth>(context, listen: false).signInAnonymously();
    } on FirebaseAuthException catch (e) {
      _showErrorDialog(e.code);
    } catch (e) {
      _showErrorDialog(e.toString());
    }
    setState(() {
      _isLoading = false;
    });
  }

  Future<void> _signInWithGoogle() async {
    try {
      setState(() {
        _isLoading = true;
      });
      await Provider.of<Auth>(context, listen: false).signInWithGoogle();
    } on FirebaseAuthException catch (e) {
      _showErrorDialog(e.code);
    } catch (e) {
      _showErrorDialog(e.toString());
    }
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              Provider.of<Auth>(context, listen: false).signOut();
            },
          )
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(child: Image.asset('assets/images/anasayfa_resmi.jpg')),
              Text('Evdekal', style: TextStyle(fontSize: 25,color: Colors.red)),
              SizedBox(
                height: 30,
              ),
              SignInButtonBuilder(
                  text: 'Misafir olarak Giriş Yap',
                  icon: Icons.login,
                  onPressed: _isLoading ? null : _signInAnonymously,
                  backgroundColor: Colors.redAccent[700],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))
              ),
              SizedBox(
                height: 5,),
              SignInButtonBuilder(
                  text: 'Email ile Giriş Yap',
                  icon: Icons.email,
                  onPressed: _isLoading
                      ? null
                      : () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EmailSignInPage()));
                  },
                  backgroundColor: Colors.orangeAccent[700],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))
              ),
              SizedBox(
                height: 5,),
              SignInButton(
          Buttons.GoogleDark,
          text: "Google ile Giriş Yap",
          onPressed: _isLoading ? null : _signInWithGoogle,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)))),
            ],
          ),
        ),
      ),
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
