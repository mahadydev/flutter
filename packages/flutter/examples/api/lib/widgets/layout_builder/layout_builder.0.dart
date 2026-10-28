// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

/// Flutter code sample for [LayoutBuilder].

void main() => runApp(const LayoutBuilderExampleApp());

const Color _red = Color(0xFFF44336);
const Color _yellow = Color(0xFFFFEB3B);

class LayoutBuilderExampleApp extends StatelessWidget {
  const LayoutBuilderExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetsApp(
      color: const Color(0xFFFFFFFF),
      builder: (BuildContext context, Widget? child) {
        return const LayoutBuilderExample();
      },
    );
  }
}

class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: const Color(0xFFFFFFFF),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return _buildWideContainers();
          } else {
            return _buildNormalContainer();
          }
        },
      ),
    );
  }

  Widget _buildNormalContainer() {
    return Center(child: Container(height: 100.0, width: 100.0, color: _red));
  }

  Widget _buildWideContainers() {
    return Center(
      child: Row(
        mainAxisAlignment: .spaceEvenly,
        children: <Widget>[
          Container(height: 100.0, width: 100.0, color: _red),
          Container(height: 100.0, width: 100.0, color: _yellow),
        ],
      ),
    );
  }
}
