import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class PazartesiPage extends StatefulWidget {
  const PazartesiPage({Key? key}) : super(key: key);

  @override
  _PazartesiPageState createState() => _PazartesiPageState();
}

class _PazartesiPageState extends State<PazartesiPage>
    with SingleTickerProviderStateMixin {
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
        _fileSelected1 = true;
        _selectedFiles1 = result.files;
      });
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
      });
    }
  }

  String task_name = "";
  String task_description = "";
  String task_name2 = "";
  String task_description2 = "";
  @override
  void initState() {
    super.initState();
    fetchTaskName();
    fetchTaskName2();
  }

  void fetchTaskName() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    DocumentSnapshot snapshot =
        await firestore.collection('tasks').doc('jepjTw2bzLdkBtzL0NdR').get();

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
        await firestore.collection('tasks').doc('iPzgGFy0CEJgi7kLQK1T').get();

    if (snapshot.exists) {
      setState(() {
        task_name2 =
            (snapshot.data() as Map<String, dynamic>)['task_name'] as String;
        task_description2 = (snapshot.data()
            as Map<String, dynamic>)['task_description'] as String;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Pazartesi Page'),
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
              'Salı sayfası içeriği',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            const Padding(
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
                        'Tamamlanan Görevler: 3',
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        'Toplam Puan: 10',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: _toggleBoxHeight1,
              child: AnimatedContainer(
                width: 300,
                height: _isExpanded1 ? 270 : 80,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: null,
                            checkColor: Colors.white,
                            fillColor: MaterialStateProperty.all(Colors.white),
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
                                            fontSize: 16.0,
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
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemCount: _selectedFiles1?.length ?? 0,
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
            const SizedBox(height: 10),
            InkWell(
              onTap: _toggleBoxHeight2,
              child: AnimatedContainer(
                width: 300,
                height: _isExpanded2 ? 270 : 80,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: null,
                            checkColor: Colors.white,
                            fillColor: MaterialStateProperty.all(Colors.white),
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
                                            fontSize: 16.0,
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
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemCount: _selectedFiles2?.length ?? 0,
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
            const SizedBox(height: 10),
            InkWell(
              onTap: _toggleBoxHeight3,
              child: AnimatedContainer(
                width: 300,
                height: _isExpanded3 ? 270 : 80,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: null,
                            checkColor: Colors.white,
                            fillColor: MaterialStateProperty.all(Colors.white),
                          ),
                          const SizedBox(width: 8.0),
                          const Expanded(
                            child: Text(
                              'Görev 3',
                              style: TextStyle(
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
                                  const Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Görev Açıklama',
                                          style: TextStyle(
                                            fontSize: 16.0,
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
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemCount: _selectedFiles3?.length ?? 0,
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
            const SizedBox(height: 10),
            InkWell(
              onTap: _toggleBoxHeight4,
              child: AnimatedContainer(
                width: 300,
                height: _isExpanded4 ? 270 : 80,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: null,
                            checkColor: Colors.white,
                            fillColor: MaterialStateProperty.all(Colors.white),
                          ),
                          const SizedBox(width: 8.0),
                          const Expanded(
                            child: Text(
                              'Görev 4',
                              style: TextStyle(
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
                                  const Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Görev Açıklama',
                                          style: TextStyle(
                                            fontSize: 16.0,
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
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemCount: _selectedFiles4?.length ?? 0,
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
            const SizedBox(height: 10),
            InkWell(
              onTap: _toggleBoxHeight5,
              child: AnimatedContainer(
                width: 300,
                height: _isExpanded5 ? 270 : 80,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: null,
                            checkColor: Colors.white,
                            fillColor: MaterialStateProperty.all(Colors.white),
                          ),
                          const SizedBox(width: 8.0),
                          const Expanded(
                            child: Text(
                              'Görev 5',
                              style: TextStyle(
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
                                  const Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Görev Açıklama',
                                          style: TextStyle(
                                            fontSize: 16.0,
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
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemCount: _selectedFiles5?.length ?? 0,
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
            const SizedBox(height: 10),
            const Padding(
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
                        'Tamamlanan Görevler: 3',
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        'Toplam Puan: 10',
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
                height: _isExpanded6 ? 270 : 80,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: null,
                            checkColor: Colors.white,
                            fillColor: MaterialStateProperty.all(Colors.white),
                          ),
                          const SizedBox(width: 8.0),
                          const Expanded(
                            child: Text(
                              'Görev 6',
                              style: TextStyle(
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
                                  const Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Görev Açıklama',
                                          style: TextStyle(
                                            fontSize: 16.0,
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
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemCount: _selectedFiles6?.length ?? 0,
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
            const SizedBox(height: 10),
            InkWell(
              onTap: _toggleBoxHeight7,
              child: AnimatedContainer(
                width: 300,
                height: _isExpanded7 ? 270 : 80,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: null,
                            checkColor: Colors.white,
                            fillColor: MaterialStateProperty.all(Colors.white),
                          ),
                          const SizedBox(width: 8.0),
                          const Expanded(
                            child: Text(
                              'Görev 7',
                              style: TextStyle(
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
                                  const Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Görev Açıklama',
                                          style: TextStyle(
                                            fontSize: 16.0,
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
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemCount: _selectedFiles7?.length ?? 0,
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
            const SizedBox(height: 10),
            InkWell(
              onTap: _toggleBoxHeight8,
              child: AnimatedContainer(
                width: 300,
                height: _isExpanded8 ? 270 : 80,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: null,
                            checkColor: Colors.white,
                            fillColor: MaterialStateProperty.all(Colors.white),
                          ),
                          const SizedBox(width: 8.0),
                          const Expanded(
                            child: Text(
                              'Görev 8',
                              style: TextStyle(
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
                                  const Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Görev Açıklama',
                                          style: TextStyle(
                                            fontSize: 16.0,
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
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemCount: _selectedFiles8?.length ?? 0,
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
          ],
        ),
      ),
    );
  }
}
