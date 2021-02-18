import 'package:flutter/material.dart';
import 'package:chopper/chopper.dart';
import 'package:movies/models/popular.dart';
import 'package:movies/service/movie_service.dart';
import 'package:provider/provider.dart';

class MovieListings extends StatefulWidget {
  @override
  _MovieListingsState createState() => _MovieListingsState();
}

class _MovieListingsState extends State<MovieListings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Listings'),
      ),
      body: _buildBody(context),
    );
  }

// 1
  FutureBuilder<Response<Popular>> _buildBody(BuildContext context) {
    return FutureBuilder<Response<Popular>>(
      // 2
      future: Provider.of<MovieService>(context).getPopularMovies(),
      builder: (context, snapshot) {
        // 3
        if (snapshot.connectionState == ConnectionState.done) {
          // 4
          if (snapshot.hasError) {
            return Center(
              child: Text(
                snapshot.error.toString(),
                textAlign: TextAlign.center,
                textScaleFactor: 1.3,
              ),
            );
          }
          // 5
          final popular = snapshot.data.body;
          // 6
          return _buildMovieList(context, popular);
        } else {
          // 7
          // Show a loading indicator while waiting for the movies
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  ListView _buildMovieList(BuildContext context, Popular popular) {
    // 1
    return ListView.builder(
      // 2
      itemCount: popular.results.length,
      padding: EdgeInsets.all(8),
      itemBuilder: (context, index) {
        // 3
        return Card(
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 150,
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          // 4
                          image: NetworkImage(
                              IMAGE_URL + popular.results[index].posterPath),
                          fit: BoxFit.contain)),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      // 5
                      Text(
                        popular.results[index].title,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        // 6
                        popular.results[index].releaseDate,
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(height: 8),
                      Text(
                        // 6
                        popular.results[index].overview,
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  static const String IMAGE_URL = "https://image.tmdb.org/t/p/w500/";
}
