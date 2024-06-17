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
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(top: 26),
              child: SingleChildScrollView(
                child: AnimatedBuilder(
                  animation: Listenable.merge([HeaderWidget.selectedIndex]),
                  builder: (context, child) {
                    if (HeaderWidget.selectedIndex.value == 0) {
                      return Column(
                        children: [
                          _generalBody(),
                          SizedBox(
                            height: 26,
                          ),
                        ],
                      );
                    } else if (HeaderWidget.selectedIndex.value == 1) {
                      return Container(
                        child: Text('Página não encontrada!'),
                      );
                    } else {
                      return Container(
                        child: Text('Página não encontrada!'),
                      );
                    }
                  },
                ),
              ),
            ),
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
                InputWidget(),
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
                InputWidget(),
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
                InputWidget(),
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
