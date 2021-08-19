import 'package:flutter/material.dart';

class ListElements extends StatelessWidget {
  final String title;
  final List<String> listOfElements;

  ListElements({
    required this.title,
    required this.listOfElements,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            width: MediaQuery.of(context)
                .size
                .width, //<-- ajusta para 100% da tela
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: buildList(
                listOfElements,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<Widget> buildList(List<String> itens) {
  List<Widget> listOfWidgets = [];
  itens.forEach((element) {
    listOfWidgets.add(
      Text(
        element,
        style: TextStyle(
          fontSize: 10,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  });
  return listOfWidgets;
}
