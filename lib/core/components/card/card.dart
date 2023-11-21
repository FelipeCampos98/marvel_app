// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';

class CardEdit extends StatefulWidget {
  final posterPath;
  final title;
  final releaseDate;

  const CardEdit({
    super.key,
    this.posterPath,
    this.title,
    this.releaseDate,
  });

  @override
  State<CardEdit> createState() => _CardState();
}

class _CardState extends State<CardEdit> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160, // Ajuste conforme necessÃ¡rio
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: widget.posterPath != ""
                    ? Image.network(
                        widget.posterPath!,
                        fit: BoxFit.cover,
                        loadingBuilder: (BuildContext context, Widget child,
                            ImageChunkEvent? loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Center(
                            child: CircularProgressIndicator(
                              color: Colors.red,
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                      loadingProgress.expectedTotalBytes!
                                  : null,
                            ),
                          );
                        },
                      )
                    : Image.asset(
                        'assets/background.jpeg',
                        fit: BoxFit.cover,
                      ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              widget.title!,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 12,
                color: Colors.white.withOpacity(.9),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              '(${widget.releaseDate!.substring(0, 4)})',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white.withOpacity(.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
