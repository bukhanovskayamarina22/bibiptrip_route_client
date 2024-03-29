import 'package:bibiptrip_route_client/widgets/paddings.dart';
import 'package:bibiptrip_route_client/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  void _navigateToMainPage(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const AppScaffold()),
    );
  }
  void _launchURL(String url) async {
    try {
      await launchUrl(Uri.parse(url));
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: PaddingAll24(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FilledButton(
                onPressed: () => _navigateToMainPage(context),
                child: const Text('Get Started'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    onPressed: () =>
                        _launchURL('https://www.example.com'),
                    child: const Text('Terms and Conditions'),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 8)),
                  TextButton(
                    onPressed: () =>
                        _launchURL('https://www.example.com'),
                    child: const Text('Privacy Policy'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

