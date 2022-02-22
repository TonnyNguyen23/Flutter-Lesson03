import 'package:flutter/material.dart';

class CardNotification extends StatefulWidget {
  var index;
  var title;
  var body;
  var _press;
  CardNotification(this.title, this.body,
      this.index, this._press, {Key? key}) : super(key: key);

  @override
  _CardNotificationState createState() => _CardNotificationState();
}

class _CardNotificationState extends State<CardNotification> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          Text(
            widget.body,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
                color: Colors.teal),
          ),
          IconButton(
              onPressed: () => {
                    print(widget.title),
                    widget._press(widget.index),
                  },
              icon: const Icon(Icons.highlight_remove_outlined, color: Colors.red))
        ],
      ),
    );
  }
}
