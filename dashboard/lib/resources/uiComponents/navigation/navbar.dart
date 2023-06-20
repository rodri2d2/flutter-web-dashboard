import 'package:dashboard/services/animations/side_menu_service.dart';

import '../../../essencial_imports.dart';
import '../../resources_imports.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    //
    return Container(
      width: double.infinity,
      height: 50,
      decoration: _buildDecoration(),
      child: Row(children: [
        if (size.width <= 700)
          IconButton(
            icon: Icon(Icons.menu_outlined),
            onPressed: () {
              SideMenuService.openMenu();
            },
          ),

        //
        SizedBox(width: 5),

        //
        if (size.width > 440)
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 250),
            child: SearchField(),
          ),

        Spacer(),

        //
        NotificationIndicator(),

        //
        SizedBox(width: 10),
        NavbarAvatar(),
        SizedBox(width: 10)
      ]),
    );
  }

  BoxDecoration _buildDecoration() =>
      BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 5),
      ]);
}
