part of '../personal_screen.dart';

class PersonDataField extends StatelessWidget {
  const PersonDataField({
    Key? key,
    required this.text,
    required this.name,
  }) : super(key: key);
  final String text;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        const SizedBox(height: 8),
        SizedBox(
          height: 38,
          width: 180,
          child: TextField(
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 10, top: 4),
                child: InkWell(
                  onTap: () {},
                  child: SvgPicture.asset(
                    'assets/svgs/edit.svg',
                    height: 16,
                    width: 16,
                  ),
                ),
              ),
              suffixIconConstraints:
                  const BoxConstraints(minHeight: 16, minWidth: 16),
              hintText: name,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
