/**
 *
 * You can write your JS code here, DO NOT touch the default style file
 * because it will make it harder for you to update.
 *
 */

"use strict";

var generate = localStorage.getItem('generateCode')

function show() {
    document.getElementById('qr').hidden = false
    document.getElementById("show").onclick = function() { hide(); }
    document.getElementById('show').innerHTML = 'Sembunyikan QR'

    generate = GenerateCode(10)

    document.getElementById('code').value = generate
    const code = document.getElementById('code')

    localStorage.setItem("generateCode", code.value);

    function GenerateCode(length) {
        let result = '';
        const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
        const charactersLength = characters.length;
        let counter = 0;
        while (counter < length) {
          result += characters.charAt(Math.floor(Math.random() * charactersLength));
          counter += 1;
        }
        return result;
    }
}

window.setTimeout("checkGenerate()", 1000);

function checkGenerate() {
    if (localStorage.getItem('generateCode')) {
        timeOut()
    }
    setTimeout("checkGenerate()", 1000);
}

function timeOut(){
    setTimeout(() => {
      generate = null  
      localStorage.removeItem('generateCode');
      // console.log("Bisa")
    }, 180000)
}


// window.setTimeout("GenerateCode(10)", 1000);
// setTimeout("GenerateCode(10)", 1000);

function hide() {
    document.getElementById('qr').hidden = true
    document.getElementById("show").onclick = function() { show(); }
    document.getElementById('show').innerHTML = 'Klik Qr'
}