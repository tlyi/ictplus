import 'package:flutter/material.dart';
import 'package:ictplus/domain/core/constants.dart' as constants;

class EventCard extends StatelessWidget {
  final Widget? widget;
  final bool isUpcoming;
  final VoidCallback callback;
  final String dates;
  final String label;

  EventCard(
      {required this.isUpcoming,
      required this.callback,
      required this.dates,
      required this.label,
      this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
      color: isUpcoming
          ? const Color.fromRGBO(232, 232, 232, 1)
          : constants.THEME_TRANSLUCENT_GRAY,
      margin: const EdgeInsets.fromLTRB(30, 10, 30, 10),
      shape: RoundedRectangleBorder(
        side: BorderSide(),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: SizedBox(
        height: 100,
        width: 350,
        child: InkWell(
          splashColor: Colors.grey,
          onTap: callback,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    (isUpcoming
                        ? Text(
                            'UPCOMING',
                            style: TextStyle(
                              color: constants.THEME_ORANGE,
                            ),
                          )
                        : Container()),
                    Flexible(
                      child: Text(
                        dates,
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 15,
                            color: isUpcoming ? Colors.black : Colors.grey),
                      ),
                    ),
                    Text(
                      'Lowkey',
                      style: TextStyle(
                          color: isUpcoming
                              ? const Color.fromRGBO(117, 117, 117, 0.6)
                              : Colors.grey,
                          fontFamily: 'Inter'),
                    )
                  ],
                ),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Inter',
                    color: constants.THEME_GREEN,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
