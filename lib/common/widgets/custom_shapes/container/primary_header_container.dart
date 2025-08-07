import 'package:flutter/cupertino.dart';
import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.primary,
        padding: EdgeInsets.all(0),
        child: Stack(
          children: [
            ///background custom shape
            Positioned(
              top: -150,
              right: -250,
              child: TCircularContainer(
                width: 200,
                height: 400,
                radius: 400,
                backgroundColor: TColors.textWhite.withOpacity(.1),
              ),
            ),

            Positioned(
              top: 100,
              right: -300,
              child: TCircularContainer(
                width: 400,
                height: 400,
                radius: 400,
                backgroundColor: TColors.textWhite.withOpacity(.1),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
