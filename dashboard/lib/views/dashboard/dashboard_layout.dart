import '../../essencial_imports.dart';
import '../../resources/resources_imports.dart';

class DashboardLayout extends StatelessWidget {
  final Widget child;

  const DashboardLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        // TODO: Side bar should appear only if it is bigger than 700px
        SideBar(),

        Expanded(
          child: Column(
            children: [
              // Nav var
              NavBar(),

              // Main View container
              Expanded(child: child),
            ],
          ),
        )
      ]),
    );
  }
}
