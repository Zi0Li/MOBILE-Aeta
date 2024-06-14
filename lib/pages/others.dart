import 'package:aeta/widgets/input.dart';
import 'package:aeta/widgets/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OthersPage extends StatefulWidget {
  const OthersPage({super.key});

  @override
  State<OthersPage> createState() => _OthersPageState();
}

class _OthersPageState extends State<OthersPage> {
  List<String> _list = [
    'Declarações',
    'Calendário',
    'Pendências',
    'Documentações',
  ];

  List<String> _description = [
    'Solicite suas declarações de forma rápida',
    'Seu calendário de atividades',
    'Suas pendências em geral com a AETA',
    'Envie e revise suas documentações',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Utils.backgroundColor,
      child: Column(
        children: [
          _search(),
          Flexible(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Container(
                  child: Wrap(
                    spacing: 20,
                    runSpacing: 35,
                    children: [
                      for (int i = 0; i < _list.length; i++)
                        _card(_list[i], _description[i]),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _card(String text, String description) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.3,
      height: MediaQuery.of(context).size.height / 3.3,
      decoration: BoxDecoration(
        color: Utils.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 3,
            child: Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/img/img.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    text,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    description,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                      color: Utils.gray100,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _search() {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 20, 26, 20),
      height: 183,
      decoration: BoxDecoration(
        color: Utils.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'AETA',
            style: GoogleFonts.poppins(
              color: Utils.dark_primary,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'Outros',
            style: GoogleFonts.poppins(
              color: Utils.dark_primary,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          InputWidget(
            prefixIcon: Icons.search,
            hintText: 'Pesquisar',
          )
        ],
      ),
    );
  }
}
