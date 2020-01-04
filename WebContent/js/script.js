function truyumValidation() {
    var title = document.forms["validation"]["title"].value;
    if (title == "") {
        alert("Title is required.");
        return false;
    } else if (title.length < 2 || title.length > 65) {
        alert("Title should have 2 to 65 characters.");
        return false;
    } else {
    }

    var price = document.forms["validation"]["price"].value;
    if (price == "") {
        alert("Price is required.");
        return false;
    } else if (isNaN(price)) {
        alert("Price has to be number.");
        return false;
    } else {
    }

    var dateOfLaunch = document.forms["validation"]["dateOfLaunch"].value;
    if (dateOfLaunch == "") {
        alert("Date of Launch is Requried");
        return false;
    } else {
    }

    var category = document.forms["validation"]["category"].value;
    if (category == "") {
        alert("Select one category");
        return false;
    } else {
    }
}
