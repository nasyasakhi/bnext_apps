import 'package:bnext_fe/core/presentation/constants/sizes.dart';
import 'package:bnext_fe/core/presentation/extension/extension.dart';
import 'package:flutter/material.dart';

import '../../../../../config/config.dart';

class OtpNumpadWidget extends StatefulWidget {
  final TextEditingController controller;

  const OtpNumpadWidget({super.key, required this.controller});

  @override
  State<OtpNumpadWidget> createState() => _OtpNumpadWidgetState();
}

class _OtpNumpadWidgetState extends State<OtpNumpadWidget> {
  String _numValue = '';

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_handleValueChange);
  }

  @override
  void dispose() {
    super.dispose();
    widget.controller.removeListener(_handleValueChange);
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 1.8,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 3,
      mainAxisSpacing: Sizes.p20,
      crossAxisSpacing: Sizes.p40,
      children: [
        _buildButton('1'),
        _buildButton('2'),
        _buildButton('3'),
        _buildButton('4'),
        _buildButton('5'),
        _buildButton('6'),
        _buildButton('7'),
        _buildButton('8'),
        _buildButton('9'),
        const SizedBox(),
        _buildButton('0'),
        _buildButton('⌫', isDelete: true, isNum: false),
      ],
    );
  }

  Widget _buildButton(
    String label, {
    bool isDelete = false,
    bool isNum = true,
  }) {
    return Container(
      width: 110,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.transparent,
          border: Border.all(color: AppColors.white)),
      child: TextButton(
        child: isDelete
            ? const Icon(
                Icons.backspace_outlined,
                color: AppColors.white,
                size: 20,
              )
            : Text(
                label,
                style: context.bodyLarge?.medium.toColor(AppColors.white),
              ),
        onPressed: () {
          final isNum = RegExp(r'^[0-9]$').hasMatch(label);

          if (isDelete && _numValue.isNotEmpty) {
            _numValue = _numValue.substring(0, _numValue.length - 1);
          } else if (isNum) {
            _numValue += label;
          }
          widget.controller.value = TextEditingValue(
            text: _numValue,
            selection: TextSelection.collapsed(offset: _numValue.length),
          );
        },
      ),
    );
  }

  void _handleValueChange() {
    if (widget.controller.value.text != _numValue) {
      _numValue = widget.controller.value.text;
      setState(() {});
    }
  }
}

class OtpNumPadController extends ValueNotifier<String> {
  OtpNumPadController() : super('');

  bool isEnable = false;

  void enable() {
    isEnable = true;
  }

  void disable() {
    isEnable = false;
  }

  void reset() {
    value = '';
    notifyListeners();
  }
}