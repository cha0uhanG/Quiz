import 'package:flutter/material.dart';

class Quiz{
  String question;
  bool answer ;
  Quiz({required this.question,required this.answer});


}

List <Quiz> questionbank =<Quiz>[
  Quiz(question: "Aricle 14 is related to Equality", answer: true),
  Quiz(question: "The Great Wall of China is visible from space.", answer: false),
  Quiz(question: "Tomatoes are vegetable.", answer: false),
  Quiz(question: "The Eiffel Tower was originally intended to be a temporary structure.", answer: false),
  Quiz(question: "Humans only use 10% of their brains.", answer: false),
  Quiz(question: "Mount Everest is the tallest mountain in the world.", answer: true),
  Quiz(question: "The Great Barrier Reef is the largest living structure on Earth.", answer: true),
  Quiz(question: "Elephants can jump", answer: false),
  Quiz(question: "The sun is a planet", answer: false),
  Quiz(question: "The moon has its own light.", answer: false),
  Quiz(question: "India GDP is 3 Trillion", answer: true),
] ;





