import 'package:flutter/material.dart';



class MovieDetailPage extends StatefulWidget {
  final int movieId;

  MovieDetailPage(this.movieId);

  @override
  _MovieDetailPageState createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  _initialize() async {
    setState(() {
      true;
    });

    var _controller;
    await _controller.fetchMovieById(widget.movieId);

    setState(() {
      var _controller;
      _controller.loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildMovieDetail(),
    );
  }

  _buildAppBar() {
    var _controller;
    return AppBar(
      title: Text(_controller.movieDetail?.title ?? ''),
    );
  }

  _buildMovieDetail() {
    var _controller;

    if (_controller.loading) {
      return CenteredProgress();
    }

    if (_controller.movieError != null) {
      return CenteredMessage(message: _controller.movieError.message);
    }

    return ListView(
      children: [
        _buildCover(),

      ],
    );
  }

  CenteredProgress() {}

  CenteredMessage({message}) {}

  }



  _buildCover() {
    var _controller;
    return Image.network(
      'https://image.tmdb.org/t/p/w500${_controller.movieDetail.backdropPath}',
    );
  }


