import 'package:dashboard/resources/resources_imports.dart';
import '../../../essencial_imports.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: double.infinity,
      decoration: _buildeDecoration(),
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          const Logo(),
          const SizedBox(height: 50),
          const TextSeparator(text: 'Main'),
          MenuItem(
              text: 'Dashboard',
              icon: Icons.compass_calibration_outlined,
              isActive: false,
              onpress: () {}),
          MenuItem(
              text: 'Orders',
              icon: Icons.shopping_cart_outlined,
              isActive: false,
              onpress: () {}),
          MenuItem(
              text: 'Analitics',
              icon: Icons.show_chart_outlined,
              isActive: false,
              onpress: () {}),
          MenuItem(
              text: 'Cathegories',
              icon: Icons.layers_outlined,
              isActive: false,
              onpress: () {}),
          MenuItem(
              text: 'Products',
              icon: Icons.dashboard_outlined,
              isActive: false,
              onpress: () {}),
          MenuItem(
              text: 'Discount',
              icon: Icons.attach_money_outlined,
              isActive: false,
              onpress: () {}),
          MenuItem(
              text: 'Customers',
              icon: Icons.people_alt_outlined,
              isActive: false,
              onpress: () {}),
          const SizedBox(height: 50),
          const TextSeparator(text: 'UI Elements'),
          MenuItem(
              text: 'Icons',
              icon: Icons.list_alt_outlined,
              isActive: false,
              onpress: () {}),
          MenuItem(
              text: 'Marketing',
              icon: Icons.mark_email_read_outlined,
              isActive: false,
              onpress: () {}),
          MenuItem(
              text: 'Campaing',
              icon: Icons.note_add_outlined,
              isActive: false,
              onpress: () {}),
          MenuItem(
              text: 'Black',
              icon: Icons.post_add_outlined,
              isActive: false,
              onpress: () {}),
          MenuItem(
              text: 'Log out',
              icon: Icons.exit_to_app_outlined,
              isActive: false,
              onpress: () {}),
        ],
      ),
    );
  }

  BoxDecoration _buildeDecoration() => const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff092044),
            Color(0xff092043),
          ]),
          boxShadow: [
            BoxShadow(color: Colors.black38, blurRadius: 10),
          ]);
}
