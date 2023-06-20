import '../../../essencial_imports.dart';
import '../../resources_imports.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: _buildDecoration(),
      child: Row(children: [
        // TODO: Handle icon when is on small screen and click
        IconButton(
          icon: Icon(Icons.menu_outlined),
          onPressed: () {},
        ),
        SizedBox(width: 5),

        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 250),
          child: SearchField(),
        ),

        Spacer(),

        NotificationIndicator(),
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
