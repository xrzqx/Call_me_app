import 'package:call_me/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisNavbar extends StatelessWidget implements PreferredSizeWidget {
  const RegisNavbar({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      child: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Center(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: kDefaultMargin,
                    ),
                    child: IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      icon: SvgPicture.asset("assets/icons/Arrow_b1.svg"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset("assets/icons/logo_green.svg"),
                ),
              ],
            ),
          ),
        ),
      ),
      preferredSize: Size.fromHeight(size.height * 0.15),
    );
  }

  @override
  // ignore: todo
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(size.height * 0.15);
}
