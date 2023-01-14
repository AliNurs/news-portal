// ignore_for_file: must_be_immutable, sort_child_properties_last

part of '../personal_screen.dart';

class LoadNewsWidget extends StatelessWidget {
  LoadNewsWidget({
    Key? key,
  }) : super(key: key);

  List<String> chooseCategory = [
    'Не выбрано',
    'выбрано',
    'no выбрано',
    'nе выбрано',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topRight,
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset('assets/svgs/x.svg')),
        ),
        const SizedBox(height: 12),
        const Text(
          'Обложка новости',
          style: AppTextStyles.w400size16,
        ),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: const BorderSide(color: Colors.grey)),
              backgroundColor: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
          label: Text(
            'Загрузить',
            style: AppTextStyles.w400size14.copyWith(color: Colors.black),
          ),
          icon: SvgPicture.asset('assets/svgs/download.svg'),
        ),
        const SizedBox(height: 16),
        const Text('Заголовок'),
        const SizedBox(height: 8),
        SizedBox(
          height: 38,
          width: 260,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        const Text('Краткое описание'),
        const SizedBox(height: 8),
        SizedBox(
          height: 38,
          width: 260,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        const Text('Текст новости'),
        const SizedBox(height: 8),
        SizedBox(
          height: 95,
          width: 260,
          child: TextField(
            keyboardType: TextInputType.multiline,
            maxLines: null,
            decoration: InputDecoration(
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              enabledBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        const Text('Выбрать категорию'),
        const SizedBox(height: 8),
        Container(
          height: 38,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey.shade300, width: 1),
          ),
          child: DropdownButton<String>(
            menuMaxHeight: 165,
            borderRadius: BorderRadius.circular(5),
            elevation: 2,
            icon: const Icon(Icons.keyboard_arrow_down_outlined),
            iconSize: 30,
            underline: const SizedBox(),
            isExpanded: true,
            hint: Row(
              children:const [
                 SizedBox(width: 12),
                 Text('Не выбрано'),
              ],
            ),
            items: chooseCategory
                .map(
                  (e) => DropdownMenuItem(
                    child: Text(
                      e,
                      style: TextStyle(color: Colors.black),
                    ),
                    value: e,
                  ),
                )
                .toList(),
            onChanged: (val) {},
          ),
        ),
        const SizedBox(height: 6),
        Chip(
          elevation: 8,
          backgroundColor: Colors.white,
          shadowColor: Colors.grey.shade300,
          shape: RoundedRectangleBorder(
            // side: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          label: const Text(
            '#Не выбрано',
          ),
        ),
        const SizedBox(height: 38),
        Center(
            child: SizedBox(
                height: 30,
                width: 192,
                child: AppButton(text: 'Создать', onPressed: () {})))
      ],
    );
  }
}
