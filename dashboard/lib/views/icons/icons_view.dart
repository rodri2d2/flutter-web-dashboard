import '../../essencial_imports.dart';
import '../../resources/resources_imports.dart';

class IconsView extends StatelessWidget {
  const IconsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          Text(
            'Icons',
            style: CustomLabels.h1,
          ),
          SizedBox(height: 10),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.start,
            direction: Axis.horizontal,
            children: [
              WhiteCard(
                title: 'ac_unit_outlined',
                child: Center(
                  child: Icon(Icons.ac_unit_outlined),
                ),
                width: 170,
              ),
              WhiteCard(
                title: 'access_alarm_outlined',
                child: Center(
                  child: Icon(Icons.access_alarm_outlined),
                ),
                width: 170,
              ),
              WhiteCard(
                title: 'power_input_outlined',
                child: Center(
                  child: Icon(Icons.power_input_outlined),
                ),
                width: 170,
              ),
              WhiteCard(
                title: 'card_membership_outlined',
                child: Center(
                  child: Icon(Icons.card_membership_outlined),
                ),
                width: 170,
              ),
              WhiteCard(
                title: 'receipt_long_outlined',
                child: Center(
                  child: Icon(Icons.receipt_long_outlined),
                ),
                width: 170,
              ),
              WhiteCard(
                title: 'room_outlined',
                child: Center(
                  child: Icon(Icons.room_outlined),
                ),
                width: 170,
              ),
            ],
          )
        ],
      ),
    );
  }
}
