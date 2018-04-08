var memo = [];  
getMemo();
/**
 * Method will get the data that is available inside the local storage
 */
function getMemo() {
    memo = JSON.parse(localStorage.getItem('memo'));
    if (memo) {
        for (var i = 0; i < memo.length; i++) {
            var amount = memo[i].amount;
            var dueDate = memo[i].dueDate;
            var org = memo[i].org;
            addItemList(amount, dueDate, org);
        }
    } else {
        memo = [];
    }
}



/**
 * Store data in the localStorage whenever a new information is send by the user
 */
document.getElementById('add').addEventListener('click', function () {
    var amount = document.getElementById('amount').value;
    var dueDate = document.getElementById('dueDate').value;
    var org = document.getElementById('org').value;

    data = {
        amount: amount,
        dueDate: dueDate,
        org: org
    }
    memo.push(data);
    localStorage.setItem('memo', JSON.stringify(memo));

    if (amount, dueDate, org) addItemList(amount, dueDate, org);
});

/**
 * 
 * @param {*} remove 
 * Remove a certain item list from the localStorage
 */
function removeItem() {
    var item = this.parentNode.parentNode;
    var parent = item.parentNode;
    var id = parent.id;
    var value = item.innerHTML;
    var a = item + 1;
    memo.splice(a,1);
    localStorage.setItem('memo', JSON.stringify(memo));
    parent.removeChild(item);
}



/**
 * Add items
 * @param {*} amount 
 * @param {*} dueDate 
 * @param {*} org 
 */
function addItemList(amount, dueDate, org) {
    var currentDay = new Date();
    var d = new Date(dueDate);
    var months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
    var mm = months[d.getUTCMonth()];
    var list = document.getElementById('unpaid');
    var item = document.createElement('li');
    item.innerHTML = mm + " " + d.getUTCDate() + ", " + d.getUTCFullYear() + " - " + org + "<br> " + "Amount: " + amount;
    var due = d.getUTCDate() - currentDay.getUTCDate();
    var remind = document.createElement('div');


    if(due <= 7 && due > 0){
        remind.innerHTML = "<p> You have " + due + " days left </p>";
        item.appendChild(remind);
    }else if(due === 0){
        remind.innerHTML = "<p> You need to pay now </p>";
        item.appendChild(remind);
    }else if(due < 0){
        remind.innerHTML = "<p> You are overdue </p>";
        item.appendChild(remind);
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
