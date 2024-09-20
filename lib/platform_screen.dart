import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class PlatformScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Определяем платформу
    String platform = _getPlatform(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Platform Specific Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Current Platform: $platform'),
            SizedBox(height: 20),
            platform == 'Android' ? AndroidContent() : WebContent(),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Функционал, зависящий от платформы
                _performPlatformSpecificAction(platform);
              },
              child: Text('Perform Platform Specific Action'),
            ),
          ],
        ),
      ),
    );
  }

  String _getPlatform(BuildContext context) {
    if (kIsWeb) {
      return 'Web';
    } else if (Theme.of(context).platform == TargetPlatform.android) {
      return 'Android';
    } else if (Theme.of(context).platform == TargetPlatform.windows) {
      return 'Windows';
    }
    return 'Unknown';
  }

  void _performPlatformSpecificAction(String platform) {
    if (platform == 'Android') {
      // Действие для Android
      print('Performing action for Android');
    } else if (platform == 'Windows') {
      // Действие для Windows
      print('Performing action for Windows');
    } else {
      // Действие для Web или других платформ
      print('Performing action for Web or other platforms');
    }
  }
}

class AndroidContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('This is content for Android.');
  }
}

class WebContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('This is content for Web.');
  }
}
