import 'package:aeta/widgets/header.dart';
import 'package:aeta/widgets/icons.dart';
import 'package:aeta/widgets/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _pushSwitch = true;
  bool _appSwitch = true;
  bool _authenticationSwitch = false;
  bool _biometrySwitch = true;

  List<String> _languageList = [
    'Português',
    'Inglês',
    'Espanhol',
    'Japonês',
  ];

  String _firstLanguage = 'Português';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderWidget(
          name: "Éric Vinicius",
          role: 'Associado',
          buttonTextList: ['Geral'],
        ),
        Flexible(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 26),
            child: _bodySettings(),
          ),
        )
      ],
    );
  }

  Widget _bodySettings() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Utils.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            _category(CustomIcons.notification, "Notificações"),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _text('Notificações Push'),
                FlutterSwitch(
                  width: 55,
                  height: 25,
                  toggleSize: 15.0,
                  value: _pushSwitch,
                  inactiveColor: Utils.backgroundColor,
                  activeColor: Utils.backgroundColor,
                  inactiveToggleColor: Utils.red,
                  activeToggleColor: Utils.green,
                  onToggle: (val) {
                    setState(() {
                      _pushSwitch = val;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _text('Notificações do App'),
                FlutterSwitch(
                  width: 55,
                  height: 25,
                  toggleSize: 15.0,
                  value: _appSwitch,
                  inactiveColor: Utils.backgroundColor,
                  activeColor: Utils.backgroundColor,
                  inactiveToggleColor: Utils.red,
                  activeToggleColor: Utils.green,
                  onToggle: (val) {
                    setState(() {
                      _appSwitch = val;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            _category(CustomIcons.locked, "Segurança"),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _text('2 Fator de Autenticação'),
                FlutterSwitch(
                  width: 55,
                  height: 25,
                  toggleSize: 15.0,
                  value: _authenticationSwitch,
                  inactiveColor: Utils.backgroundColor,
                  activeColor: Utils.backgroundColor,
                  inactiveToggleColor: Utils.red,
                  activeToggleColor: Utils.green,
                  onToggle: (val) {
                    setState(() {
                      _authenticationSwitch = val;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _text('Biometria para entrar'),
                FlutterSwitch(
                  width: 55,
                  height: 25,
                  toggleSize: 15.0,
                  value: _biometrySwitch,
                  inactiveColor: Utils.backgroundColor,
                  activeColor: Utils.backgroundColor,
                  inactiveToggleColor: Utils.red,
                  activeToggleColor: Utils.green,
                  onToggle: (val) {
                    setState(() {
                      _biometrySwitch = val;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            _category(CustomIcons.others, "Outros"),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _text('Idioma do App'),
                DropdownButton<String>(
                  items: _languageList.map((String dropDownStringItem) {
                    return DropdownMenuItem<String>(
                      value: dropDownStringItem,
                      child: Text(dropDownStringItem),
                    );
                  }).toList(),
                  onChanged: (String? novoItemSelecionado) {
                    setState(() {
                      _firstLanguage = novoItemSelecionado!;
                    });
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Utils.gray100,
                    size: 15,
                  ),
                  value: _firstLanguage,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Utils.gray100,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _text('Encerrar sessão'),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _category(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: Utils.gray100,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Utils.gray100,
          ),
        )
      ],
    );
  }

  Widget _text(String text) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.w400,
        fontSize: 18,
        color: Utils.dark_primary,
      ),
    );
  }
}
