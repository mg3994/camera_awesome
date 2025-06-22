import 'dart:io';

// import 'package:better_open_file/better_open_file.dart';
import 'package:camera_app/ai_analysis_barcode.dart' as ai_analysis_barcode;
import 'package:camera_app/ai_analysis_faces.dart' as ai_analysis_faces;
import 'package:camera_app/ai_analysis_text.dart' as ai_analysis_text;
import 'package:camera_app/analysis_image_filter_picker.dart' as analysis_image_filter_picker;
import 'package:camera_app/analysis_image_filter.dart' as analysis_image_filter;
import 'package:camera_app/camera_analysis_capabilities.dart' as camera_analysis_capabilities;
import 'package:camera_app/custom_awesome_ui.dart' as custom_awesome_ui;
import 'package:camera_app/custom_theme.dart' as custom_theme;
import 'package:camera_app/custom_ui_example_1.dart' show CustomUiExample1;
import 'package:camera_app/custom_ui_example_2.dart';
import 'package:camera_app/custom_ui_example_3.dart';
import 'package:camera_app/fix_preview.dart' as fix_preview;
import 'package:camera_app/multi_camera.dart' as  multi_camera;
import 'package:camera_app/preview_overlay_example.dart' as preview_overlay_example;

import 'package:camera_app/run_drivable_camera.dart' as  run_drivable_camera;
import 'package:camerawesome/camerawesome_plugin.dart';
import 'package:camerawesome/pigeon.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'subroute_camera.dart' as subroute;
import 'utils/file_utils.dart';

void main() {
  runApp(const MyCameraApp());
}

class MyCameraApp extends StatelessWidget {
  const MyCameraApp({super.key});

  @override
  Widget build(_) {
    return MaterialApp(
      title: 'Camera App Navigation',
      onGenerateRoute: (settings) {
        if (settings.name == '/camera') {
          return MaterialPageRoute(
            builder: (context) => const multi_camera.CameraPage(),
          );
        } else if (settings.name == '/gallery') {
          final multipleCaptureRequest =
              settings.arguments as MultipleCaptureRequest?;
          return MaterialPageRoute(
            builder: (context) => multi_camera.GalleryPage(
              multipleCaptureRequest: multipleCaptureRequest ?? MultipleCaptureRequest({}),
            ),
          );
        } else if (settings.name == '/cameraPage') {
          return MaterialPageRoute(
              builder: (context) => const subroute.CameraPage());
        }
        return null;
      },
      builder: (context, child) =>  Scaffold(
        appBar: AppBar(
          title: const Text('Camera App Navigation'),
        ),
        body: ListView(
          children: [
            ListTile(
              title: const Text('CameraAwesome Main Example'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CameraPageMain()),
                );
              },
            ),
            ListTile(
              title: const Text('AI Analysis Barcode Example'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ai_analysis_barcode.MyHomePage()),
                );
              },
            ),
            ListTile(
              title: const Text('ai_analysis_faces Example'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ai_analysis_faces.CameraPage()),
                );
              },
            ),
            ListTile(
              title: const Text('AI Analysis Text Example'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ai_analysis_text.MyHomePage()),
                );
              },
            ),
            ListTile(
              title: const Text('Analysis Image Filter Picker Example'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const analysis_image_filter_picker.CameraPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Analysis Image Filter Example'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const analysis_image_filter.CameraPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Camera Analysis Capabilities Example'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const camera_analysis_capabilities.CameraPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Custom Awesome UI Example'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const custom_awesome_ui.CameraPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Custom Theme Example'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const custom_theme.CameraPage()),
                );
              },
            ),
            ListTile(
              title: const Text('CustomUiExample1 Example'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CustomUiExample1()),
                );
              },
            ),
            ListTile(
              title: const Text('CustomUiExample2 Example'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CustomUiExample2()),
                );
              },
            ),
            ListTile(
              title: const Text('CustomUiExample3 Example'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CustomUiExample3()),
                );
              },
            ),
            ListTile(
              title: const Text(' Run Drivable Camera Example'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const run_drivable_camera.CameraAwesomeApp()),
                );
              },
            ),
            ListTile(
              title: const Text(' fix_preview Example'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const fix_preview.CameraAwesomeApp()),
                );
              },
            ),
            ListTile(
              title: const Text('Multi Camera Example'),
              onTap: () {
                Navigator.pushNamed(context, '/camera');
              },
            ),
            ListTile(
              title: const Text('Gallery Example'),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/gallery',
                  // arguments: dummyRequest,
                );
              },
            ),
            ListTile(
              title: const Text(' preview overlay  Example'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const preview_overlay_example.CameraPage()),
                );
              },
            ),
            ListTile(
              title: const Text('SubRoute Camera Example'),
              onTap: () {
                Navigator.pushNamed(context, '/cameraPage');
              },
            ),
          ],
        ),
      ),
    );
  }
}














