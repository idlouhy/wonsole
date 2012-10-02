/**Library object containing a list of all books in the system.*/
function Library() {
    var self    = this;
    this.list   = new Array();
    this.selectAll = false;

    this.deleteSelected = deleteSelected ;
    /**Delete all books that are selected in the visible list, will update the web UI.*/
    function deleteSelected () {
        for(c=0; c<self.list.length; c++) {
            if(self.list[c].select) {
                self.list.splice(c,1);
                c--;
            }
        }
        self.selectAll = false;
        self.generateHTML();
    }

    this.selectAllToggle = selectAllToggle;
    /**Toggle select all books currently in the visible list. Will update the web UI.*/
    function selectAllToggle() {
        self.selectAll = !self.selectAll;
        for(c=0; c<self.list.length; c++) {
            self.list[c].select = self.selectAll;
        }
        self.generateHTML();
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
        cell.innerHTML = "<input type='checkbox' id='SELECTALL' onclick = 'LIBRARY.selectAllToggle();'"+(self.selectAll?"checked":"")+">";
        row.appendChild(cell);
        cell = document.createElement('td');
        cell.innerHTML = "ID";
        row.appendChild(cell);
        cell = document.createElement('td');
        cell.innerHTML = "Name";
        row.appendChild(cell);
        cell = document.createElement('td');
        cell.innerHTML = "Author";
        row.appendChild(cell);
        row.setAttribute("class","headRow");
        tbo.appendChild(row);
        
        for(c=0; c<self.list.length; c++) {
            row = self.list[c].generateHTML();
            row.setAttribute("class",((c%2)==0)?"evenRow":"oddRow");
            tbo.appendChild(row);
        }
        if(self.list.length == 0) {
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
    
    /**Remove the book at position i in the list*/
    this.removeBook = removeBook;
    function removeBook(i) {
        self.list.splice(i,1);
        self.generateHTML();
    }
}
var LIBRARY = new Library();


/**Book object containing information about a single book.*/
function Book(name, author) {
    var self    = this;
    this.name   = name;  
    this.author = author;
    this.id     = null;
    
    this.select = false;
    this.checkbox = null;

    this.changeAuthor = changeAuthor;
    /**Change the author of the book. Will update the web UI.*/
    function changeAuthor(newAuthor) {
        self.author = newAuthor;
        LIBRARY.generateHTML();
    }

    this.changeName = changeName;
    /**Change the name of the book. Will update the web UI.*/
    function changeName(newName) {
        self.name = newName;
        LIBRARY.generateHTML();
    }

    this.toggleSelect = toggleSelect;
    /**Toggle whether this book is selected. Will make sure the value of the checkbox is correct, if it exists.*/
    function toggleSelect() {
        self.select = !self.select;
        if(self.checkbox!=null && self.checkbox.checked!=self.select)
            self.checkbox.checked = self.select;
    }

    this.generateHTML = generateHTML;
    /**Generate HTML element(s) for this book.
      *@return The string for the HTML element. Row style will be overridden.*/
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
        input.id = "NAME_"+self.id;
        input.value = self.name;
        input.onchange = function(){self.changeName(this.value);};
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
    
    LIBRARY.list.push(this);
    return LIBRARY.generateHTML();
}
Book.prototype.toString = function(){
    return "[object Book <"+this.id+", "+this.name+", "+this.author+">]"
}