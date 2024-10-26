import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.colorOne, this.colorTwo, {super.key});

  final Color colorOne;
  final Color colorTwo;
  var activeDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    activeDiceImage = 'assets/images/dice-4.png';
    print('Changing image...');
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colorOne,
            colorTwo,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage,
              width: 200,
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(
                //   top: 10
                //   ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text('Roll Dice'),
            ),
          ],
        ),
      ),
    );
  }
}
//   class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key, required this.colors}); //have to put required because named arguments are by default set to optional

//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: colors,
//               begin: startAlignment,
//               end: endAlignment,
//             ),
//           ),
//           child: const Center(
//             child: StyledText('Hello Rush!'),
//           ),
//         );
//   }
// }