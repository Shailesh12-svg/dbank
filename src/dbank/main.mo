import Debug "mo:base/Debug";
import Nat "mo:base/Nat";
import Int "mo:base/Int";

actor DBank {
  var currentValue = 300;
  currentValue := 100;

  let id = 3040340340; //constant
  //id:=10; :- id is immutable.
  //debug or inspect our code
  // Debug.print(debug_show (currentValue)); //print something that is text;

  //Challenge print down the id
  // Debug.print(debug_show (id));

  public func topUp(amount : Nat) {
    currentValue += amount;

    Debug.print(debug_show (currentValue));
  };

  public func withdraw(amount : Nat) {

    let tempValue : Int = currentValue - amount;
    if (tempValue >= 0) {
      currentValue -= amount;
      Debug.print("Hey the mentioned amount has been withdrawn and updated balance is :");

      //Updated Balance
      Debug.print(debug_show (currentValue));
    } else {
      Debug.print("The amount is too large ,current value is less than zero");
    };
  };

  //Query calls
  public query func checkBalance() : async Nat {
    return currentValue;
  };

};
