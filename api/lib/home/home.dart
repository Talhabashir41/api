import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

   @override
    void initState() {
      super.initState();
      initerstitialAd();
    }
 

    late InterstitialAd interstitialAd;
    bool isAdLoad = false;

    initerstitialAd() {
      InterstitialAd.load(
          adUnitId: "ca-app-pub-3940256099942544/1033173712",
          request: const AdRequest(),
          adLoadCallback: InterstitialAdLoadCallback(onAdLoaded: (ad) {
            interstitialAd = ad;
            setState(() {
              isAdLoad = true;
              interstitialAd.show();
            });
          }, onAdFailedToLoad: ((error) {
            interstitialAd.dispose();
          })));
    }
 @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Fingerprint')),
            ElevatedButton(onPressed: () {}, child: Text('QR scanner')),
            ElevatedButton(onPressed: () {}, child: Text('Audio Recording'))
          ],
        ),
      ),
    );
  }
}
