import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:eco_shop/core/utils/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.apple).existsSync(), isTrue);
    expect(File(Images.bag).existsSync(), isTrue);
    expect(File(Images.chevronLeft).existsSync(), isTrue);
    expect(File(Images.curt).existsSync(), isTrue);
    expect(File(Images.fruit).existsSync(), isTrue);
    expect(File(Images.home).existsSync(), isTrue);
    expect(File(Images.icon1).existsSync(), isTrue);
    expect(File(Images.icon2).existsSync(), isTrue);
    expect(File(Images.icon3).existsSync(), isTrue);
    expect(File(Images.icon4).existsSync(), isTrue);
    expect(File(Images.leftArrow).existsSync(), isTrue);
    expect(File(Images.location).existsSync(), isTrue);
    expect(File(Images.rectangle).existsSync(), isTrue);
    expect(File(Images.search01).existsSync(), isTrue);
    expect(File(Images.search).existsSync(), isTrue);
    expect(File(Images.trash).existsSync(), isTrue);
  });
}
