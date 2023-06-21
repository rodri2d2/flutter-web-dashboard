import '../../../essencial_imports.dart';

class NavbarAvatar extends StatelessWidget {
  const NavbarAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8dY5cebG_qx0I2oRlqdDv51ZcfQkJbjwPBw&usqp=CAU'),
        width: 30,
        height: 30,
      ),
    );
  }
}
