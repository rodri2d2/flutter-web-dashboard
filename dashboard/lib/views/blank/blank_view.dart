import 'package:dashboard/essencial_imports.dart';

import '../../resources/resources_imports.dart';

class BlankView extends StatelessWidget {
  const BlankView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          Text(
            'Blank view',
            style: CustomLabels.h1,
          ),
          SizedBox(height: 10),
          WhiteCard(
            title: 'Sales Statics',
            child: Text('Hello Dashboard'),
          )
        ],
      ),
    );
  }
}
