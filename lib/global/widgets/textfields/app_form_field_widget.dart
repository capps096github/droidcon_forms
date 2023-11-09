import '../../../droidcon_exporter.dart';

class AppFormFieldWidget extends ConsumerWidget {
  const AppFormFieldWidget(
      {required this.formField, this.hasFullRadius = false, super.key});

// form field
  final AppFormField formField;

  // has full radius
  final bool hasFullRadius;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //
    return Padding(
      padding: verticalPadding16,
      child: formFieldWidget(formField, hasFullRadius),
    );
  }

  Widget formFieldWidget(AppFormField formField, bool hasFullRadius) {
    switch (formField.fieldType) {
      case FieldType.date:
        return DateFormField(formField: formField);
      case FieldType.dropdown:
        return DropdownFormField(formField: formField);
      default:
        return AppTextFormField(formField: formField);
    }
  }
}
