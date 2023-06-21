import 'package:dashboard/views/sidebar/sidebar_view_model.dart';
import '../../essencial_imports.dart';
import '../../resources/resources_imports.dart';

class DashboardLayout extends StatefulWidget {
  final Widget child;

  const DashboardLayout({super.key, required this.child});

  @override
  State<DashboardLayout> createState() => _DashboardLayoutState();
}

class _DashboardLayoutState extends State<DashboardLayout>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    SideBarViewModel.menuController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    //
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              if (size.width >= 700) SideBar(),
              //
              Expanded(
                child: Column(
                  children: [
                    // Nav var
                    NavBar(),

                    // Main View container
                    Expanded(
                        child: Container(
                      child: widget.child,
                    )),
                  ],
                ),
              )
            ],
          ),
          if (size.width < 700)
            AnimatedBuilder(
                animation: SideBarViewModel.menuController,
                builder: (context, _) => Stack(
                      children: [
                        //
                        if (SideBarViewModel.isOpen)
                          Opacity(
                            opacity: SideBarViewModel.opcacity.value,
                            child: GestureDetector(
                              onTap: () => SideBarViewModel.closeMenu(),
                              child: Container(
                                width: size.width,
                                height: size.height,
                                color: Colors.grey,
                              ),
                            ),
                          ),

                        //
                        Transform.translate(
                          offset: Offset(SideBarViewModel.movement.value, 0),
                          child: SideBar(),
                        )
                      ],
                    ))
        ],
      ),
    );
  }
}
