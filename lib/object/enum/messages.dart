enum Messages {
  description(
    "To create a folder please input the name of the folder you want to create.",
  ),

  descriptionSecondary(
    "Please give folder directory. Note that folder & directories will be created in that path as child folders",
  ),

  nullError("directory cannot be null or empty");

  final String message;
  const Messages(this.message);
}
