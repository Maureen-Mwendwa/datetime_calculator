// Question: Given the current date and time, calculate and print the date and time 3 hours and 30 minutes from now in the format "yyyy-MM-dd HH:mm:ss".
void main() {
  // Get the current date and time
  DateTime now = DateTime.now();

  // Calculate the date and time 3 hours and 30 minutes from now
  DateTime futureDateTime = now.add(Duration(hours: 3, minutes: 30));

  // Format the future date and time
  String formattedFutureDateTime =
      '${futureDateTime.year}-${_addLeadingZero(futureDateTime.month)}-${_addLeadingZero(futureDateTime.day)} '
      '${_addLeadingZero(futureDateTime.hour)}:${_addLeadingZero(futureDateTime.minute)}:${_addLeadingZero(futureDateTime.second)}';

  // Print the formatted future date and time
  print(
      "Date and Time 3 hours and 30 minutes from now: $formattedFutureDateTime");
}

// Function to add leading zero to a number if needed
String _addLeadingZero(int value) {
  return value.toString().padLeft(2, '0');
}
