import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colorOne, this.colorTwo, {super.key});

  final Color colorOne;
  final Color colorTwo;
  
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
      child: const Center(
        child: DiceRoller(),
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