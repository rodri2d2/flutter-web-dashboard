import 'package:dashboard/resources/resources_imports.dart';

import '../../../essencial_imports.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _buildDecoration(),
      child: TextField(
        decoration: CustomInput.searchInputDecoration(
            hint: 'Search', icon: Icons.search_outlined),
      ),
    );
  }

  BoxDecoration _buildDecoration() => BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.withOpacity(0.1),
      );
}
