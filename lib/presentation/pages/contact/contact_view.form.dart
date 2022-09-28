// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs,  constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/presentation/common/validators/form_validators.dart';
import 'package:stacked/stacked.dart';

const String NameValueKey = 'name';
const String EmailValueKey = 'email';
const String ServiceValueKey = 'service';
const String MessageValueKey = 'message';

final Map<String, String> ServiceValueToTitleMap = {
  'mobile': 'Crossplatform mobile app',
  'website': 'Responsive website',
};

final Map<String, TextEditingController> _ContactViewTextEditingControllers =
    {};

final Map<String, FocusNode> _ContactViewFocusNodes = {};

final Map<String, String? Function(String?)?> _ContactViewTextValidations = {
  NameValueKey: FormValidators.nameValidator,
  EmailValueKey: FormValidators.emailValidator,
  MessageValueKey: FormValidators.messageValidator,
};

mixin $ContactView on StatelessWidget {
  TextEditingController get nameController =>
      _getFormTextEditingController(NameValueKey);
  TextEditingController get emailController =>
      _getFormTextEditingController(EmailValueKey);
  TextEditingController get messageController =>
      _getFormTextEditingController(MessageValueKey);
  FocusNode get nameFocusNode => _getFormFocusNode(NameValueKey);
  FocusNode get emailFocusNode => _getFormFocusNode(EmailValueKey);
  FocusNode get messageFocusNode => _getFormFocusNode(MessageValueKey);

  TextEditingController _getFormTextEditingController(String key,
      {String? initialValue}) {
    if (_ContactViewTextEditingControllers.containsKey(key)) {
      return _ContactViewTextEditingControllers[key]!;
    }
    _ContactViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _ContactViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_ContactViewFocusNodes.containsKey(key)) {
      return _ContactViewFocusNodes[key]!;
    }
    _ContactViewFocusNodes[key] = FocusNode();
    return _ContactViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    nameController.addListener(() => _updateFormData(model));
    emailController.addListener(() => _updateFormData(model));
    messageController.addListener(() => _updateFormData(model));
  }

  final bool _autoTextFieldValidation = true;
  bool validateFormFields(FormViewModel model) {
    _updateFormData(model, forceValidate: true);
    return model.isFormValid;
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          NameValueKey: nameController.text,
          EmailValueKey: emailController.text,
          MessageValueKey: messageController.text,
        }),
    );
    if (_autoTextFieldValidation || forceValidate) {
      _updateValidationData(model);
    }
  }

  /// Updates the fieldsValidationMessages on the FormViewModel
  void _updateValidationData(FormViewModel model) =>
      model.setValidationMessages({
        NameValueKey: _getValidationMessage(NameValueKey),
        EmailValueKey: _getValidationMessage(EmailValueKey),
        MessageValueKey: _getValidationMessage(MessageValueKey),
      });

  /// Returns the validation message for the given key
  String? _getValidationMessage(String key) {
    final validatorForKey = _ContactViewTextValidations[key];
    if (validatorForKey == null) return null;
    String? validationMessageForKey =
        validatorForKey(_ContactViewTextEditingControllers[key]!.text);
    return validationMessageForKey;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _ContactViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _ContactViewFocusNodes.values) {
      focusNode.dispose();
    }

    _ContactViewTextEditingControllers.clear();
    _ContactViewFocusNodes.clear();
  }
}

extension ValueProperties on FormViewModel {
  bool get isFormValid =>
      this.fieldsValidationMessages.values.every((element) => element == null);
  String? get nameValue => this.formValueMap[NameValueKey] as String?;
  String? get emailValue => this.formValueMap[EmailValueKey] as String?;
  String? get serviceValue => this.formValueMap[ServiceValueKey] as String?;
  String? get messageValue => this.formValueMap[MessageValueKey] as String?;

  bool get hasName => this.formValueMap.containsKey(NameValueKey);
  bool get hasEmail => this.formValueMap.containsKey(EmailValueKey);
  bool get hasService => this.formValueMap.containsKey(ServiceValueKey);
  bool get hasMessage => this.formValueMap.containsKey(MessageValueKey);

  bool get hasNameValidationMessage =>
      this.fieldsValidationMessages[NameValueKey]?.isNotEmpty ?? false;
  bool get hasEmailValidationMessage =>
      this.fieldsValidationMessages[EmailValueKey]?.isNotEmpty ?? false;
  bool get hasServiceValidationMessage =>
      this.fieldsValidationMessages[ServiceValueKey]?.isNotEmpty ?? false;
  bool get hasMessageValidationMessage =>
      this.fieldsValidationMessages[MessageValueKey]?.isNotEmpty ?? false;

  String? get nameValidationMessage =>
      this.fieldsValidationMessages[NameValueKey];
  String? get emailValidationMessage =>
      this.fieldsValidationMessages[EmailValueKey];
  String? get serviceValidationMessage =>
      this.fieldsValidationMessages[ServiceValueKey];
  String? get messageValidationMessage =>
      this.fieldsValidationMessages[MessageValueKey];
}

extension Methods on FormViewModel {
  void setService(String service) {
    this.setData(this.formValueMap..addAll({ServiceValueKey: service}));
  }

  setNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[NameValueKey] = validationMessage;
  setEmailValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[EmailValueKey] = validationMessage;
  setServiceValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[ServiceValueKey] = validationMessage;
  setMessageValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[MessageValueKey] = validationMessage;
}
