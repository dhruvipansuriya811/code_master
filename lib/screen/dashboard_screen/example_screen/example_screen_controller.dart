import 'package:get/get.dart';

class ExampleScreenController extends GetxController {
  double animatedContainerHeight = 50;

  void onTapAnimatedContainer(int index) {
    exampleScreenData[index]['data'] = !(exampleScreenData[index]['data']);
    update(['ExampleScreen Animated Container']);
  }

  List<Map> exampleScreenData = [
    {
      'topic': 'First C Program',
      'data':false,
      'example': [
        'hello world program',
      ],
    },
    {
      'topic': 'How to Print In C',
      'data': false,
      'height':50,
      'example': [
        'print using data type',
      ],
    },
    {
      'topic': 'Operators Program',
      'data': false,
      'height':50,
      'example': [
        'arithmetic',
        'assignment',
        'relational',
        'logical',
        'increment - decrement',
        'ternary',
        'bitwise',
      ],
    },
    {
      'topic': 'Simple If Program',
      'data': false,
      'height':50,
      'example': [
        'number if it is positive',
        'number if it is negative',
        'number if it is odd',
        'number if it is even',
      ],
    },
    {
      'topic': 'If Else Program',
      'data': false,
      'height':50,
      'example': [
        'number is positive of negative',
        'number is even or odd',
        'number is divisible by 5 and 11',
        'year is leapYear or not',
        'character is alphabet or not',
        'alphabet is vowel or consonant',
        'character is uppercase or lowercase',
        'find maximum number between 2 number',
        'find number is same or not',
      ],
    },
    {
      'topic': 'Else If Program',
      'data': false,
      'height':50,
    },
    {
      'topic': 'Nested If Program',
      'data': false,
      'height':50,
    },
    {
      'topic': 'Switch-Cash Program',
      'data': false,
      'height':50,
    },
    {
      'topic': 'Conditional Operator Program',
      'data': false,
      'height':50,
    },
    {
      'topic': 'While Loop Program',
      'data': false,
      'height':50,
    },
    {
      'topic': 'Do While Loop Program',
      'data': false,
      'height':50,
    },
    {
      'topic': 'For Loop Program',
      'data': false,
      'height':50,
    },
    {
      'topic': 'Break And Continue Keyword',
      'data': false,
      'height':50,
    },
    {
      'topic': 'Goto Statement',
      'data': false,
      'height':50,
    },
    {
      'topic': 'Patterns',
      'data': false,
      'height':50,
    },
    {
      'topic': 'Array Programs',
      'data': false,
      'height':50,
    },
    {
      'topic': 'String Program',
      'data': false,
      'height':50,
    },
    {
      'topic': 'String Function Program',
      'data': false,
      'height':50,
    },
    {
      'topic': 'Maths Program',
      'data': false,
      'height':50,
    },
    {
      'topic': 'User Define Function Program',
      'data': false,
      'height':50,
    },
    {
      'topic': 'Recursion Program',
      'data': false,
      'height':50,
    },
    {
      'topic': 'Structure Program',
      'data': false,
      'height':50,
    },
  ];
}
