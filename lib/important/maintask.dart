import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test2/basic/container.dart';
import 'package:test2/bottomsheet/bottomsheet.dart';
import 'package:test2/dialog/alert_dialog.dart';
import 'package:test2/dialog/simple_dialog.dart';
import 'package:test2/drawernavbar/drawer.dart';
import 'package:test2/navigation/student_details.dart';
import 'package:test2/stack/stack2.dart';
import 'package:test2/toast&snackbar/showtoast.dart';
import 'package:test2/toast&snackbar/snackbar_message.dart';

import '../Listview&tile/list_builder.dart';
import '../Listview&tile/list_example.dart';
import '../Listview&tile/list_builder_2.dart';
import '../Listview&tile/list_tile.dart';
import '../Listview&tile/list_view_model.dart';
import '../Listview&tile/listview.dart';
import '../Slider/carousel_slider.dart';
import '../Tasks/calculation/calculate.dart';
import '../Tasks/calculation/calculation2.dart';
import '../Tasks/hospitalapp/hospital.dart';
import '../Tasks/shopping/shopping_app.dart';
import '../Tasks/task2/formvalidate.dart';
import '../autosizeText/autosizetext.dart';
import '../basic/data_passing.dart';
import '../basic/image.dart';
import '../basic/shop.dart';
import '../basic/row_column.dart';
import '../bottomsheet/buynow.dart';
import '../bottomsheet/buynow2.dart';
import '../button/radio2.dart';
import '../button/radiobutton.dart';
import '../card/card.dart';
import '../clipRect/cliprect.dart';
import '../datepicker/date_picker.dart';
import '../datepicker/date_picker2.dart';
import '../dialog/page1.dart';
import '../drawernavbar/bottom_navbar.dart';
import '../drawernavbar/profileDrawerNavBar.dart';
import '../expanded/expanded.dart';
import '../fonts/fonts.dart';
import '../googlemap/geo_locator.dart';
import '../googlemap/googlemap.dart';
import '../grid/grid.dart';
import '../navigation/navigation.dart';
import '../navigation/push_replacement.dart';
import '../opacity/opacity.dart';
import '../progressbar/prgressBarCircular.dart';
import '../progressbar/progressBarLine.dart';
import '../splashscreen/splashscreen.dart';
import '../stack/stackExample.dart';
import '../tabbar/tabbar.dart';
import '../textfield/formvalidate.dart';
import '../textfield/textFieldButton.dart';
import '../toast&snackbar/toast_message.dart';

class MainTask extends StatefulWidget {
  const MainTask({Key? key}) : super(key: key);

  @override
  State<MainTask> createState() => _MainTaskState();
}

