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
          Logo(),
          SizedBox(height: 50),
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
