var form = document.getElementById('form');

form.addEventListener('submit', function(e){
    e.preventDefault()

    var inputText = document.getElementById('inputtext').value
    var btnText = document.getElementById('btn')

    btnText.innerText = inputText
})