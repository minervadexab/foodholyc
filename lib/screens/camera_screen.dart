import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:permission_handler/permission_handler.dart';

class CameraScreen extends StatefulWidget {
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  CameraController? _cameraController;
  List<CameraDescription>? _cameras;
  bool _isCameraReady = false;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  void _initializeCamera() async {
    await _requestCameraPermission();
    try {
      _cameras = await availableCameras();
      
      if (_cameras!.isNotEmpty) {
        _cameraController = CameraController(
          _cameras![0], // Menggunakan kamera pertama (biasanya kamera belakang)
          ResolutionPreset.medium,
        );
        await _cameraController!.initialize();
        
        if (mounted) {
          setState(() {
            _isCameraReady = true;
          });
        }
      } else {
        print('No cameras available');
      }
    } catch (e) {
      print('Error initializing camera: $e');
    }
  }

  Future<void> _requestCameraPermission() async {
    final status = await Permission.camera.request();
    if (!status.isGranted) {
      print('Camera permission denied');
    }
  }

  @override
  void dispose() {
    super.dispose();
    _cameraController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Camera')),
      body: Center(
        child: _isCameraReady
            ? CameraPreview(_cameraController!)
            : CircularProgressIndicator(),
      ),
    );
  }
}
