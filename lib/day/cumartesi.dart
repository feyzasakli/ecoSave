// ignore_for_file: non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class CumartesiPage extends StatefulWidget {
  const CumartesiPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CumartesiPageState createState() => _CumartesiPageState();
}

class _CumartesiPageState extends State<CumartesiPage>
    with SingleTickerProviderStateMixin {
  int completedTaskCount = 0;
  int completedTaskCount2 = 0;
  int totalScore = 0;
  int totalScore2 = 0;
  bool _isExpanded1 = false;
  bool _isExpanded2 = false;
  bool _isExpanded3 = false;
  bool _isExpanded4 = false;
  bool _isExpanded5 = false;
  bool _isExpanded6 = false;
  bool _isExpanded7 = false;
  bool _isExpanded8 = false;
  IconData _arrowIcon1 = Icons.arrow_downward;
  IconData _arrowIcon2 = Icons.arrow_downward;
  IconData _arrowIcon3 = Icons.arrow_downward;
  IconData _arrowIcon4 = Icons.arrow_downward;
  IconData _arrowIcon5 = Icons.arrow_downward;
  IconData _arrowIcon6 = Icons.arrow_downward;
  IconData _arrowIcon7 = Icons.arrow_downward;
  IconData _arrowIcon8 = Icons.arrow_downward;
  bool _fileSelected1 = false;
  bool _fileSelected2 = false;
  bool _fileSelected3 = false;
  bool _fileSelected4 = false;
  bool _fileSelected5 = false;
  bool _fileSelected6 = false;
  bool _fileSelected7 = false;
  bool _fileSelected8 = false;
  List<PlatformFile>? _selectedFiles1;
  List<PlatformFile>? _selectedFiles2;
  List<PlatformFile>? _selectedFiles3;
  List<PlatformFile>? _selectedFiles4;
  List<PlatformFile>? _selectedFiles5;
  List<PlatformFile>? _selectedFiles6;
  List<PlatformFile>? _selectedFiles7;
  List<PlatformFile>? _selectedFiles8;
  void _toggleBoxHeight1() {
    setState(() {
      _isExpanded1 = !_isExpanded1;
      _arrowIcon1 = _isExpanded1 ? Icons.arrow_upward : Icons.arrow_downward;
    });
  }

  void _toggleBoxHeight2() {
    setState(() {
      _isExpanded2 = !_isExpanded2;
      _arrowIcon2 = _isExpanded2 ? Icons.arrow_upward : Icons.arrow_downward;
    });
  }

  void _toggleBoxHeight3() {
    setState(() {
      _isExpanded3 = !_isExpanded3;
      _arrowIcon3 = _isExpanded3 ? Icons.arrow_upward : Icons.arrow_downward;
    });
  }

  void _toggleBoxHeight4() {
    setState(() {
      _isExpanded4 = !_isExpanded4;
      _arrowIcon4 = _isExpanded4 ? Icons.arrow_upward : Icons.arrow_downward;
    });
  }

  void _toggleBoxHeight5() {
    setState(() {
      _isExpanded5 = !_isExpanded5;
      _arrowIcon5 = _isExpanded5 ? Icons.arrow_upward : Icons.arrow_downward;
    });
  }

  void _toggleBoxHeight6() {
    setState(() {
      _isExpanded6 = !_isExpanded6;
      _arrowIcon6 = _isExpanded6 ? Icons.arrow_upward : Icons.arrow_downward;
    });
  }

  void _toggleBoxHeight7() {
    setState(() {
      _isExpanded7 = !_isExpanded7;
      _arrowIcon7 = _isExpanded7 ? Icons.arrow_upward : Icons.arrow_downward;
    });
  }

  void _toggleBoxHeight8() {
    setState(() {
      _isExpanded8 = !_isExpanded8;
      _arrowIcon8 = _isExpanded8 ? Icons.arrow_upward : Icons.arrow_downward;
    });
  }

  Future<void> _selectFile1() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'jpeg', 'png', 'mp4'],
      allowMultiple: true,
    );

    if (result != null) {
      setState(() {
        // Handle file selection logic
        _fileSelected1 = true;
        _selectedFiles1 = result.files;

        // Increment completed task count
        completedTaskCount++;
      });
    } else {
      // User canceled the file selection
      // You can handle this case accordingly
    }
  }

  Future<void> _selectFile2() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'jpeg', 'png', 'mp4'],
      allowMultiple: true,
    );

    if (result != null) {
      setState(() {
        _fileSelected2 = true;
        _selectedFiles2 = result.files;
        completedTaskCount++;
      });
    }
  }

  Future<void> _selectFile3() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'jpeg', 'png', 'mp4'],
      allowMultiple: true,
    );

    if (result != null) {
      setState(() {
        _fileSelected3 = true;
        _selectedFiles3 = result.files;
        completedTaskCount++;
      });
    }
  }

  Future<void> _selectFile4() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'jpeg', 'png', 'mp4'],
      allowMultiple: true,
    );

    if (result != null) {
      setState(() {
        _fileSelected4 = true;
        _selectedFiles4 = result.files;
        completedTaskCount++;
      });
    }
  }

  Future<void> _selectFile5() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'jpeg', 'png', 'mp4'],
      allowMultiple: true,
    );

    if (result != null) {
      setState(() {
        _fileSelected5 = true;
        _selectedFiles5 = result.files;
        completedTaskCount++;
      });
    }
  }

  Future<void> _selectFile6() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'jpeg', 'png', 'mp4'],
      allowMultiple: true,
    );

    if (result != null) {
      setState(() {
        _fileSelected6 = true;
        _selectedFiles6 = result.files;
        completedTaskCount2++;
      });
    }
  }

  Future<void> _selectFile7() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'jpeg', 'png', 'mp4'],
      allowMultiple: true,
    );

    if (result != null) {
      setState(() {
        _fileSelected7 = true;
        _selectedFiles7 = result.files;
        completedTaskCount2++;
      });
    }
  }

  Future<void> _selectFile8() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'jpeg', 'png', 'mp4'],
      allowMultiple: true,
    );

    if (result != null) {
      setState(() {
        _fileSelected8 = true;
        _selectedFiles8 = result.files;
        completedTaskCount2++;
      });
    }
  }

  String task_name = "";
  String task_description = "";
  String task_name2 = "";
  String task_description2 = "";
  String task_name3 = "";
  String task_description3 = "";
  String task_name4 = "";
  String task_description4 = "";
  String task_name5 = "";
  String task_description5 = "";
  String task_name6 = "";
  String task_description6 = "";
  String task_name7 = "";
  String task_description7 = "";
  String task_name8 = "";
  String task_description8 = "";

  @override
  void initState() {
    super.initState();
    fetchTaskName();
    fetchTaskName2();
    fetchTaskName3();
    fetchTaskName4();
    fetchTaskName5();
    fetchTaskName6();
    fetchTaskName7();
    fetchTaskName8();
  }

  void fetchTaskName() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    DocumentSnapshot snapshot =
        await firestore.collection('task').doc('cmrts1').get();

    if (snapshot.exists) {
      setState(() {
        task_name =
            (snapshot.data() as Map<String, dynamic>)['task_name'] as String;
        task_description = (snapshot.data()
            as Map<String, dynamic>)['task_description'] as String;
      });
    }
  }

  void fetchTaskName2() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    DocumentSnapshot snapshot =
        await firestore.collection('task').doc('cmrts2').get();

    if (snapshot.exists) {
      setState(() {
        task_name2 =
            (snapshot.data() as Map<String, dynamic>)['task_name'] as String;
        task_description2 = (snapshot.data()
            as Map<String, dynamic>)['task_description'] as String;
      });
    }
  }

  void fetchTaskName3() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    DocumentSnapshot snapshot =
        await firestore.collection('task').doc('cmrts3').get();

    if (snapshot.exists) {
      setState(() {
        task_name3 =
            (snapshot.data() as Map<String, dynamic>)['task_name'] as String;
        task_description3 = (snapshot.data()
            as Map<String, dynamic>)['task_description'] as String;
      });
    }
  }

  void fetchTaskName4() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    DocumentSnapshot snapshot =
        await firestore.collection('task').doc('cmrts4').get();

    if (snapshot.exists) {
      setState(() {
        task_name4 =
            (snapshot.data() as Map<String, dynamic>)['task_name'] as String;
        task_description4 = (snapshot.data()
            as Map<String, dynamic>)['task_description'] as String;
      });
    }
  }

  void fetchTaskName5() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    DocumentSnapshot snapshot =
        await firestore.collection('task').doc('cmrts5').get();

    if (snapshot.exists) {
      setState(() {
        task_name5 =
            (snapshot.data() as Map<String, dynamic>)['task_name'] as String;
        task_description5 = (snapshot.data()
            as Map<String, dynamic>)['task_description'] as String;
      });
    }
  }

  void fetchTaskName6() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    DocumentSnapshot snapshot =
        await firestore.collection('task').doc('cmrts6').get();

    if (snapshot.exists) {
      setState(() {
        task_name6 =
            (snapshot.data() as Map<String, dynamic>)['task_name'] as String;
        task_description6 = (snapshot.data()
            as Map<String, dynamic>)['task_description'] as String;
      });
    }
  }

  void fetchTaskName7() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    DocumentSnapshot snapshot =
        await firestore.collection('task').doc('cmrts7').get();

    if (snapshot.exists) {
      setState(() {
        task_name7 =
            (snapshot.data() as Map<String, dynamic>)['task_name'] as String;
        task_description7 = (snapshot.data()
            as Map<String, dynamic>)['task_description'] as String;
      });
    }
  }

  void fetchTaskName8() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    DocumentSnapshot snapshot =
        await firestore.collection('task').doc('cmrts8').get();

    if (snapshot.exists) {
      setState(() {
        task_name8 =
            (snapshot.data() as Map<String, dynamic>)['task_name'] as String;
        task_description8 = (snapshot.data()
            as Map<String, dynamic>)['task_description'] as String;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Cumartesi Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            const Text(
              'Merhaba',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Cumartesi sayfası içeriği',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Zorunlu Görevler',
                    style: TextStyle(fontSize: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tamamlanan Görevler: $completedTaskCount', // Update the completed tasks count here
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        'Toplam Puan: $totalScore',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: _toggleBoxHeight1,
              child: AnimatedContainer(
                width: 300,
                height: _isExpanded1 ? 300 : 100,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF17A3A2),
                      Color(0xFF52C077),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if (_fileSelected1) {
                                  // Checkbox is currently selected, decrement completed task count
                                  completedTaskCount--;
                                } else {
                                  // Checkbox is currently unselected, increment completed task count
                                  completedTaskCount++;
                                }
                                _fileSelected1 = !_fileSelected1;
                              });
                            },
                            icon: Icon(
                              _fileSelected1
                                  ? Icons.check_circle
                                  : Icons.radio_button_unchecked,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          Expanded(
                            child: Text(
                              'Görev: $task_name',
                              style: const TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Icon(
                            _arrowIcon1,
                            size: 24,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      AnimatedSize(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                        child: _isExpanded1
                            ? Padding(
                                padding: const EdgeInsets.only(
                                  left: 16.0,
                                  right: 16.0,
                                  bottom: 16.0,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 8.0),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Görev Açıklama: $task_description',
                                            style: const TextStyle(
                                              fontSize: 13.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Görev Puan:',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            if (_fileSelected1)
                                              ElevatedButton(
                                                onPressed: () {
                                                  // Handle file submission logic
                                                },
                                                child: const Text(
                                                  'Dosya Gönder',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            if (!_fileSelected1)
                                              ElevatedButton(
                                                onPressed: _selectFile1,
                                                child: const Text(
                                                  'Dosya Seç',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    if (_fileSelected1)
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemCount:
                                              _selectedFiles1?.length ?? 0,
                                          itemBuilder: (context, index) {
                                            PlatformFile file =
                                                _selectedFiles1![index];
                                            return ListTile(
                                              title: Text(
                                                file.name,
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              trailing: IconButton(
                                                onPressed: () {
                                                  // Handle file removal logic
                                                },
                                                icon: const Icon(
                                                  Icons.remove_circle,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                  ],
                                ),
                              )
                            : const SizedBox.shrink(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: _toggleBoxHeight2,
              child: AnimatedContainer(
                width: 300,
                height: _isExpanded2 ? 300 : 100,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF17A3A2),
                      Color(0xFF52C077),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if (_fileSelected2) {
                                  // Checkbox is currently selected, decrement completed task count
                                  completedTaskCount--;
                                } else {
                                  // Checkbox is currently unselected, increment completed task count
                                  completedTaskCount++;
                                }
                                _fileSelected2 = !_fileSelected2;
                              });
                            },
                            icon: Icon(
                              _fileSelected2
                                  ? Icons.check_circle
                                  : Icons.radio_button_unchecked,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          Expanded(
                            child: Text(
                              'Görev: $task_name2',
                              style: const TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Icon(
                            _arrowIcon2,
                            size: 24,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      AnimatedSize(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                        child: _isExpanded2
                            ? Padding(
                                padding: const EdgeInsets.only(
                                  left: 16.0,
                                  right: 16.0,
                                  bottom: 16.0,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 8.0),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Görev Açıklama: $task_description2',
                                            style: const TextStyle(
                                              fontSize: 13.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Görev Puan:',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            if (_fileSelected2)
                                              ElevatedButton(
                                                onPressed: () {
                                                  // Handle file submission logic
                                                },
                                                child: const Text(
                                                  'Dosya Gönder',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            if (!_fileSelected2)
                                              ElevatedButton(
                                                onPressed: _selectFile2,
                                                child: const Text(
                                                  'Dosya Seç',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    if (_fileSelected2)
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemCount:
                                              _selectedFiles2?.length ?? 0,
                                          itemBuilder: (context, index) {
                                            PlatformFile file =
                                                _selectedFiles2![index];
                                            return ListTile(
                                              title: Text(
                                                file.name,
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              trailing: IconButton(
                                                onPressed: () {
                                                  // Handle file removal logic
                                                },
                                                icon: const Icon(
                                                  Icons.remove_circle,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                  ],
                                ),
                              )
                            : const SizedBox.shrink(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: _toggleBoxHeight3,
              child: AnimatedContainer(
                width: 300,
                height: _isExpanded3 ? 300 : 100,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF17A3A2),
                      Color(0xFF52C077),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if (_fileSelected3) {
                                  // Checkbox is currently selected, decrement completed task count
                                  completedTaskCount--;
                                } else {
                                  // Checkbox is currently unselected, increment completed task count
                                  completedTaskCount++;
                                }
                                _fileSelected3 = !_fileSelected3;
                              });
                            },
                            icon: Icon(
                              _fileSelected3
                                  ? Icons.check_circle
                                  : Icons.radio_button_unchecked,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          Expanded(
                            child: Text(
                              'Görev: $task_name3',
                              style: const TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Icon(
                            _arrowIcon3,
                            size: 24,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      AnimatedSize(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                        child: _isExpanded3
                            ? Padding(
                                padding: const EdgeInsets.only(
                                  left: 16.0,
                                  right: 16.0,
                                  bottom: 16.0,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 8.0),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Görev Açıklama: $task_description3',
                                            style: const TextStyle(
                                              fontSize: 13.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Görev Puan:',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            if (_fileSelected3)
                                              ElevatedButton(
                                                onPressed: () {
                                                  // Handle file submission logic
                                                },
                                                child: const Text(
                                                  'Dosya Gönder',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            if (!_fileSelected3)
                                              ElevatedButton(
                                                onPressed: _selectFile3,
                                                child: const Text(
                                                  'Dosya Seç',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    if (_fileSelected3)
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemCount:
                                              _selectedFiles3?.length ?? 0,
                                          itemBuilder: (context, index) {
                                            PlatformFile file =
                                                _selectedFiles3![index];
                                            return ListTile(
                                              title: Text(
                                                file.name,
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              trailing: IconButton(
                                                onPressed: () {
                                                  // Handle file removal logic
                                                },
                                                icon: const Icon(
                                                  Icons.remove_circle,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                  ],
                                ),
                              )
                            : const SizedBox.shrink(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: _toggleBoxHeight4,
              child: AnimatedContainer(
                width: 300,
                height: _isExpanded4 ? 300 : 100,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF17A3A2),
                      Color(0xFF52C077),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if (_fileSelected4) {
                                  // Checkbox is currently selected, decrement completed task count
                                  completedTaskCount--;
                                } else {
                                  // Checkbox is currently unselected, increment completed task count
                                  completedTaskCount++;
                                }
                                _fileSelected4 = !_fileSelected4;
                              });
                            },
                            icon: Icon(
                              _fileSelected4
                                  ? Icons.check_circle
                                  : Icons.radio_button_unchecked,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          Expanded(
                            child: Text(
                              'Görev: $task_name4',
                              style: const TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Icon(
                            _arrowIcon4,
                            size: 24,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      AnimatedSize(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                        child: _isExpanded4
                            ? Padding(
                                padding: const EdgeInsets.only(
                                  left: 16.0,
                                  right: 16.0,
                                  bottom: 16.0,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 8.0),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Görev Açıklama: $task_description4',
                                            style: const TextStyle(
                                              fontSize: 13.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Görev Puan:',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            if (_fileSelected4)
                                              ElevatedButton(
                                                onPressed: () {
                                                  // Handle file submission logic
                                                },
                                                child: const Text(
                                                  'Dosya Gönder',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            if (!_fileSelected4)
                                              ElevatedButton(
                                                onPressed: _selectFile4,
                                                child: const Text(
                                                  'Dosya Seç',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    if (_fileSelected4)
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemCount:
                                              _selectedFiles4?.length ?? 0,
                                          itemBuilder: (context, index) {
                                            PlatformFile file =
                                                _selectedFiles4![index];
                                            return ListTile(
                                              title: Text(
                                                file.name,
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              trailing: IconButton(
                                                onPressed: () {
                                                  // Handle file removal logic
                                                },
                                                icon: const Icon(
                                                  Icons.remove_circle,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                  ],
                                ),
                              )
                            : const SizedBox.shrink(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: _toggleBoxHeight5,
              child: AnimatedContainer(
                width: 300,
                height: _isExpanded5 ? 300 : 100,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF17A3A2),
                      Color(0xFF52C077),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if (_fileSelected5) {
                                  // Checkbox is currently selected, decrement completed task count
                                  completedTaskCount--;
                                } else {
                                  // Checkbox is currently unselected, increment completed task count
                                  completedTaskCount++;
                                }
                                _fileSelected5 = !_fileSelected5;
                              });
                            },
                            icon: Icon(
                              _fileSelected5
                                  ? Icons.check_circle
                                  : Icons.radio_button_unchecked,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          Expanded(
                            child: Text(
                              'Görev: $task_name5',
                              style: const TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Icon(
                            _arrowIcon5,
                            size: 24,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      AnimatedSize(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                        child: _isExpanded5
                            ? Padding(
                                padding: const EdgeInsets.only(
                                  left: 16.0,
                                  right: 16.0,
                                  bottom: 16.0,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 8.0),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Görev Açıklama: $task_description5',
                                            style: const TextStyle(
                                              fontSize: 13.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Görev Puan:',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            if (_fileSelected5)
                                              ElevatedButton(
                                                onPressed: () {
                                                  // Handle file submission logic
                                                },
                                                child: const Text(
                                                  'Dosya Gönder',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            if (!_fileSelected5)
                                              ElevatedButton(
                                                onPressed: _selectFile5,
                                                child: const Text(
                                                  'Dosya Seç',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    if (_fileSelected5)
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemCount:
                                              _selectedFiles5?.length ?? 0,
                                          itemBuilder: (context, index) {
                                            PlatformFile file =
                                                _selectedFiles5![index];
                                            return ListTile(
                                              title: Text(
                                                file.name,
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              trailing: IconButton(
                                                onPressed: () {
                                                  // Handle file removal logic
                                                },
                                                icon: const Icon(
                                                  Icons.remove_circle,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                  ],
                                ),
                              )
                            : const SizedBox.shrink(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ek Görevler',
                    style: TextStyle(fontSize: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tamamlanan Görevler: $completedTaskCount2', // Update the completed tasks count here
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        'Toplam Puan: $totalScore2',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: _toggleBoxHeight6,
              child: AnimatedContainer(
                width: 300,
                height: _isExpanded6 ? 300 : 100,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF17A3A2),
                      Color(0xFF52C077),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if (_fileSelected6) {
                                  // Checkbox is currently selected, decrement completed task count
                                  completedTaskCount2--;
                                } else {
                                  // Checkbox is currently unselected, increment completed task count
                                  completedTaskCount2++;
                                }
                                _fileSelected6 = !_fileSelected6;
                              });
                            },
                            icon: Icon(
                              _fileSelected6
                                  ? Icons.check_circle
                                  : Icons.radio_button_unchecked,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          Expanded(
                            child: Text(
                              'Görev: $task_name6',
                              style: const TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Icon(
                            _arrowIcon6,
                            size: 24,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      AnimatedSize(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                        child: _isExpanded6
                            ? Padding(
                                padding: const EdgeInsets.only(
                                  left: 16.0,
                                  right: 16.0,
                                  bottom: 16.0,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 8.0),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Görev Açıklama: $task_description6',
                                            style: const TextStyle(
                                              fontSize: 13.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Görev Puan:',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            if (_fileSelected6)
                                              ElevatedButton(
                                                onPressed: () {
                                                  // Handle file submission logic
                                                },
                                                child: const Text(
                                                  'Dosya Gönder',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            if (!_fileSelected6)
                                              ElevatedButton(
                                                onPressed: _selectFile6,
                                                child: const Text(
                                                  'Dosya Seç',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    if (_fileSelected6)
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemCount:
                                              _selectedFiles6?.length ?? 0,
                                          itemBuilder: (context, index) {
                                            PlatformFile file =
                                                _selectedFiles6![index];
                                            return ListTile(
                                              title: Text(
                                                file.name,
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              trailing: IconButton(
                                                onPressed: () {
                                                  // Handle file removal logic
                                                },
                                                icon: const Icon(
                                                  Icons.remove_circle,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                  ],
                                ),
                              )
                            : const SizedBox.shrink(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: _toggleBoxHeight7,
              child: AnimatedContainer(
                width: 300,
                height: _isExpanded7 ? 300 : 100,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF17A3A2),
                      Color(0xFF52C077),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if (_fileSelected7) {
                                  // Checkbox is currently selected, decrement completed task count
                                  completedTaskCount2--;
                                } else {
                                  // Checkbox is currently unselected, increment completed task count
                                  completedTaskCount2++;
                                }
                                _fileSelected7 = !_fileSelected7;
                              });
                            },
                            icon: Icon(
                              _fileSelected7
                                  ? Icons.check_circle
                                  : Icons.radio_button_unchecked,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          Expanded(
                            child: Text(
                              'Görev: $task_name7',
                              style: const TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Icon(
                            _arrowIcon7,
                            size: 24,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      AnimatedSize(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                        child: _isExpanded7
                            ? Padding(
                                padding: const EdgeInsets.only(
                                  left: 16.0,
                                  right: 16.0,
                                  bottom: 16.0,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 8.0),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Görev Açıklama: $task_description7',
                                            style: const TextStyle(
                                              fontSize: 13.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Görev Puan:',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            if (_fileSelected7)
                                              ElevatedButton(
                                                onPressed: () {
                                                  // Handle file submission logic
                                                },
                                                child: const Text(
                                                  'Dosya Gönder',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            if (!_fileSelected7)
                                              ElevatedButton(
                                                onPressed: _selectFile7,
                                                child: const Text(
                                                  'Dosya Seç',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    if (_fileSelected7)
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemCount:
                                              _selectedFiles7?.length ?? 0,
                                          itemBuilder: (context, index) {
                                            PlatformFile file =
                                                _selectedFiles7![index];
                                            return ListTile(
                                              title: Text(
                                                file.name,
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              trailing: IconButton(
                                                onPressed: () {
                                                  // Handle file removal logic
                                                },
                                                icon: const Icon(
                                                  Icons.remove_circle,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                  ],
                                ),
                              )
                            : const SizedBox.shrink(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: _toggleBoxHeight8,
              child: AnimatedContainer(
                width: 300,
                height: _isExpanded8 ? 300 : 100,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF17A3A2),
                      Color(0xFF52C077),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if (_fileSelected8) {
                                  // Checkbox is currently selected, decrement completed task count
                                  completedTaskCount2--;
                                } else {
                                  // Checkbox is currently unselected, increment completed task count
                                  completedTaskCount2++;
                                }
                                _fileSelected8 = !_fileSelected8;
                              });
                            },
                            icon: Icon(
                              _fileSelected8
                                  ? Icons.check_circle
                                  : Icons.radio_button_unchecked,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          Expanded(
                            child: Text(
                              'Görev: $task_name8',
                              style: const TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Icon(
                            _arrowIcon8,
                            size: 24,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      AnimatedSize(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                        child: _isExpanded8
                            ? Padding(
                                padding: const EdgeInsets.only(
                                  left: 16.0,
                                  right: 16.0,
                                  bottom: 16.0,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 8.0),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Görev Açıklama: $task_description8',
                                            style: const TextStyle(
                                              fontSize: 13.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Görev Puan:',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            if (_fileSelected8)
                                              ElevatedButton(
                                                onPressed: () {
                                                  // Handle file submission logic
                                                },
                                                child: const Text(
                                                  'Dosya Gönder',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            if (!_fileSelected8)
                                              ElevatedButton(
                                                onPressed: _selectFile8,
                                                child: const Text(
                                                  'Dosya Seç',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    if (_fileSelected8)
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemCount:
                                              _selectedFiles8?.length ?? 0,
                                          itemBuilder: (context, index) {
                                            PlatformFile file =
                                                _selectedFiles8![index];
                                            return ListTile(
                                              title: Text(
                                                file.name,
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              trailing: IconButton(
                                                onPressed: () {
                                                  // Handle file removal logic
                                                },
                                                icon: const Icon(
                                                  Icons.remove_circle,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                  ],
                                ),
                              )
                            : const SizedBox.shrink(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
