var recognition = new webkitSpeechRecognition();
recognition.continuous = true;
//recognition.interimResults = true;

//window.onload = start();

setInterval(function () {
  start();
}, 1000);

function start() {
  // 이거아닌가
  recognition.onresult = function (event) {
    console.log(event);
    var output = document.getElementById("output");
    output.innerHTML = "";
    for (var i = 0; i < event.results.length; i++) {
      output.innerHTML = output.innerHTML + event.results[i][0].transcript;
    }
  };
  recognition.start();
}
