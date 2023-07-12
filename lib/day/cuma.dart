// ignore_for_file: non_constant_identifier_names

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CumaPage extends StatefulWidget {
  const CumaPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CumaPageState createState() => _CumaPageState();
}

class _CumaPageState extends State<CumaPage> {
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

  String task_name1 = "5 Dakika Doğal Aydınlatma";
  String task_description1 = "Gün ışığından en iyi şekilde faydalanmak için bugün en az 5 dakika açık havada vakit geçirin. Bir yürüyüş yapabilir, bir parkta oturabilir veya bahçe işleriyle uğraşabilirsiniz. [Görsel: Açık havada yürüyüş yapan birisi]";
  String task_name2 = "Su Kahramanı";
  String task_description2 = "Su tüketimini azaltmak için bugün daha bilinçli bir şekilde su kullanın. Musluğu dişlerinizi fırçalarken kapalı tutun ve daha kısa süreli duş alın. Fotoğrafınızı paylaşın. [Görsel: Musluğu kapalı tutan birisi]";
  String task_name3 = "Dijital Dönüşüm";
  String task_description3 = "Faturalarınızı kağıt yerine dijital olarak almayı tercih edin ve gereksiz belge veya kağıt kullanımını azaltın. [Görsel: Bir bilgisayar ekranında dijital fatura]";
  String task_name4 = "Sürdürülebilir Moda";
  String task_description4 = "Sürdürülebilir moda markalarını tercih ederek etik ve çevre dostu giyim seçeneklerine yönelin. [Görsel: Sürdürülebilir moda ürünleri]";
  String task_name5 = "Doğa Temizliği";
  String task_description5 = "Bugün doğa temizliği yaparak çevrenizdeki atıkları toplayın ve doğaya katkıda bulunun. Çevre temizliği yaptığınız bir fotoğraf paylaşın. [Görsel: Çevre temizliği yapılan bir alan]";
  String task_name6 = "Geri Dönüşüm Kahramanı";
  String task_description6 = "Evde geri dönüştürülebilir atıkları doğru bir şekilde ayırmak için bugün geri dönüşüm kutularını kullanın. Bir fotoğraf çekin ve paylaşın. [Görsel: Geri dönüştürülebilir atıkların ayrıştırıldığı kutular]";
  String task_name7 = "Doğa Kampı";
  String task_description7 = "Bir hafta sonu doğa kampına çıkarak doğayla daha yakından bağlantı kurun. Kamp yaparken doğal kaynakları koruma ve atıkları düzgün bir şekilde imha etme konularında bilinçli olun. [Görsel: Kamp ateşi çevresinde oturan insanlar]";
  String task_name8 = "Elektronik Atıkları Geri Dönüştürme";
  String task_description8 = "Kullanılmayan elektronik eşyaları doğru bir şekilde geri dönüştürün. Elektronik atık toplama noktalarına teslim edebilirsiniz. [Görsel: Elektronik atık geri dönüşüm kutusu]";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF17A3A2), // #17A3A2 on the left
                Color(0xFF52C077), // #52C077 on the right
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.check),
                SizedBox(width: 5),
                Text(
                  'Tamamlanan: 5',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.view_day),
                SizedBox(width: 5),
                Text(
                  'Kalan: 2',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.stars),
                SizedBox(width: 5),
                Text('8'),
              ],
            ),
          ],
        ),
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
              'Cuma sayfası içeriği',
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
            GestureDetector(
              onTap: _toggleBoxHeight1,
              child: Container(
                width: 300,
                height: 80,
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
                              'Görev 1',
                              style: TextStyle(
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
                    if (_isExpanded1)
                      Padding(
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: _selectedFiles1?.length ?? 0,
                                  itemBuilder: (context, index) {
                                    PlatformFile file = _selectedFiles1![index];
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
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
// Görev 2
            GestureDetector(
              onTap: _toggleBoxHeight2,
              child: Container(
                width: 300,
                height: 80,
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
                              'Görev 2',
                              style: TextStyle(
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
                    if (_isExpanded2)
                      Padding(
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: _selectedFiles2?.length ?? 0,
                                  itemBuilder: (context, index) {
                                    PlatformFile file = _selectedFiles2![index];
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
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
// Görev 3
            GestureDetector(
              onTap: _toggleBoxHeight3,
              child: Container(
                width: 300,
                height: 80,
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
                    if (_isExpanded3)
                      Padding(
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: _selectedFiles3?.length ?? 0,
                                  itemBuilder: (context, index) {
                                    PlatformFile file = _selectedFiles3![index];
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
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
// Görev 4
            GestureDetector(
              onTap: _toggleBoxHeight4,
              child: Container(
                width: 300,
                height: 80,
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
                    if (_isExpanded4)
                      Padding(
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: _selectedFiles4?.length ?? 0,
                                  itemBuilder: (context, index) {
                                    PlatformFile file = _selectedFiles4![index];
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
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
// Görev 5
            GestureDetector(
              onTap: _toggleBoxHeight5,
              child: Container(
                width: 300,
                height: 80,
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
                    if (_isExpanded5)
                      Padding(
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: _selectedFiles5?.length ?? 0,
                                  itemBuilder: (context, index) {
                                    PlatformFile file = _selectedFiles5![index];
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
// Görev 6
            GestureDetector(
              onTap: _toggleBoxHeight6,
              child: Container(
                width: 300,
                height: 80,
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
                    if (_isExpanded6)
                      Padding(
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: _selectedFiles6?.length ?? 0,
                                  itemBuilder: (context, index) {
                                    PlatformFile file = _selectedFiles6![index];
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
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
// Görev 7
            GestureDetector(
              onTap: _toggleBoxHeight7,
              child: Container(
                width: 300,
                height: 80,
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
                    if (_isExpanded7)
                      Padding(
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: _selectedFiles7?.length ?? 0,
                                  itemBuilder: (context, index) {
                                    PlatformFile file = _selectedFiles7![index];
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
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
// Görev 8
            GestureDetector(
              onTap: _toggleBoxHeight8,
              child: Container(
                width: 300,
                height: 80,
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
                    if (_isExpanded8)
                      Padding(
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: _selectedFiles8?.length ?? 0,
                                  itemBuilder: (context, index) {
                                    PlatformFile file = _selectedFiles8![index];
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

class FilePickerDemo extends StatelessWidget {
  const FilePickerDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('File Picker Demo'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            FilePickerResult? result = await FilePicker.platform.pickFiles();

            if (result != null) {
              List<PlatformFile> files = result.files;
              for (PlatformFile file in files) {
                if (kDebugMode) {
                  print(file.name);
                }
              }
            } else {
              // User canceled the picker
            }
          },
          child: const Text('Open File Picker'),
        ),
      ),
    );
  }
}