// class CameraAwesomeApp extends StatelessWidget {
//   const CameraAwesomeApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'camerAwesome',
//       home: CameraPage(),
//     );
//   }
// }

class CameraPageMain extends StatelessWidget {
  const CameraPageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: CameraAwesomeBuilder.awesome(
          onMediaCaptureEvent: (event) {
            switch ((event.status, event.isPicture, event.isVideo)) {
              case (MediaCaptureStatus.capturing, true, false):
                debugPrint('Capturing picture...');
              case (MediaCaptureStatus.success, true, false):
                event.captureRequest.when(
                  single: (single) {
                    debugPrint('Picture saved: ${single.file?.path}');
                  },
                  multiple: (multiple) {
                    multiple.fileBySensor.forEach((key, value) {
                      debugPrint('multiple image taken: $key ${value?.path}');
                    });
                  },
                );
              case (MediaCaptureStatus.failure, true, false):
                debugPrint('Failed to capture picture: ${event.exception}');
              case (MediaCaptureStatus.capturing, false, true):
                debugPrint('Capturing video...');
              case (MediaCaptureStatus.success, false, true):
                event.captureRequest.when(
                  single: (single) {
                    debugPrint('Video saved: ${single.file?.path}');
                  },
                  multiple: (multiple) {
                    multiple.fileBySensor.forEach((key, value) {
                      debugPrint('multiple video taken: $key ${value?.path}');
                    });
                  },
                );
              case (MediaCaptureStatus.failure, false, true):
                debugPrint('Failed to capture video: ${event.exception}');
              default:
                debugPrint('Unknown event: $event');
            }
          },
          saveConfig: SaveConfig.photoAndVideo(
            initialCaptureMode: CaptureMode.photo,
            photoPathBuilder: (sensors) async {
              final Directory extDir = await getTemporaryDirectory();
              final testDir = await Directory(
                '${extDir.path}/camerawesome',
              ).create(recursive: true);
              if (sensors.length == 1) {
                final String filePath =
                    '${testDir.path}/${DateTime.now().millisecondsSinceEpoch}.jpg';
                return SingleCaptureRequest(filePath, sensors.first);
              }
              // Separate pictures taken with front and back camera
              return MultipleCaptureRequest(
                {
                  for (final sensor in sensors)
                    sensor:
                        '${testDir.path}/${sensor.position == SensorPosition.front ? 'front_' : "back_"}${DateTime.now().millisecondsSinceEpoch}.jpg',
                },
              );
            },
            videoOptions: VideoOptions(
              enableAudio: true,
              ios: CupertinoVideoOptions(
                fps: 10,
              ),
              android: AndroidVideoOptions(
                bitrate: 6000000,
                fallbackStrategy: QualityFallbackStrategy.lower,
              ),
            ),
            exifPreferences: ExifPreferences(saveGPSLocation: true),
          ),
          sensorConfig: SensorConfig.single(
            sensor: Sensor.position(SensorPosition.back),
            flashMode: FlashMode.auto,
            aspectRatio: CameraAspectRatios.ratio_4_3,
            zoom: 0.0,
          ),
          enablePhysicalButton: true,
          // filter: AwesomeFilter.AddictiveRed,
          previewAlignment: Alignment.center,
          previewFit: CameraPreviewFit.contain,
          onMediaTap: (mediaCapture) {
            mediaCapture.captureRequest.when(
              single: (single) {
                debugPrint('single: ${single.file?.path}');
                single.file?.open();
              },
              multiple: (multiple) {
                multiple.fileBySensor.forEach((key, value) {
                  debugPrint('multiple file taken: $key ${value?.path}');
                  value?.open();
                });
              },
            );
          },
          availableFilters: awesomePresetFiltersList,
        ),
      ),
    );
  }
}
