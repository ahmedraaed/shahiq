import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shahiq/presentation/main_home/controller/main_homr_controller.dart';
import 'package:shahiq/presentation/main_home/screen/main_home_screen.dart';
import 'package:shahiq/presentation/on_boarding/screen/on_boarding_screen.dart';
import 'package:shahiq/presentation/splash_screen/splash_screen.dart';

import 'package:shahiq/presentation/notification_screen/notification_screen.dart';
import 'package:shahiq/presentation/meditation_screen/meditation_screen.dart';
import 'package:shahiq/presentation/nature_screen/nature_screen.dart';
import 'package:shahiq/presentation/music_one_screen/music_one_screen.dart';
import 'package:shahiq/presentation/playlist_screen/playlist_screen.dart';
import 'package:shahiq/presentation/play_meditation_sessions_one_screen/play_meditation_sessions_one_screen.dart';
import 'package:shahiq/presentation/music_screen/music_screen.dart';
import 'package:shahiq/presentation/play_music_screen/play_music_screen.dart';
import 'package:shahiq/presentation/playlist_nature_screen/playlist_nature_screen.dart';
import 'package:shahiq/presentation/play_meditation_sessions_screen/play_meditation_sessions_screen.dart';
import 'package:shahiq/presentation/downloads_empty_state_screen/downloads_empty_state_screen.dart';
import 'package:shahiq/presentation/favorites_empty_state_screen/favorites_empty_state_screen.dart';
import 'package:shahiq/presentation/search_empty_state_screen/search_empty_state_screen.dart';
import 'package:shahiq/presentation/reminder_empty_state_screen/reminder_empty_state_screen.dart';

class AppRoutes {
  static const String splashScreen = 'splash_screen';

  static const String onboardingScreenOneScreen =
      'onboarding_screen_one_screen';



  static const String mainHome = 'mainHome';

  static const String notificationScreen = 'notification_screen';


  static const String explorePage = 'explore_page';

  static const String meditationScreen = 'meditation_screen';

  static const String natureScreen = 'nature_screen';

  static const String musicOneScreen = 'music_one_screen';

  static const String playlistScreen = 'playlist_screen';

  static const String playMeditationSessionsOneScreen =
      'play_meditation_sessions_one_screen';

  static const String musicScreen = 'music_screen';

  static const String playMusicScreen = 'play_music_screen';

  static const String playlistNatureScreen = 'playlist_nature_screen';

  static const String playMeditationSessionsScreen =
      'play_meditation_sessions_screen';



  static const String downloadsEmptyStateScreen =
      'downloads_empty_state_screen';

  static const String favoritesEmptyStateScreen =
      'favorites_empty_state_screen';

  static const String searchEmptyStateScreen = 'search_empty_state_screen';

  static const String reminderEmptyStateScreen = 'reminder_empty_state_screen';


  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    onboardingScreenOneScreen: (context) => OnBoardingScreen(),
    notificationScreen: (context) => NotificationScreen(),
    mainHome: (context) => ChangeNotifierProvider(create: (context) => MainHomeController(),child: MainHomeScreen()),
    meditationScreen: (context) => MeditationScreen(),
    natureScreen: (context) => NatureScreen(),
    musicOneScreen: (context) => MusicOneScreen(),
    playlistScreen: (context) => PlaylistScreen(),
    playMeditationSessionsOneScreen: (context) =>
        PlayMeditationSessionsOneScreen(),
    musicScreen: (context) => MusicScreen(),
    playMusicScreen: (context) => PlayMusicScreen(),
    playlistNatureScreen: (context) => PlaylistNatureScreen(),
    playMeditationSessionsScreen: (context) => PlayNaturalSessionsScreen(),
    downloadsEmptyStateScreen: (context) => DownloadsEmptyStateScreen(),
    favoritesEmptyStateScreen: (context) => FavoritesEmptyStateScreen(),
    searchEmptyStateScreen: (context) => SearchEmptyStateScreen(),
    reminderEmptyStateScreen: (context) => ReminderEmptyStateScreen(),
  };
}
