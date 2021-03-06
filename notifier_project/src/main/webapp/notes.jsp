<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Notes</title>
    <script src="https://kit.fontawesome.com/1935d064dd.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <header>
        <div class="container">
            <h1>My Notes App</h1>
            <form action="">
                <input type="text" id="note-title" placeholder="Note title">
                <textarea id="note-text" placeholder="Note Details"></textarea>
            
                <button id="add-btn">Add Note</button>
            </form>
        </div>
    </header>

    <section>
        <div class="container">
            <h2>Your Notes</h2>
            <hr>
            <div id="notes" class="notes">
        
                    <div class="note">
                        <p class="note-counter">Note ${index + 1}</p>
                        <h3 class="note-title"> $element.title </h3>
                        <p class="note-text"> $element.text</p>
                        <button class="note-btn">Delete Note</button>
                        <button class="note-btn edit-btn">Edit Note</button>
                    </div>
                
            </div>
        </div>
    </section>
    

    <script src="script.js"></script>
</body>
</html>