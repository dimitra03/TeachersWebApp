function goToMainPage() {
    window.location.href = '/TeachersWebApp/index.html'; // Replace with your desired URL
}

function goToSearchPage() {
    window.location.href = '/TeachersWebApp/jsps/search.jsp'; // Replace with your desired URL
}


function goToInsertPage() {
    window.location.href = '/TeachersWebApp/jsps/insert.jsp'; // Replace with your desired URL
}

function goToDeletePage() {
    var message = 'Search for the teacher you want to delete';
    window.location.href = '/TeachersWebApp/jsps/search.jsp?mes=' + encodeURIComponent(message);  
}

function goToUpdatePage() {
    var message = 'Search for the teacher you want to update';
    window.location.href = '/TeachersWebApp/jsps/search.jsp?mes=' + encodeURIComponent(message);  
}