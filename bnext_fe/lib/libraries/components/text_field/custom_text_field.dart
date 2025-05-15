import 'package:bnext_fe/core/presentation/constants/sizes.dart';
import 'package:bnext_fe/core/presentation/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';

import '../../../config/config.dart';
import '../../../core/core.dart';


class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    this.textController,
    this.hint,
    this.label,
    this.isBoldLabel = false,
    this.isRequiredLabel = false,
    this.information,
    this.initialValue,
    this.isEnabled = true,
    this.isReadOnly = false,
    this.maxLength,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.suffixIcon,
    this.iconColor = AppColors.primaryMain,
    this.isPassword = false,
    this.isPhoneNumber = false,
    this.keyboardType,
    this.textInputAction,
    this.onTap,
    this.onChanged,
    this.onFieldSubmitted,
    this.onEditingComplete,
    this.focusNode,
    this.validator,
    this.inputFormatters,
    this.fillColor,
    this.isHasError,
  });

  final TextEditingController? textController;
  final String? hint;
  final String? label;
  final bool? isBoldLabel;
  final bool? isRequiredLabel;
  final String? information;
  final String? initialValue;
  final bool isEnabled;
  final bool isReadOnly;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final bool expands;
  final Widget? suffixIcon;
  final Color? iconColor;
  final Color? fillColor;
  final bool isPassword;
  final bool isPhoneNumber;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final GestureTapCallback? onTap;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final ValueChanged<bool>? isHasError;
  final VoidCallback? onEditingComplete;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  String? _error;
  bool _isObscureText = false;

  late TextEditingController _defaultController;

  @override
  void initState() {
    _isObscureText = widget.isPassword;

    if (widget.textController == null) {
      _defaultController = TextEditingController();
    }

    super.initState();
  }

  @override
  void dispose() {
    if (widget.textController == null) {
      _defaultController.dispose();
    }
    super.dispose();
  }

  bool get _isHasError =>
      widget.validator?.call(
        (widget.textController ?? _defaultController).text,
      ) !=
      null;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.label != null) ..._label(context),
            TextFormField(
              enabled: widget.isEnabled,
              readOnly: widget.isReadOnly,
              controller: widget.textController ?? _defaultController,
              focusNode: widget.focusNode,
              maxLines: widget.maxLines,
              minLines: widget.minLines,
              expands: widget.expands,
              style: context.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
              initialValue: widget.initialValue,
              decoration: InputDecoration(
                filled: true,
                focusColor: AppColors.inputBorder,
                hoverColor: AppColors.inputBorder,
                fillColor: AppColors.inputBorder,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(widget.maxLines != null ? 20:40),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(widget.maxLines != null ? 20:40),
                  borderSide: const BorderSide(color: AppColors.primaryMain),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(widget.maxLines != null ? 20:40),
                  borderSide: BorderSide.none,
                ),
                hintText: widget.hint,
                errorText: _error,
                prefixIconConstraints: const BoxConstraints(
                    minWidth: 30, minHeight: 0, maxWidth: 60, maxHeight: 30),
                prefixIcon: widget.isPhoneNumber
                    ? Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '+62 ',
                                style: context.bodyMedium?.semiBold,
                              ),
                              TextSpan(
                                text: '|  ',
                                style: context.bodyMedium
                                    ?.toColor(
                                      AppColors.grey,
                                    )
                                    .toSize(16),
                              ),
                            ],
                          ),
                        ),
                      )
                    : null,
                suffixIcon: widget.isPassword
                    ? GestureDetector(
                        onTap: () {
                          setState(() {
                            _isObscureText = !_isObscureText;
                          });
                        },
                        child: Icon(
                          _isObscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: widget.iconColor,
                          size: 16,
                        ),
                      )
                    : widget.suffixIcon != null
                        ? SizedBox(
                            height: 16,
                            width: 16,
                            child: Center(
                              child: widget.suffixIcon,
                            ),
                          )
                        : null,
              ),
              textInputAction: widget.textInputAction ?? TextInputAction.next,
              onTap: widget.onTap,
              onChanged: widget.onChanged,
              onFieldSubmitted: widget.onFieldSubmitted,
              onEditingComplete: _isHasError ? () {} : widget.onEditingComplete,
              obscureText: _isObscureText,
              keyboardType: widget.isPhoneNumber
                  ? TextInputType.phone
                  : widget.keyboardType,
              validator: (value) {
                // Note : https://pub.dev/packages/form_validator (documentations)
                _error = widget.validator?.call(value);

                if (_error != null && _error.defaultValue.isNotEmpty) {
                  widget.isHasError?.call(true);
                } else {
                  widget.isHasError?.call(false);
                }

                WidgetsBinding.instance.addPostFrameCallback((_) {
                  setState(() {});
                });

                return _error;
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              inputFormatters: [
                LengthLimitingTextInputFormatter(widget.maxLength),
                ...?widget.inputFormatters,
              ],
            ),
            if (_error != null || widget.information != null)
              ..._information(context),
          ],
        );
      },
    );
  }

  List<Widget> _label(BuildContext context) {
    return [
      if (widget.isRequiredLabel == true) ...[
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: widget.label!,
                style: context.bodyMedium?.semiBold,
              ),
              TextSpan(
                text: ' *',
                style: context.bodyMedium?.toColor(
                  AppColors.primaryMain,
                ),
              ),
            ],
          ),
        ),
      ] else
        Text(
          widget.label!,
          style: widget.isBoldLabel == true || widget.isRequiredLabel == true
              ? context.bodyMedium?.semiBold
              : context.bodyMedium,
        ),
      const Gap(Sizes.p8),
    ];
  }

  List<Widget> _information(BuildContext context) {
    return [
      if (_error == null) const Gap(Sizes.p8),
      Text(
        _error ?? widget.information ?? '',
        style: context.labelSmall?.semiBold.toSize(10).toColor(
              _error != null ? AppColors.dangerMain : AppColors.neutral80,
            ),
      ),
    ];
  }
}