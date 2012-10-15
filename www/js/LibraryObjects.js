/**Library object containing a list of all books in the system.*/
function Library() {
    var self    = this;
    this.list   = [];
    this.selectAll = false;
    
    /*Should be set to the number of books to be removed before calling the private removeBookAtIndex function.*/
    var removeCount = 0;
    
    this.removeSelected = removeSelected ;
    /**remove all books that are selected in the visible list, will update the web UI.*/
    function removeSelected () {
        $.blockUI();
        if(removeCount !== 0)
            alert("removeCount must be 0 here!");
        for(var c = 0; c<self.list.length; c++) {
            if(self.list[c].select) {
                removeCount ++;
            }
        }
        for(c=0; c<self.list.length; c++) {
            if(self.list[c].select) {
                removeBookAtIndex(c);
                c--;
            }
        }
        self.selectAll = false;
    }
    this.listBooks = listBooks;
    /*List all books in console*/
    function listBooks() {
        for(var i = 0; i<self.list.length; i++)
            println(self.list[i]);
        return "OK";
    }
    
    this.removeBookByID = removeBookByID;
    /*remove a book with the given ID*/
    function removeBookByID(_id) {
        for(var i = 0; i<self.list.length; i++) {
            if(self.list[i].id == _id) {
                $.blockUI();
                removeCount = 1;
                var removedBook = self.list[i];
                removeBookAtIndex(i);
                return "Removed: " + removedBook ;
            }
        }
        return "No such book";
    }

    this.selectAllToggle = selectAllToggle;
    /**Toggle select all books currently in the visible list. Will update the web UI.*/
    function selectAllToggle() {
        self.selectAll = !self.selectAll;
        for(var c = 0; c<self.list.length; c++) {
            self.list[c].select = self.selectAll;
        }
        self.generateHTML();
    }
    
    this.query = query;
    function query() {
        var result = [];
        
        for(var c = 0; c<self.list.length; c++) {
            var success = true;
            for(var d = 0; d<arguments.length && success; d+=2) {
                if(typeof arguments[d+1] == "string") {
                    if(self.list[c][arguments[d]].search(arguments[d+1]) == -1)
                        success = false;
                }
                else {
                    if(self.list[c][arguments[d]] != arguments[d+1])
                        success = false;
                }
            }
            if(success)
                result.push(self.list[c]);
        }
        return result;
    }
    
    this.generateHTML = generateHTML;
    /**Generate list elements for all books in the system, at the "BOOKTABLE" element in the HTML document.*/
    function generateHTML() {
        var row, cell, tab, tbo, loc;
        
        tab=document.createElement("table");
        tab.setAttribute("id","bookTable");
        tab.setAttribute("border","1px solid black");

        tbo=document.createElement('tbody');
        
        row = document.createElement('tr');
        cell = document.createElement('td');
        cell.innerHTML = "<input type='checkbox' id='SELECTALL' onclick = 'LIB.selectAllToggle();shellCommands.print(\"LIB.selectAllToggle();\");'" + (self.selectAll ? "checked" : "") + ">";
        row.appendChild(cell);
        cell = document.createElement('td');
        cell.innerHTML = "ID";
        row.appendChild(cell);
        cell = document.createElement('td');
        cell.innerHTML = "Title";
        row.appendChild(cell);
        cell = document.createElement('td');
        cell.innerHTML = "Author";
        row.appendChild(cell);
        row.setAttribute("class","headRow");
        tbo.appendChild(row);
        
        for(c=0; c<self.list.length; c++) {
            row = self.list[c].generateHTML();
            row.setAttribute("class",((c%2) === 0)?"evenRow":"oddRow");
            tbo.appendChild(row);
        }
        if(self.list.length === 0) {
            row = document.createElement('tr');
            cell = document.createElement('td');
            cell.innerHTML = "No books to list yet";
            cell.setAttribute("colspan","4");
            row.appendChild(cell);
            row.setAttribute("class","evenRow");
            tbo.appendChild(row);
            
        }
        tab.appendChild(tbo);
        tab.setAttribute("class","libraryTable");
        loc = document.getElementById('BOOKTABLE');
        loc.innerHTML = "";
        loc.appendChild(tab);
    }
    
    /*Private function to remove a book. Does not lock the UI by itself.
     *removeCount should be set to the total number of books to be removed in this batch, before this is called.
     *When this has been called removeCount times and the books have been removed, the UI is unblocked and the UI is updated.*/
    var removeBookAtIndex = function(index) {
        /*Remove book from local storage immediately. If this is ever changed, remove button loop must also be changed!*/
        var removedBook = self.list[index];
        self.list.splice(index,1);
        $.ajax({
            type: "DELETE",
            url: "http://netlight.dlouho.net:9004/api/books/"+removedBook.id,
            success: function(response) {
               removeCount--;
               /*Check if all books that should be removed have been removed now.*/
               if(removeCount === 0) {
                   self.generateHTML();
                   $.unblockUI();
               }
            },
            dataType: "text"
        });
        pubnubRefresh();
    };

    this.retrieveObjects = retrieveObjects;
    /*This function retrieves all objects from the server and updates the web UI. Will lock the UI until objects have been received.*/
    function retrieveObjects() {
        self.list = [];
        $.blockUI();
        $.getJSON("http://netlight.dlouho.net:9004/api/books" ,function (data) {
            for(var i = 0; i<data.length; i++)
                new Book(data[i].title,data[i].author,data[i]._id);
            generateHTML();
            $.unblockUI();
        });
    }
}
var LIB = new Library();
function initLibrary() {
    LIB.retrieveObjects();
    }

