import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:verticalvideos/infrastructure/datasources/local_video_datasource_impl.dart';
import 'package:verticalvideos/infrastructure/repositories/video_post_repository_impl.dart';
import 'package:verticalvideos/presentation/providers/discover_provider.dart';
import 'package:verticalvideos/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          // operator in cascade
          create: (_) => DiscoverProviders(
              videoPostRepositoryimpl: VideoPostRepositoryimpl(
                  localVideoDatasourceImpl: LocalVideoDatasourceImpl()))
            ..loadNextPage(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: const DiscoverScreen(),
      ),
    );
  }
}
