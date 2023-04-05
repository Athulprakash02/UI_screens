import 'package:flutter/material.dart';

Widget viewGrid({required Widget txt, required Widget addIcon, required bgcolor}) {
  return Container(
    decoration: const BoxDecoration(
        color: Color.fromARGB(19, 170, 167, 158),
        borderRadius: BorderRadius.all(Radius.circular(13))),
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: bgcolor
            ),
            child: addIcon),
          const SizedBox(
            height: 5,
          ),
          txt,
        ],
      ),
    ),
  );
}
