import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project/alignSample.dart';
import 'package:project/FlexibleSample.dart';
import 'package:project/alertSample.dart';
import 'package:project/bottomNavSample.dart';
import 'package:project/buttonSample.dart';
import 'package:project/carousel_slider_sample.dart';
import 'package:project/form/form_example.dart';
import 'package:project/gesture.dart';
import 'package:project/gradientSample.dart';
import 'package:project/gridViewSample.dart';
import 'package:project/grieViewBuilderSample.dart';
import 'package:project/helloworld.dart';
import 'package:project/imageSample.dart';
import 'package:project/inapp_web_view_sample.dart';
import 'package:project/jsonSample.dart';
import 'package:project/list.dart';
import 'package:project/listJson.dart';
import 'package:project/matarial_sample.dart';
import 'package:project/mvvm_design_pattern/mvvm_sample.dart';
import 'package:project/navigatorSample.dart';
import 'package:project/notification/notification_sample.dart';
import 'package:project/pagination_sample.dart';
import 'package:project/photo_view/photo_view_sample.dart';
import 'package:project/refreshSample.dart';
import 'package:project/rowColumn.dart';
import 'package:project/scroll.dart';
import 'package:project/secure_keyboard_sample.dart';
import 'package:project/sharedPreferenceSample.dart';
import 'package:project/stackTest.dart';
import 'package:project/state/bloc_pattern/view/album_view.dart';
import 'package:project/state/get_id_pattern/getItSample.dart';
import 'package:project/state/get_id_pattern/locator/locator.dart';
import 'package:project/state/get_x_pattern/get_x_sample.dart';
import 'package:project/state/get_x_pattern/reactive/get_x_reactive_sample.dart';
import 'package:project/state/provider_pattern/ProviderSample.dart';
import 'package:project/state/riverpod_pattern/riverpod_sample.dart';
import 'package:project/web_view_sample.dart';
import 'package:project/youtubeSample.dart';

void main() {
  //Get it 예제
  initLocator();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Test Title"),
        ),
        body: Center(
          child: Wrap(
            direction: Axis.horizontal,
            children: [
              ElevatedButton(
                child: const Text('Hello World'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HelloWorld()));
                },
              ),
              ElevatedButton(
                child: const Text('Row, Column'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RowColumn()));
                },
              ),
              ElevatedButton(
                child: const Text('Stack'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StackTest()));
                },
              ),
              ElevatedButton(
                child: const Text('Gesture Detect'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Gesture()));
                },
              ),
              ElevatedButton(
                child: const Text('ListView'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const List()));
                },
              ),
              ElevatedButton(
                child: const Text('ListViewBuilder'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ListJson()));
                },
              ),
              ElevatedButton(
                child: const Text('GridView'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const GridViewSample()));
                },
              ),
              ElevatedButton(
                child: const Text('GridViewBuilder'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const GridViewBuilderSample()));
                },
              ),
              ElevatedButton(
                child: const Text('Scroll'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Scroll()));
                },
              ),
              ElevatedButton(
                child: const Text('Align'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const AlignSample()));
                },
              ),
              ElevatedButton(
                child: const Text('Alert'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const AlertSample()));
                },
              ),
              ElevatedButton(
                child: const Text('Image'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ImageSample()));
                },
              ),
              ElevatedButton(
                child: const Text('Flex,Expand'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const FlexibleSample()));
                },
              ),
              ElevatedButton(
                child: const Text('Gradient'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const GradiendSample()));
                },
              ),
              ElevatedButton(
                child: const Text('Button'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ButtonSample()));
                },
              ),
              ElevatedButton(
                child: const Text('Navigator'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const NavigatorSample()));
                },
              ),
              ElevatedButton(
                child: const Text('Youtube'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const YoutubeSample()));
                },
              ),
              ElevatedButton(
                child: const Text('Json'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const JsonSample()));
                },
              ),
              ElevatedButton(
                child: const Text('SharedPreference'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SharedPreferenceSample()));
                },
              ),
              ElevatedButton(
                child: const Text('BottomTabs'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const BottomNavSample()));
                },
              ),
              ElevatedButton(
                child: const Text('Refresh'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const RefreshSample()));
                },
              ),
              ElevatedButton(
                child: const Text('Bloc'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const AlbumView()));
                },
              ),
              ElevatedButton(
                child: const Text('Provider'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ProviderSample()));
                },
              ),
              ElevatedButton(
                child: const Text('GetIt'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const GetItMyApp()));
                },
              ),
              ElevatedButton(
                child: const Text('RiverPod'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const RiverPodStlSample()));
                },
              ),
              ElevatedButton(
                child: const Text('GetX'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const GetXSample()));
                },
              ),
              ElevatedButton(
                child: const Text('GetXReactive'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GetXReactiveSample()));
                },
              ),
              ElevatedButton(
                child: const Text('Notification'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const NotificationSample()));
                },
              ),
              ElevatedButton(
                child: const Text('WebView'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const WebViewSample()));
                },
              ),
              ElevatedButton(
                child: const Text('Form'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const FormExample()));
                },
              ),
              ElevatedButton(
                child: const Text('MVVM'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const MVVMSalple()));
                },
              ),
              ElevatedButton(
                child: const Text('Pagination'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PaginationSample()));
                },
              ),
              ElevatedButton(
                child: const Text('Slider'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const CarouselSliderSample()));
                },
              ),
              ElevatedButton(
                child: const Text('PhotoView'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PhotoViewSample()));
                },
              ),
              ElevatedButton(
                child: const Text('InappWebView'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const InappWebViewSample()));
                },
              ),
              ElevatedButton(
                child: const Text('Material3'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const MaterialSample()));
                },
              ),
              ElevatedButton(
                child: const Text('SecurityKeyboard'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SecureKeyboardSample()));
                },
              ),
            ],
          ),
        ));
  }
}
