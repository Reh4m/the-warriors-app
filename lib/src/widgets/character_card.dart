import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:the_warriors_app/src/models/character_model.dart';
import 'package:the_warriors_app/src/widgets/skills_indicator.dart';

class CharacterCard extends StatelessWidget {
  final Character character;
  final VoidCallback onTap;

  const CharacterCard({
    super.key,
    required this.character,
    required this.onTap,
  });

  double radians(double deg) => deg * (math.pi / 180);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Transform.translate(
            offset: const Offset(-10, 0),
            child: Transform(
              alignment: FractionalOffset.center,
              transform:
                  Matrix4.identity()
                    ..setEntry(3, 2, 0.01)
                    ..rotateY(radians(1.5)),
              child: Container(
                height: 200,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                decoration: const BoxDecoration(
                  color: Color(0xff280100),
                  borderRadius: BorderRadius.all(Radius.circular(22)),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: const Offset(-44, 0),
            child: Transform(
              alignment: FractionalOffset.center,
              transform:
                  Matrix4.identity()
                    ..setEntry(3, 2, 0.01)
                    ..rotateY(radians(8)),
              child: Container(
                height: 180,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                decoration: const BoxDecoration(
                  color: Color(0xff3D0200),
                  borderRadius: BorderRadius.all(Radius.circular(22)),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Transform.translate(
              offset: const Offset(-30, 0),
              child: Hero(
                tag: character.name,
                child: Image(
                  image: character.avatar,
                  width: 250,
                  height: 250,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: const EdgeInsets.only(right: 70),
              padding: const EdgeInsets.symmetric(vertical: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SkillsIndicator(
                        progressValue: character.lockPickingSkill,
                        child: Image.asset('assets/icons/lock.png'),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SkillsIndicator(
                        progressValue: character.graffitiSkill,
                        child: Image.asset('assets/icons/spray.png'),
                      ),
                      const SizedBox(height: 10),
                      SkillsIndicator(
                        progressValue: character.uncuffingSkill,
                        child: Image.asset('assets/icons/arrest.png'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
