void main() {}

abstract class Storage {
  void saveStorage() {
    print('Save Storage');
  }

  void retrieveStorage() {
    print('Retrieve Storage');
  }
}

class LocalStorage extends Storage {}

class CloudStorage extends Storage {}

class Rectangle {
  int? _width;
  int? _height;
  set width(int width) {
    if (width <= 0) {
      print('not valid');
    }
    _width = width;
  }

  set height(int height) {
    if (height <= 0) {
      print('not valid');
    }
    _height = height;
  }

  set area(int area) {
    area = area;
  }

  int get width {
    return _width!;
  }

  int get height {
    return _height!;
  }

  int get area {
    return area = (width + height) * 2;
  }
}
