part of '../../../main.dart';

Future<void> _mainInitializer() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  //This Prevent closing native splash screen until we finish warming-up custom splash images.
  //App layout will be built but not displayed.
  widgetsBinding.deferFirstFrame();
  widgetsBinding.addPostFrameCallback((_) async {
    //Run any function you want to wait for before showing app layout

    // Closes splash screen, and show the app layout.
    widgetsBinding.allowFirstFrame();
  });
}
