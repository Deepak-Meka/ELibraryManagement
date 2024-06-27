
function validateForm() {
    var alphaRegex = /^[A-Za-z]+$/;
    var intRegex = /^[0-9]+$/;
    var alphaNumRegex = /^[A-Za-z0-9]+$/;
    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

    var textBox1 = document.getElementById('<%= TextBox1.ClientID %>').value;
    var textBox6 = document.getElementById('<%= TextBox6.ClientID %>').value;
    var textBox3 = document.getElementById('<%= TextBox3.ClientID %>').value;
    var textBox5 = document.getElementById('<%= TextBox5.ClientID %>').value;
    var textbox8 = document.getElementById('<%= TextBox8.ClientID %>').value;
    var textbox9 = document.getElementById('<%= TextBox9.ClientID %>').value;
    var textBoxEmail = document.getElementById('<%= TextBox4.ClientID %>').value;

    if (textBox1 == "" || !alphaRegex.test(textBox1) || textBox6 == "" || !alphaRegex.test(textBox6)) {
        Fullname="Please enter only alphabetic characters in the alphabetic textbox.";
        return false;
    }

    if (textBox3 == "" || !intRegex.test(textBox3) || textBox5 == "" || !intRegex.test(textBox5)) {
        alert("Please enter only numeric characters in the integer textbox.");
        return false;
    }

    if (textbox8 == "" || !alphaNumRegex.test(textbox8) || textbox9 == "" || !alphaNumRegex.test(textbox9)) {
        alert("Please enter only alphanumeric characters in the alphanumeric textbox.");
        return false;
    }

    if (textBoxEmail == "" || !emailRegex.test(textBoxEmail)) {
        alert("Please enter a valid email address.");
        return false;
    }

    return true;
}
