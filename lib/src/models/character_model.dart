import 'package:flutter/material.dart';

class Character {
  final AssetImage avatar;
  final String name;
  final String bio;
  final double lockPickingSkill;
  final double graffitiSkill;
  final double uncuffingSkill;

  const Character({
    required this.avatar,
    required this.name,
    required this.bio,
    required this.lockPickingSkill,
    required this.graffitiSkill,
    required this.uncuffingSkill,
  });
}
