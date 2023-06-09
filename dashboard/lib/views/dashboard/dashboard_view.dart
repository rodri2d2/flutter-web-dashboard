import 'package:dashboard/resources/resources_imports.dart';

import '../../essencial_imports.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          Text(
            'Dashboard view',
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
