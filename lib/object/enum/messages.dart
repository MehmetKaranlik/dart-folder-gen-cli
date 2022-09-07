enum Messages {
  description(
    "To create a folder please input the name of the folder you want to create.",
  ),

  descriptionSecondary(
    "Please give non-relative folder direction. Note that folder will be created in that path as child folders",
  );

  final String message;
  const Messages(this.message);
}
