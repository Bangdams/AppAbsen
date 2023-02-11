var generate = ""

document.getElementById('test').onclick = function() {
    var test = localStorage.getItem('generateCode');
    console.log(test)
}

function show() {
    document.getElementById('qr').hidden = false
    document.getElementById("show").onclick = function() { hide(); }
    document.getElementById('show').innerHTML = 'Sembunyikan QR'

    generate = GenerateCode(10)
    document.getElementById('code').value = 'Test'
    
    window.onload = function() {
        localStorage.setItem("generateCode", $('#code').val()); 
    }

    var test = localStorage.getItem('generateCode');
    console.log(test)

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
    console.log(generate)
}

function onScanSuccess(decodedText, decodedResult) {
      console.log(`Code matched = ${decodedText}`, decodedResult);
      console.log(generate)
      myObjeck = JSON.parse(string);
      console.log(myObjeck['kelas']);
    }

function onScanFailure(error) {
  // console.warn(`Code scan error = ${error}`);
}

let html5QrcodeScanner = new Html5QrcodeScanner(
  "reader",
  { fps: 10, qrbox: {width: 250, height: 250} },
  /* verbose= */ false);
html5QrcodeScanner.render(onScanSuccess, onScanFailure);

// window.setTimeout("GenerateCode(10)", 1000);
// setTimeout("GenerateCode(10)", 1000);

function hide() {
    document.getElementById('qr').hidden = true
    document.getElementById("show").onclick = function() { show(); }
    document.getElementById('show').innerHTML = 'Klik Qr'
}