import 'package:aeta/pages/menu.dart';
import 'package:aeta/widgets/appBar.dart';
import 'package:aeta/widgets/button.dart';
import 'package:aeta/widgets/icons.dart';
import 'package:aeta/widgets/input.dart';
import 'package:aeta/widgets/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.backgroundColor,
      appBar: AppBarWidget(),
      body: Column(
        children: [
          Container(
            height: 155,
            decoration: BoxDecoration(
              color: Utils.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            child: Center(
              child: Text(
                'LOGO',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w900,
                    fontSize: 60,
                    color: Utils.dark_primary),
              ),
            ),
          ),
          SizedBox(
            height: 78,
          ),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 46,
            ),
            decoration: BoxDecoration(
              color: Utils.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Text(
                  'Bem vindo',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w900,
                    fontSize: 32,
                    color: Utils.dark_primary,
                  ),
                ),
                Text(
                  'Entre em sua conta para contiuar.',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Utils.gray100,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'E-mail',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Utils.dark_primary,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    InputWidget(
                      controller: _emailController,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Senha',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Utils.dark_primary,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    InputWidget(
                      suffixIcon: CustomIcons.eye,
                      obscureText: true,
                      controller: _passwordController,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                ButtonWidget(
                  text: 'AUTENTICAR-SE',
                  function: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MenuPage(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Esqueceu a senha?',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Utils.dark_primary,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => print('Clicou'),
                      child: Text(
                        ' clique aqui',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Utils.dark_primary,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
