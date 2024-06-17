import 'package:aeta/pages/notFound.dart';
import 'package:aeta/widgets/button.dart';
import 'package:aeta/widgets/header.dart';
import 'package:aeta/widgets/input.dart';
import 'package:aeta/widgets/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.text = "Éric Vinicius Nascimento";
    _emailController.text = "eric@aeta.com.br";
    _phoneController.text = "(18) 99999-9999";
    _passwordController.text = "0123456789";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Utils.backgroundColor,
      child: Column(
        children: [
          HeaderWidget(
            name: "Éric Vinicius",
            role: 'Associado',
            buttonTextList: [
              'Geral',
              'Documentos',
            ],
          ),
          AnimatedBuilder(
            animation: Listenable.merge([HeaderWidget.selectedIndex]),
            builder: (context, child) {
              if (HeaderWidget.selectedIndex.value == 0) {
                return Flexible(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 26),
                      child: Column(
                        children: [
                          _generalBody(),
                          SizedBox(
                            height: 26,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              } else if (HeaderWidget.selectedIndex.value == 1) {
                return NotFoundPage();
              } else {
                return NotFoundPage();
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _generalBody() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 28, horizontal: 42),
      decoration: BoxDecoration(
        color: Utils.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Dados do Perfil',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w800,
                fontSize: 24,
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
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nome',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Utils.dark_primary,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                InputWidget(controller: _nameController,),
                SizedBox(
                  height: 15,
                ),
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
                InputWidget(controller: _emailController,),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Telefone',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Utils.dark_primary,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                InputWidget(controller: _phoneController,),
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
                  controller: _passwordController,
                  obscureText: true,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ButtonWidget(
              function: () {
                print('Teste');
              },
            )
          ],
        ),
      ),
    );
  }
}
