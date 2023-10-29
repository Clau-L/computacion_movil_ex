import 'package:examen_cm/models/categories.dart';
import 'package:flutter/material.dart';


class SuppliersFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  ListadoCategoria category;
  SuppliersFormProvider(this.category);

  bool isValidForm() {
    return formKey.currentState?.validate() ?? false;
  }
}