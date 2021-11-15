import 'dart:convert';
import 'package:epub_viewer/epub_viewer.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool loading = false;
  String path = '';

  @override
  void initState() {
    super.initState();
//    download();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('epub poc'),
        ),
        body: Center(
          child: loading
              ? const CircularProgressIndicator()
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () async {
                        EpubViewer.setConfig(
                            themeColor: Theme.of(context).primaryColor,
                            identifier: "iosBook",
                            scrollDirection: EpubScrollDirection.HORIZONTAL,
                            allowSharing: true,
                            enableTts: true,
                            nightMode: false);

                        await EpubViewer.openAsset(
                          'assets/book1.epub',
                          lastLocation: EpubLocator.fromJson({
                            "bookId": "2239",
                            "href": "/OEBPS/ch06.xhtml",
                            "created": 1539934158390,
                            "locations": {
                              "cfi": "epubcfi(/0!/4/4[simple_book]/2/2/6)"
                            }
                          }),
                        );
                        // get current locator
                        EpubViewer.locatorStream.listen((locator) {
                          print(
                              'LOCATOR: ${EpubLocator.fromJson(jsonDecode(locator))}');
                        });
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                                // margin: const EdgeInsets.all(30.0),
                                padding: const EdgeInsets.all(15.0),
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.blueAccent)),
                                child: Text('open book1')),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    TextButton(
                      onPressed: () async {
                        EpubViewer.setConfig(
                            themeColor: Theme.of(context).primaryColor,
                            identifier: "iosBook",
                            scrollDirection: EpubScrollDirection.HORIZONTAL,
                            allowSharing: true,
                            enableTts: true,
                            nightMode: false);

                        await EpubViewer.openAsset(
                          'assets/book2.epub',
                          lastLocation: EpubLocator.fromJson({
                            "bookId": "2239",
                            "href": "/OEBPS/ch01.xhtml",
                            "created": 1539934158390,
                            "locations": {
                              "cfi": "epubcfi(/0!/4/4[simple_book]/2/2/6)"
                            }
                          }),
                        );
                        // get current locator
                        EpubViewer.locatorStream.listen((locator) {
                          print(
                              'LOCATOR: ${EpubLocator.fromJson(jsonDecode(locator))}');
                        });
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                                height: 50,
                                //margin: const EdgeInsets.all(31.0),
                                padding: const EdgeInsets.all(15.0),
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.blueAccent)),
                                child: Text('open book2')),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    TextButton(
                      onPressed: () async {
                        EpubViewer.setConfig(
                            themeColor: Theme.of(context).primaryColor,
                            identifier: "iosBook",
                            scrollDirection: EpubScrollDirection.HORIZONTAL,
                            allowSharing: true,
                            enableTts: true,
                            nightMode: false);

                        await EpubViewer.openAsset(
                          'assets/book3.epub',
                          lastLocation: EpubLocator.fromJson({
                            "bookId": "2239",
                            "href": "/OEBPS/ch01.xhtml",
                            "created": 1539934158390,
                            "locations": {
                              "cfi": "epubcfi(/0!/4/4[simple_book]/2/2/6)"
                            }
                          }),
                        );
                        // get current locator
                        EpubViewer.locatorStream.listen((locator) {
                          print(
                              'LOCATOR: ${EpubLocator.fromJson(jsonDecode(locator))}');
                        });
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                                height: 50,
                                //margin: const EdgeInsets.all(31.0),
                                padding: const EdgeInsets.all(15.0),
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.blueAccent)),
                                child: Text('open book3')),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    TextButton(
                      onPressed: () async {
                        EpubViewer.setConfig(
                            themeColor: Theme.of(context).primaryColor,
                            identifier: "iosBook",
                            scrollDirection: EpubScrollDirection.HORIZONTAL,
                            allowSharing: true,
                            enableTts: true,
                            nightMode: false);

                        await EpubViewer.openAsset(
                          'assets/book4.epub',
                          lastLocation: EpubLocator.fromJson({
                            "bookId": "2239",
                            "href": "/OEBPS/ch01.xhtml",
                            "created": 1539934158390,
                            "locations": {
                              "cfi": "epubcfi(/0!/4/4[simple_book]/2/2/6)"
                            }
                          }),
                        );
                        // get current locator
                        EpubViewer.locatorStream.listen((locator) {
                          print(
                              'LOCATOR: ${EpubLocator.fromJson(jsonDecode(locator))}');
                        });
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                                height: 50,
                                //margin: const EdgeInsets.all(31.0),
                                padding: const EdgeInsets.all(15.0),
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.blueAccent)),
                                child: Text('open book4')),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
