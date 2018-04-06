var check = '<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 22 22" style="enable-background:new 0 0 22 22;" xml:space="preserve"><rect y="0" class="noFill" width="22" height="22"/><g><path class="fill" d="M9.7,14.4L9.7,14.4c-0.2,0-0.4-0.1-0.5-0.2l-2.7-2.7c-0.3-0.3-0.3-0.8,0-1.1s0.8-0.3,1.1,0l2.1,2.1l4.8-4.8c0.3-0.3,0.8-0.3,1.1,0s0.3,0.8,0,1.1l-5.3,5.3C10.1,14.3,9.9,14.4,9.7,14.4z"/></g></svg>';
document.getElementById('add').addEventListener('click', function () {
    var amount = document.getElementById('amount').value;
    var dueDate = document.getElementById('dueDate').value;
    var org = document.getElementById('org').value;
    if (amount, dueDate, org) addItemList(amount, dueDate, org);
});

function removeItem() {
    var item = this.parentNode.parentNode;
    var parent = item.parentNode;
    var id = parent.id;
    var value = item.innerHTML;

    parent.removeChild(item);
}


function addItemList(amount, dueDate, org){
    
    var currentDay = new Date();
    var d = new Date(dueDate);
    var months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
    var mm = months[d.getUTCMonth()];
    var list = document.getElementById('unpaid');
    var item = document.createElement('li');
    item.innerHTML = mm +" "+ d.getUTCDate() + ", "+ d.getUTCFullYear()+" - "+ org + "<br> "+"Amount: " + amount;
    var due = d.getUTCDate() - currentDay.getUTCDate();
    console.log(due);
    if(due <= 7 && due > 0){
        alert(due);
    }else if(due === 0){
        alert("You need to pay now");
    }else if(due < 0){
        alert("You are overdue");
    }
    
    var buttons = document.createElement('div');
    buttons.classList.add('buttons');
    var remove = document.createElement('button');
    remove.classList.add('remove');
    remove.innerHTML = "<button> Paid </button>";

    remove.addEventListener('click', removeItem);
    buttons.appendChild(remove);

    item.appendChild(buttons);

    list.appendChild(item);
    list.insertBefore(item, list.childNodes[0]);
}