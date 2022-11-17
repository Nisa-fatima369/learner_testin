import 'package:flutter/material.dart';
import 'package:learner_testin/constants.dart';

class AddService extends StatefulWidget {
  const AddService({super.key});

  @override
  State<AddService> createState() => _AddServiceState();
}

class _AddServiceState extends State<AddService> {
  
  TextEditingController controller = TextEditingController();
  List<String> options = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
    'Option 5',
    'Option 6',
    'Option 7',
    'Option 8',
    'Option 9',
    'Option 10',
    'Option 11',
    'Option 12',
    'Option 13',
    'Option 14',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.75,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Add Service',
                    style: kBoldTextStyle.copyWith(color: Colors.green)),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.clear, color: Colors.grey.shade500),
                ),
              ],
            ),
            TextField(
              onTap: () {
                _optionBottomSheet(context, options, controller);
              },
              readOnly: true,
              controller: controller,
              decoration: const InputDecoration(
                suffixIcon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.green,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  borderSide: BorderSide(color: Colors.green),
                ),
                contentPadding: EdgeInsets.all(20),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  borderSide: BorderSide(color: Colors.green),
                ),
                hintText: 'Category',
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(color: Colors.green, spreadRadius: 1),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.photo_album, color: Colors.green),
                  Text(
                    'Add Photos',
                    style: kPrimaryColor,
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Text('Services Name', style: kVerylessBoldText),
            SizedBox(height: size.height * 0.005),
            ReuseTextField(hintText: 'Name here'),
            SizedBox(height: size.height * 0.02),
            Text('Description', style: kVerylessBoldText),
            SizedBox(height: size.height * 0.005),
            Container(
              height: size.height * 0.1,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade400, spreadRadius: 1),
                ],
              ),
              child: TextField(
                maxLines: null,
                maxLength: null,
                expands: true,
                textInputAction: TextInputAction.newline,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintMaxLines: 3,
                  hintStyle: TextStyle(color: Colors.grey.shade500),
                  hintText:
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  isCollapsed: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Text('Price', style: kVerylessBoldText),
            SizedBox(height: size.height * 0.005),
            ReuseTextField(),
            SizedBox(height: size.height * 0.02),
            Text('Duration', style: kVerylessBoldText),
            SizedBox(height: size.height * 0.005),
            ReuseTextField(),
            Expanded(child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xFFEEEEEE),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    'CANCEL',
                  ),
                ),
                const SizedBox(width: 10),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        // side: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                  child: const Text(
                    'SAVE',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ReuseTextField extends StatelessWidget {
  const ReuseTextField({
    Key? key,
    this.hintText,
  }) : super(key: key);

  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          borderSide: BorderSide(color: Colors.grey.shade400),
        ),
        contentPadding: EdgeInsets.all(20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          borderSide: BorderSide(color: Colors.grey.shade400),
        ),
        hintText: hintText,
      ),
    );
  }
}

_optionBottomSheet(BuildContext context, List<String> options,
    TextEditingController controller) {
  showModalBottomSheet(
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
    ),
    context: context,
    builder: (context) {
      return ListView.separated(
        itemCount: 8,
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              controller.text = options[index];
              Navigator.pop(context);
            },
            child: ListTile(
              title: Text(
                options[index],
              ),
            ),
          );
        },
      );
    },
  );
}
