import 'package:flutter/material.dart';
import 'package:the_warriors_app/src/models/character_model.dart';

final List<Character> warriors_characters = [
  const Character(
    avatar: AssetImage('assets/images/cleon.png'),
    name: 'Cleon',
    bio:
        "Cleon's got heavy skills when it comes to mugging and resisting arrest. He's solid at tagging and lock picking but he's real lame with stealing and uncuffing.",
    lockPickingSkill: 80.0,
    graffitiSkill: 70.0,
    uncuffingSkill: 60.0,
  ),
  const Character(
    avatar: AssetImage('assets/images/swan.png'),
    name: 'Swan',
    bio:
        "Swan's got heavy skills when it comes to mugging and resisting arrest but he's real lame with uncuffing, tagging, lock picking and stealing.",
    lockPickingSkill: 70.0,
    graffitiSkill: 60.0,
    uncuffingSkill: 90.0,
  ),
  const Character(
    avatar: AssetImage('assets/images/rembrandt.png'),
    name: 'Rembrandt',
    bio:
        "Rembrandt's got heavy skills when it comes to tagging, uncuffing and lock picking. He's solid at stealing but he's real lame with resisting arrest and mugging.",
    lockPickingSkill: 60.0,
    graffitiSkill: 80.0,
    uncuffingSkill: 70.0,
  ),
  const Character(
    avatar: AssetImage('assets/images/ajax.png'),
    name: 'Ajax',
    bio:
        "Ajax's got heavy skills when it comes to stealing and uncuffing. He's solid at resisting arrest but he's real lame with mugging, tagging and lock picking.",
    lockPickingSkill: 90.0,
    graffitiSkill: 60.0,
    uncuffingSkill: 80.0,
  ),
];
