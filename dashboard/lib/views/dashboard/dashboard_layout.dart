import '../../../essencial_imports.dart';

class DashboardLayout extends StatelessWidget {
  final Widget child;

  const DashboardLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Deshboard layout',
            style: TextStyle(fontSize: 50),
          ),
          Expanded(child: child)
        ],
      ),
    );
  }
}
