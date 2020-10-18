import 'package:chat/widgets/Labels.dart';
import 'package:chat/widgets/boton_azul.dart';
import 'package:chat/widgets/custom_input.dart';
import 'package:chat/widgets/logo.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Logo(
                  titulo: 'Registro',
                ),
                _Form(),
                Labels(
                  ruta: 'login',
                  titulo: 'Ya tienes cuenta?',
                  subtitulo: 'Ingrese Ahora!',
                ),
                Text(
                  'Terminos y condiciones de uso',
                  style: TextStyle(fontWeight: FontWeight.w200),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  final nameCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomIpnut(
            icon: Icons.perm_identity,
            placeholder: 'Nombre',
            keyboardType: TextInputType.text,
            textController: nameCtrl,
          ),
          CustomIpnut(
            icon: Icons.mail_outline_outlined,
            placeholder: 'Correo',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          CustomIpnut(
            icon: Icons.lock_outlined,
            placeholder: 'Contraseña',
            textController: passCtrl,
            isPassword: true,
          ),
          BotonAzul(
            text: 'Registrar',
            onPressed: () {
              print(emailCtrl.text);
            },
          )
        ],
      ),
    );
  }
}
