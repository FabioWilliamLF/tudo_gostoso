import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tudo_gostoso/models/recipe.dart';

import '../../../style.dart';

class Details extends StatelessWidget {
  final Recipe _recipeObj;

  Details(this._recipeObj);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 16,
      ),
      color: orangeTheme,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
            child: Text(
              _recipeObj.name,
              style: TextStyle(
                fontSize: 34,
                color: Colors.white,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // 1º coluna
              Column(
                children: [
                  FaIcon(
                    FontAwesomeIcons.solidClock,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    child: Text(
                      "PREPARO",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    "${_recipeObj.preparationTime} MIN",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
              //2º coluna
              Column(
                children: [
                  FaIcon(
                    FontAwesomeIcons.cheese,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    child: Text(
                      "RENDIMENTO",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    "${_recipeObj.income} PORÇÕES",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
              //3º coluna
              Column(
                children: [
                  FaIcon(
                    FontAwesomeIcons.solidHeart,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    child: Text(
                      "FAVORITOS",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    _recipeObj.numberOfFavorites.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
              //4º coluna
              Column(
                children: [
                  FaIcon(
                    FontAwesomeIcons.solidCommentAlt,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    child: Text(
                      "COMENTÁRIOS",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    _recipeObj.numberOfComments.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
