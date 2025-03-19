// Tímaverkefni : búa til contact forrit

// þú átt að geta vistað contact semsagt símanúmer / nafn / email
// þú átt að geta breytt contact
// séð alla vistaða contacts

import 'dart:io';


void main(){
  bool isActive = true;
  while(isActive) {
    ContactManager contactManager = ContactManager();

    while (true) {
      print("\n1. Add Contact");
      print("\n2. View contacts");
      print("\n3. Delete contact");
      print("\n4. Exit");

      String input = stdin.readLineSync() ?? "";

      switch (input) {
        case "1":
          print("Enter a name:");
          String name = stdin.readLineSync() ?? "";
          print("Enter a phonenumber:");
          String number = stdin.readLineSync() ?? "";
          print("Enter a email:");
          String email = stdin.readLineSync() ?? "";
          Contact contactToAdd = Contact(
              name: name, number: number, email: email);
          contactManager.addContacts(contactToAdd);
          //Add
          break;
        case "2":
          contactManager.displayContacts();
          break;
        case "3":
          print("Enter the name of the contact you want to delete");
          String nameToDelete = stdin.readLineSync() ?? "";
          contactManager.deleteContactByName(nameToDelete);
          //delete
          break;
        case "exit":
          print("Exiting...");
          //break and return
          isActive = false;
        default:
          print("Invalid option, try again!");
      }
    }
  }
}

class Contact {
  String name;
  String number;
  String email;


  Contact({required this.name, required this.number, required this.email});

}

class ContactManager{
  List<Contact> allContacts = [];
  
  // Display all contacts

  void displayContacts(){
    if(allContacts.isEmpty){
      print("No contacts!");
      return;
    } 
    print("Contacts:");
    for(Contact contacts in allContacts){
      print("${contacts.name}.${contacts.number}.${contacts.email}");
    }
  }
  void addContacts(Contact contacts){
    allContacts.add(contacts);
  }
  void deleteContactByName(String name){
    Contact contactToRemove = allContacts.firstWhere((contact)=>
      contact.name.toLowerCase() == name.toLowerCase(),
      orElse: () => Contact(name:'',number:'', email:'')
    );

    if(contactToRemove != null){
      allContacts.remove(contactToRemove);
      print("Contact deleted!");
    }
}
  
}

