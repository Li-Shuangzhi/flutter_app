import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LittleIconFont extends StatelessWidget {
  String _title;
  Color _color;
  IconData _icon;
  double _size;
  LittleIconFont(this._title, this._color, this._icon, this._size);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 19.0),
      child: GestureDetector(
        onTap: null,
        child: Column(
          children: [
            Icon(this._icon, color: this._color, size: this._size),
            Text(this._title)
          ],
        ),
      ),
    );
  }
}




