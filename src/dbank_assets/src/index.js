import { dbank } from "../../declarations/dbank"

window.addEventListener("load",async function(){
    // console.log("Finished Loading");
    update();    
});

document.querySelector("form").addEventListener("submit",async function(event){
    event.preventDefault();
    // console.log("Submitted");

    const button = document.getElementById("submit-btn");

    const inputAmount = parseFloat(document.getElementById("input-amount").value);
    const withdrawAmount = parseFloat(document.getElementById("withdraw-amount").value);

    button.setAttribute("disabled",true);

    if(document.getElementById("input-amount").value.length != 0){
        await dbank.topUp(inputAmount);
    }

    if(document.getElementById("withdraw-amount").value.length != 0){
        await dbank.withdraw(withdrawAmount);
    }

    await dbank.compound();
    update();
    
    document.getElementById("input-amount").value = "";
    document.getElementById("withdraw-amount").value = "";
    button.removeAttribute("disabled");
});

async function update(){
    const currentAmount = await dbank.checkBalance();
    document.getElementById("value").innerText = Math.round(currentAmount*100)/100;
}