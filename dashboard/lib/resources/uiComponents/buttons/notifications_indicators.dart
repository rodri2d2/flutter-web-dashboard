import '../../../essencial_imports.dart';

class NotificationIndicator extends StatelessWidget {
  const NotificationIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        Icon(
          Icons.notifications_none_outlined,
          color: Colors.grey,
        ),
        Positioned(
          left: 15,
          child: Container(
            width: 5,
            height: 5,
            decoration: _buildDecoration(),
          ),
        )
      ]),
    );
  }

  BoxDecoration _buildDecoration() => BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(100),
      );
}
