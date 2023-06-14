import Debug "mo:base/Debug";  
import Time "mo:base/Time";
import Float "mo:base/Float";
import Stack "mo:base/Stack";

actor DBank{
    stable var currentValue: Float = 300;
    // adding stable variable is now orthogonally persisted variable
    // currentValue := 300;

    stable var startTime = Time.now();
    // startTime := Time.now();
    
    let id = 32342932; // Same as const

    public func compound(){
        let currTime = Time.now();
        let timeElapsedNS = currTime - startTime;
        let timeElapsedS = timeElapsedNS/1000000000;
        
        currentValue := currentValue * (1.01 ** Float.fromInt(timeElapsedS));
        startTime := currTime;
    };

    // Nat => natural number
    public func topUp(amount: Float){
        currentValue += amount;
        Debug.print(debug_show(currentValue));
    };


    public func withdraw(amount: Float){
        let tempValue: Float = currentValue - amount;
        if(tempValue >= 0){
            currentValue -= amount;
            Debug.print(debug_show(currentValue));
        }
        else{
            Debug.print("Amount too large, Withdraw amount is greater than currentValue");
        }
    };

    public query func checkBalance(): async Float{
        return currentValue;
    };
}