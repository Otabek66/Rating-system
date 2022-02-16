import 'package:exprienseone/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:exprienseone/core/components/input_comp.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'SignUp',
          style: TextStyle(color: ColorsConst.kPrimaryColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.8,
          child: Padding(
            padding: PaddingConst.mediumPadding,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: _controller,
                    decoration: InputComp.inputDecoration(
                      hintText: 'Enter username...',
                      labelText: 'Username',
                      suffixIcon: Icon(Icons.edit),
                    ),
                    validator: (text) {
                      if (text!.length < 5) {
                        return " Username 5 ta belgidan kam bo'lmasin";
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputComp.inputDecoration(
                      hintText: 'Enter password...',
                      labelText: 'Password',
                      suffixIcon: Icon(
                        Icons.password,
                      ),
                      
                    ),
                    validator: (text){
                      if(text!.length< 5 ){
                        return "Password 5 ta belgidan kam bo'lmasin";
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