class _MainTaskState extends State<MainTask> {
  final ButtonStyle customButton = ElevatedButton.styleFrom(
    backgroundColor: Colors.blueGrey[300],
    foregroundColor: Colors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    elevation: 0,
  );
  final TextStyle customText = const TextStyle(
    fontSize: 22,
    fontFamily: 'Kalam',
  );
  final AppBar customAppBar = AppBar(
    systemOverlayStyle: const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
    title: const Text(
      'Navigation',
      style: TextStyle(
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        fontFamily: 'Kalam',
        fontSize: 38,
        letterSpacing: 2,
      ),
    ),
    centerTitle: true,
    backgroundColor: Colors.blueGrey,
    foregroundColor: Colors.black,
    elevation: 0,
  );
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersiveSticky,
      overlays: [],
    );
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: customAppBar,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 40,
            ),
            child: Wrap(
              spacing: 14,
              runSpacing: 10,
              children: [
                ElevatedButton(
                  style: customButton,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Task1(),
                      ),
                    );
                  },
                  child: Text(
                    'Container',
                    style: customText,
                  ),
                ),
                ElevatedButton(
                  style: customButton,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Task2(),
                      ),
                    );
                  },
                  child: Text(
                    'Row & Column',
                    style: customText,
                  ),
                ),
                ElevatedButton(
                    style: customButton,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Shop(),
                        ),
                      );
                    },
                    child: Text(
                      'shop',
                      style: customText,
                    )),
                ElevatedButton(
                    style: customButton,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Calculate(),
                        ),
                      );
                    },
                    child: Text(
                      'Calculate',
                      style: customText,
                    )),
                ElevatedButton(
                    style: customButton,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Calculation2(),
                        ),
                      );
                    },
                    child: Text(
                      'Calculation2',
                      style: customText,
                    )),
                ElevatedButton(
                    style: customButton,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const StudentPage1(),
                        ),
                      );
                    },
                    child: Text(
                      'student details',
                      style: customText,
                    )),
                ElevatedButton(
                    style: customButton,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DataPass(),
                        ),
                      );
                    },
                    child: Text(
                      'DataPassing',
                      style: customText,
                    )),
                ElevatedButton(
                    style: customButton,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Image1(),
                        ),
                      );
                    },
                    child: Text(
                      'Image',
                      style: customText,
                    )),
                ElevatedButton(
                    style: customButton,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TextFieldButton(),
                        ),
                      );
                    },
                    child: Text(
                      'Text Field Button',
                      style: customText,
                    )),
                ElevatedButton(
                    style: customButton,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ListExample(),
                        ),
                      );
                    },
                    child: Text(
                      'List Example',
                      style: customText,
                    )),
                ElevatedButton(
                    style: customButton,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ListBuilder(),
                        ),
                      );
                    },
                    child: Text(
                      'List Builder',
                      style: customText,
                    )),
                ElevatedButton(
                    style: customButton,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ListTile1(),
                        ),
                      );
                    },
                    child: Text(
                      'List Tile',
                      style: customText,
                    )),
                ElevatedButton(
                    style: customButton,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ModelList(),
                        ),
                      );
                    },
                    child: Text(
                      'List View Model',
                      style: customText,
                    )),
                ElevatedButton(
                    style: customButton,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ListView1(),
                        ),
                      );
                    },
                    child: Text(
                      'List View',
                      style: customText,
                    )),
                ElevatedButton(
                    style: customButton,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ListViewExample(),
                        ),
                      );
                    },
                    child: Text(
                      'List View Example',
                      style: customText,
                    )),
                ElevatedButton(
                    style: customButton,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Navigation(),
                        ),
                      );
                    },
                    child: Text(
                      'Navigation',
                      style: customText,
                    )),
                ElevatedButton(
                    style: customButton,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Hospital(),
                        ),
                      );
                    },
                    child: Text(
                      'Hospital',
                      style: customText,
                    )),
                ElevatedButton(
                    style: customButton,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const StackExample(),
                        ),
                      );
                    },
                    child: Text(
                      'StackExample',
                      style: customText,
                    )),
                ElevatedButton(
                    style: customButton,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Stack2(),
                        ),
                      );
                    },
                    child: Text(
                      'StackExample2',
                      style: customText,
                    )),
                ElevatedButton(
                    style: customButton,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BottomSheet1(),
                        ),
                      );
                    },
                    child: Text(
                      'BottomSheet',
                      style: customText,
                    )),
                ElevatedButton(
                    style: customButton,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ItemsSelect(),
                        ),
                      );
                    },
                    child: Text(
                      'Item Select',
                      style: customText,
                    )),
                ElevatedButton(
                    style: customButton,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BuyNow(),
                        ),
                      );
                    },
                    child: Text(
                      'Buy Now',
                      style: customText,
                    )),
                ElevatedButton(
                  style: customButton,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ShowToast(),
                      ),
                    );
                  },
                  child: Text(
                    'Show Toast',
                    style: customText,
                  ),
                ),
                ElevatedButton(
                  style: customButton,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SnackBarMsg(),
                      ),
                    );
                  },
                  child: Text(
                    'SnackBar Message',
                    style: customText,
                  ),
                ),
                ElevatedButton(
                  style: customButton,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ToastMsg(),
                      ),
                    );
                  },
                  child: Text(
                    'Toast Message',
                    style: customText,
                  ),
                ),
                ElevatedButton(
                  style: customButton,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AlertDialog1(),
                      ),
                    );
                  },
                  child: Text(
                    'Alert Dialog',
                    style: customText,
                  ),
                ),
                ElevatedButton(
                  style: customButton,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AlertDialogPage1(),
                      ),
                    );
                  },
                  child: Text(
                    'Alert Dialog Box',
                    style: customText,
                  ),
                ),
                ElevatedButton(
                  style: customButton,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PushReplacement1(),
                      ),
                    );
                  },
                  child: Text(
                    'Push Replacement',
                    style: customText,
                  ),
                ),
                ElevatedButton(
                  style: customButton,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SimpleDialog1(),
                      ),
                    );
                  },
                  child: Text(
                    'Simple Dialog',
                    style: customText,
                  ),
                ),
                ElevatedButton(
                  style: customButton,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DatePicker(),
                      ),
                    );
                  },
                  child: Text(
                    'Date Picker',
                    style: customText,
                  ),
                ),
                ElevatedButton(
                  style: customButton,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BottomNavBar(),
                      ),
                    );
                  },
                  child: Text(
                    'Bottom NavBar',
                    style: customText,
                  ),
                ),
                ElevatedButton(
                  style: customButton,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Drawer1(),
                      ),
                    );
                  },
                  child: Text(
                    'Drawer',
                    style: customText,
                  ),
                ),
                ElevatedButton(
                  style: customButton,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BottomNavBar2(),
                      ),
                    );
                  },
                  child: Text(
                    'Profile Drawer',
                    style: customText,
                  ),
                ),
                ElevatedButton(
                  style: customButton,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Shopping(),
                      ),
                    );
                  },
                  child: Text(
                    'Shopping App',
                    style: customText,
                  ),
                ),
                ElevatedButton(
                  style: customButton,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Opacity1(),
                      ),
                    );
                  },
                  child: Text(
                    'Opacity',
                    style: customText,
                  ),
                ),
                ElevatedButton(
                  style: customButton,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TabBar1(),
                      ),
                    );
                  },
                  child: Text(
                    'TabBar',
                    style: customText,
                  ),
                ),
                ElevatedButton(
                  style: customButton,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Fonts(),
                      ),
                    );
                  },
                  child: Text(
                    'Fonts',
                    style: customText,
                  ),
                ),
                ElevatedButton(
                  style: customButton,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CarouselSlider1(),
                      ),
                    );
                  },
                  child: Text(
                    'Carousel Slider',
                    style: customText,
                  ),
                ),
                ElevatedButton(
                  style: customButton,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ClipRect1(),
                      ),
                    );
                  },
                  child: Text(
                    'ClipRect',
                    style: customText,
                  ),
                ),
                ElevatedButton(
                  style: customButton,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProgressBarLine1(),
                      ),
                    );
                  },
                  child: Text(
                    'Circular Progress',
                    style: customText,
                  ),
                ),
                ElevatedButton(
                  style: customButton,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProgressBarCircle1(),
                      ),
                    );
                  },
                  child: Text(
                    'Linear Progress',
                    style: customText,
                  ),
                ),
                ElevatedButton(
                  style: customButton,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Expanded1(),
                      ),
                    );
                  },
                  child: Text(
                    'Expanded',
                    style: customText,
                  ),
                ),
                ElevatedButton(
                  style: customButton,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AutoSize1(),
                      ),
                    );
                  },
                  child: Text(
                    'AutoSize Text',
                    style: customText,
                  ),
                ),
                ElevatedButton(
                  style: customButton,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Card1(),
                      ),
                    );
                  },
                  child: Text(
                    'Card',
                    style: customText,
                  ),
                ),
                ElevatedButton(
                  style: customButton,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Radio1(),
                      ),
                    );
                  },
                  child: Text(
                    'RadioButton',
                    style: customText,
                  ),
                ),
                ElevatedButton(
                  style: customButton,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Grid1(),
                      ),
                    );
                  },
                  child: Text(
                    'Grid',
                    style: customText,
                  ),
                ),
                ElevatedButton(
                  style: customButton,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TextForm1(),
                      ),
                    );
                  },
                  child: Text(
                    'Form Validation',
                    style: customText,
                  ),
                ),
                ElevatedButton(
                  style: customButton,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Radio2(),
                      ),
                    );
                  },
                  child: Text(
                    'Radio',
                    style: customText,
                  ),
                ),
                ElevatedButton(
                  style: customButton,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Validate1(),
                      ),
                    );
                  },
                  child: Text(
                    'Task',
                    style: customText,
                  ),
                ),
                ElevatedButton(
                  style: customButton,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SplashScreen1(),
                      ),
                    );
                  },
                  child: Text(
                    'SplashScreen',
                    style: customText,
                  ),
                ),
                ElevatedButton(
                  style: customButton,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Googlemap1(),
                      ),
                    );
                  },
                  child: Text(
                    'Map',
                    style: customText,
                  ),
                ),
                ElevatedButton(
                  style: customButton,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GeoLocatorMap(),
                      ),
                    );
                  },
                  child: Text(
                    'GeoLocator',
                    style: customText,
                  ),
                ),
                ElevatedButton(
                  style: customButton,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DatePickerMinimal(),
                      ),
                    );
                  },
                  child: Text(
                    'Date Picker',
                    style: customText,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