/**Book object containing information about a single book and add it to the list of Books.
  *If id is null, the object will be sent to the server, and the id will be returned. This will block the UI and then update it.
  *id should be null when using this from the console or web UI.*/
function Book(title, author, id) {
    var self    = this;
    this.title   = title;
    this.author = author;
    this.id     = id;
    
    this.select = false;
    this.checkbox = null;
    
    this.saveUpdate = saveUpdate;
    /*Update the book on the server, blocking/unblocking and updating the UI in the process.*/
    function saveUpdate() {
        $.blockUI();
        $.ajax({
            type: "PUT",
            url: "http://netlight.dlouho.net:9004/api/books/"+self.id,
            data: self.toJSON(),
            success: function(response) {
               self.generateHTML();
               $.unblockUI();
            },
            dataType: "json"
        });
        pubnubRefresh();
        LIB.generateHTML();
        
    }
    
    this.changeAuthor = changeAuthor;
    /**Change the author of the book. Will update the web UI.*/
    function changeAuthor(newAuthor) {
        self.author = newAuthor;
        self.saveUpdate();
    }
    
    this.toJSON = toJSON;
    /*Generate a JSON object from this Book.*/
    function toJSON() {
        return { _id:self.id, title: self.title, author: self.author};
    }

    this.changeTitle = changeTitle;
    /**Change the name of the book. Will update the web UI.*/
    function changeTitle(newTitle) {
        self.title = newTitle;
        self.saveUpdate();
    }

    this.toggleSelect = toggleSelect;
    /**Toggle whether this book is selected. Will make sure the value of the checkbox is correct, if it exists.*/
    function toggleSelect() {
        self.select = !self.select;
        if (self.checkbox !== null && self.checkbox.checked != self.select)
            self.checkbox.checked = self.select;
        /**Print the appropriate command in the console */
        if (self.select)
            shellCommands.print("Book selected");
        else
            shellCommands.print("Book deselected");
    }
    
    this.remove = remove;
    /*Remove this book from the system. Will update database and UI.*/
    function remove() {
        LIB.removeBookByID(self.id);
        pubnubRefresh();
    }

    this.generateHTML = generateHTML;
    /**Generate HTML element(s) for this book.
      *@return The string for the HTML element. Should return a table row. Row style will be overridden.*/
    function generateHTML() {
        var row, cell, input;
        row = document.createElement("tr");
        
        cell = document.createElement("td");
        input = document.createElement("input");
        self.checkbox = input;
        input .type = "checkbox";
        input.id = "SELECT_"+self.id;
        input.checked = self.select;
        input.onchange = self.toggleSelect;
        cell.appendChild(input );
        row.appendChild(cell);
        
        cell = document.createElement("td");
        cell.innerHTML = self.id;
        row.appendChild(cell);
        
        cell = document.createElement("td");
        input = document.createElement("input");
        input.type = "text";
        input.id = "TITLE_"+self.id;
        input.value = self.title;
        input.onchange = function(){self.changeTitle(this.value);};
        cell.appendChild(input );
        row.appendChild(cell);
        
        cell = document.createElement("td");
        input = document.createElement("input");
        input.type = "text";
        input.id = "AUTHOR_"+self.id;
        input.value = self.author;
        input.onchange = function(){self.changeAuthor(this.value);};
        cell.appendChild(input );
        row.appendChild(cell);

        return row;
    }
    
    /*Add the book to the list*/
    LIB.list.push(this);
    
    /*Send the book to the server and retrieve id if none was supplied.*/
    if(id==null) {
        $.blockUI();
        $.ajax({
            type: "POST",
            url: "http://netlight.dlouho.net:9004/api/books",
            data: self.toJSON(),
            success: function(response){
                //Add book to local storage
                self.id = response._id;
                LIB.generateHTML();
                $.unblockUI();
            },
            dataType: "json"
        });
        pubnubRefresh();
    }
}
Book.prototype.toString = function(){
    return "[object Book <"+this.id+", "+this.title+", "+this.author+">]";
};