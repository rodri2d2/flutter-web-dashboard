import 'package:flutter/material.dart';

import '../buttons/link_text.dart';

class LinksBar extends StatelessWidget {
  const LinksBar({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      color: Colors.black,
      height: (size.width > 1000) ? size.height * 0.07 : null,
      padding: const EdgeInsets.all(16),
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          LinkText(
            text: 'About',
            onPressed: () => print('About'),
          ),

          // TODO: This should be somehow dynamic
          const LinkText(text: 'Help Center'),
          const LinkText(text: 'Terms Service'),
          const LinkText(text: 'Privacy Policy'),
          const LinkText(text: 'Cookie Policy'),
          const LinkText(text: 'Ads Info'),
          const LinkText(text: 'Blog'),
          const LinkText(text: 'Status'),
          const LinkText(text: 'Carrers'),
          const LinkText(text: 'Brand Resources'),
          const LinkText(text: 'Advertising'),
          const LinkText(text: 'Marketing'),
        ],
      ),
    );
  }
}
