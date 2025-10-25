import 'package:flutter/material.dart';
import 'package:the_warriors_app/src/models/character_model.dart';
import 'package:the_warriors_app/src/widgets/skills_indicator.dart';

class CharacterDetailsScreen extends StatelessWidget {
  final Character character;

  const CharacterDetailsScreen({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Color(0xff2f0000)],
            begin: Alignment(0.8, -1),
            end: Alignment(-0.8, 1),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 20,
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                    const Text(
                      'Stats',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontFamily: 'Roboto Condensed',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin: const EdgeInsets.only(
                              left: 16,
                              right: 16,
                              top: 16,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xff280100),
                              borderRadius: BorderRadius.circular(28),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: const Color(0xff3D0200),
                              borderRadius: BorderRadius.circular(28),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Hero(
                                tag: character.name,
                                child: Image(image: character.avatar),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Text(
                      character.name,
                      style: const TextStyle(
                        color: Color(0xff38040e),
                        fontSize: 80,
                        letterSpacing: 10,
                        fontFamily: 'Mersey Cowboy',
                      ),
                    ),
                    Text(
                      character.name,
                      style: const TextStyle(
                        color: Color(0xffda1e37),
                        fontSize: 75,
                        letterSpacing: 10,
                        fontFamily: 'Mersey Cowboy',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  character.bio,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: 'Roboto Condensed',
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SkillsIndicator(
                      progressValue: character.graffitiSkill,
                      child: Image.asset('assets/icons/spray.png'),
                    ),
                    SkillsIndicator(
                      progressValue: character.uncuffingSkill,
                      child: Image.asset('assets/icons/arrest.png'),
                    ),
                    SkillsIndicator(
                      progressValue: character.lockPickingSkill,
                      child: Image.asset('assets/icons/lock.png'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
