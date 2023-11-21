import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:marvel/core/components/card/card.dart';
import 'dart:convert';

import 'package:marvel/core/models/movie.dart';

class Timeline extends StatefulWidget {
  const Timeline({super.key});

  @override
  State<Timeline> createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  List<dynamic> movies = [];

  @override
  void initState() {
    super.initState();
    loadMovies();
  }

  void loadMovies() async {
    final String response = await rootBundle.loadString('lib/mock/mock.json');
    final data = await json.decode(response);
    final res = data['mcu'].map((json) => Movie.fromJson(json)).toList();

    setState(() {
      movies = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              ' Linha do tempo'.toUpperCase(),
              style: const TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 16,
                color: Colors.white,
                height: 1.0,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 275, // Ajuste conforme necessário
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: movies.length,
            itemBuilder: (context, index) {
              return CardEdit(
                title: movies[index].title!,
                releaseDate: movies[index].releaseDate!,
                posterPath: movies[index].posterPath!,
              );
            },
          ),
        ),
      ],
    );
  }
}
