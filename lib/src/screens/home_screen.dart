import 'package:flutter/material.dart';
import 'package:the_warriors_app/src/models/character_model.dart';
import 'package:the_warriors_app/src/widgets/character_card.dart';
import 'package:the_warriors_app/src/data/characters_info.dart';
import 'package:the_warriors_app/src/screens/character_details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _navigateToDetailsScreen(BuildContext context, Character character) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CharacterDetailsScreen(character: character),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 0, 0, 0), Color(0xff2f0000)],
            begin: Alignment(0.8, -1),
            end: Alignment(-0.8, 1),
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Image.asset(
                  'assets/images/the_warriors_logo.png',
                  width: 100,
                  height: 60,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 20),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder:
                      (context, index) => const SizedBox(height: 20),
                  itemCount: warriors_characters.length,
                  itemBuilder: (context, index) {
                    final character = warriors_characters[index];

                    return CharacterCard(
                      character: character,
                      onTap: () => _navigateToDetailsScreen(context, character),
                    );
                  },
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
