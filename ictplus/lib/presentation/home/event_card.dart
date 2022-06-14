import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final Widget? widget;
  final bool isUpcoming;
  final VoidCallback callback;

  EventCard({required this.isUpcoming, required this.callback, this.widget});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isUpcoming
          ? const Color.fromRGBO(232, 232, 232, 1)
          : const Color.fromRGBO(188, 188, 188, 1),
      margin: const EdgeInsets.fromLTRB(30, 20, 30, 20),
      shape: RoundedRectangleBorder(
        side: BorderSide(),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: SizedBox(
        height: 100,
        width: 300,
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
                              color: Colors.orange,
                            ),
                          )
                        : Container()),
                    Flexible(
                      child: Text(
                        '17 July 2022 to 23 July 2022',
                        style: TextStyle(fontFamily: 'Inter', fontSize: 15),
                      ),
                    ),
                    Text(
                      'Lowkey',
                      style: TextStyle(
                          color: Color.fromRGBO(117, 117, 117, 0.6),
                          fontFamily: 'Inter'),
                    )
                  ],
                ),
                Text(
                  'ICT 2',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Inter',
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
