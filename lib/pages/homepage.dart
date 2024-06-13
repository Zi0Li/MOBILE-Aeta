import 'package:aeta/widgets/appBar.dart';
import 'package:aeta/widgets/header.dart';
import 'package:aeta/widgets/icons.dart';
import 'package:aeta/widgets/nextActivity.dart';
import 'package:aeta/widgets/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      backgroundColor: Utils.backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HeaderWidget(
            name: "Éric Vinicius",
            role: 'Associado',
            buttonTextList: [
              'Geral',
              'Declarações',
              'Sair',
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 25,
                  ),
                  decoration: BoxDecoration(
                    color: Utils.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        CustomIcons.bookmark,
                        size: 40,
                        color: Color.fromRGBO(199, 203, 217, 1),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Carterinha',
                            style: GoogleFonts.poppins(
                              color: Utils.dark_primary,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Carterinha',
                            style: GoogleFonts.poppins(
                              color: Utils.gray100,
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Próximas atividades',
                  style: GoogleFonts.poppins(
                    color: Utils.dark_primary,
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                NextActivityCard(
                  month: 'DEZEMBRO',
                  activityType: 'Campanha de Arrecadação',
                  deadline: '12/12/2023',
                  time: '09:00 - 16:00',
                  address: ['Rua Jasmin,', '152 | Sala 2 - AETA'],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
