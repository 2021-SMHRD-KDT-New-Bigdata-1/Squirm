<<<<<<< HEAD
const checkbox = document.getElementById("cb-1");

const audioCtx = new (window.AudioContext || window.webkitAudioContext)(); // 오디오 컨텍스트 정의

const analyser = audioCtx.createAnalyser();
const distortion = audioCtx.createWaveShaper();
const gainNode = audioCtx.createGain();
const biquadFilter = audioCtx.createBiquadFilter();
let b = 0;
var traintext = new Array(
  "안녕 하세요",
  "사랑 해요",
  "너무 보고싶어요",
  "그동안 고생했어요",
  "다음에 꼭 봐요",
  "엄마 아빠 사랑해요",
  "정말 고마워",
  "다시 만나요",
  "축하 해요",
  "응원 할게요",
  "메리 크리스마스",
  "새해 복 많이",
  "행복 해요",
  "미안 해요",
  "고생 했어요"
);

  function setInnerHTML() {
    const element = document.getElementById("train_text_div");
    element.innerHTML =
      "<div style= color: black; font-family: 'Gowun Dodum', sans-serif;>" +
      traintext[b] +
      "<div>";
    b++; // 바뀌게 하는코드
  }

function makeSound(stream) {
  const source = audioCtx.createMediaStreamSource(stream);  

  source.connect(analyser); 
  analyser.connect(distortion);
  distortion.connect(biquadFilter); 
  biquadFilter.connect(gainNode);
  gainNode.connect(audioCtx.destination); // connecting the different audio graph nodes together
  analyser.connect(audioCtx.destination);
}

if (navigator.mediaDevices) {
  console.log("getUserMedia supported.");

  const constraints = {
    audio: true,
  };
  let chunks = [];

  navigator.mediaDevices
    .getUserMedia(constraints)
    .then((stream) => {
      const mediaRecorder = new MediaRecorder(stream);

      checkbox.addEventListener("change", (event) => {
        //체크박스 사용할떄 쓰는 코드
        if (event.currentTarget.checked) {
          mediaRecorder.start(); //녹음시작
          console.log(mediaRecorder.state); //상태
          console.log("recorder started"); //로그표시
        } else {
          mediaRecorder.stop(); //녹음종료
          console.log(mediaRecorder.state);
          console.log("recorder stopped");
          setInnerHTML();
        }
      });

      // record.onclick = () => {  //버튼 사용시 이용하던 코드
      //     mediaRecorder.start()//녹음시작
      //     console.log(mediaRecorder.state)//상태
      //     console.log("recorder started")//로그표시
      //     //record.style.background = "red" css바꾸는거
      //     //record.style.color = "black"
      // }

      // stop.onclick = () => {//온클릭
      //     mediaRecorder.stop()//녹음종료
      //     console.log(mediaRecorder.state)
      //     console.log("recorder stopped")
      //     //record.style.background = ""
      //     //record.style.color = ""
      // }

      mediaRecorder.onstop = (e) => {
        console.log("data available after MediaRecorder.stop() called.");
        ///////나중에 전송 성공하면 지워도 되는부분들 확인할것
        const clipContainer = document.createElement("article");
        const audio = document.createElement("audio");
        clipContainer.classList.add("clip");
        audio.setAttribute("controls", "auto");
        clipContainer.appendChild(audio);

        const blob = new Blob(chunks, {
          type: "audio/wav codecs=opus",
        });
        chunks = [];
        const audioURL = URL.createObjectURL(blob);
        console.log(audioURL);
        audio.src = audioURL;
        console.log("recorder stopped");
        const sound = new File([audioURL], "soundBlob", {
          lastModified: new Date().getTime(),
          type: "audio",
        });
        console.log(sound);

        let form = new FormData();
        form.append("file", blob, "tempfile");

        $.ajax({
          type: "POST",
          url: "http://220.80.33.113:5003/address", //flask server url로 바꿔주세요! ---> 막혀있을수도 있다는거    http://localhost:8081/temp/temp01
          data: form, // Our pretty new form
          cache: false,
          processData: false, // tell jQuery not to process the data
          contentType: false, // audio/wav ---> 변경하는 방법도 고려해볼 것 (안된다면!!!)
        }).done(function () {
          console.log("성공?");
        });
      };

      mediaRecorder.ondataavailable = (e) => {
        chunks.push(e.data);
      };
    })
    .catch((err) => {
      console.log("The following error occurred: " + err);
    });
}
=======
const checkbox = document.getElementById("cb-1");

const audioCtx = new (window.AudioContext || window.webkitAudioContext)(); // 오디오 컨텍스트 정의

const analyser = audioCtx.createAnalyser();
const distortion = audioCtx.createWaveShaper();
const gainNode = audioCtx.createGain();
const biquadFilter = audioCtx.createBiquadFilter();
let b = 0;
var traintext = new Array(
  "안녕하세요",
  "사랑해요",
  "너무 보고싶어요",
  "그동안 고생했어요",
  "다음에 꼭 봐요",
  "엄마 아빠 사랑해요",
  "정말 고마워",
  "다시 만나요",
  "축하 해요",
  "응원 할게요",
  "메리 크리스마스",
  "새해복 많이",
  "행복해요",
  "미안해요",
  "고생했어"
);

  function setInnerHTML() {
    const element = document.getElementById("train_text_div");
    element.innerHTML =
      "<div style= color: black; font-family: 'Gowun Dodum', sans-serif;>" +
      traintext[b] +
      "<div>";
    b++; // 바뀌게 하는코드
  }

function makeSound(stream) {
  const source = audioCtx.createMediaStreamSource(stream);  

  source.connect(analyser); 
  analyser.connect(distortion);
  distortion.connect(biquadFilter); 
  biquadFilter.connect(gainNode);
  gainNode.connect(audioCtx.destination); // connecting the different audio graph nodes together
  analyser.connect(audioCtx.destination);
}

if (navigator.mediaDevices) {
  console.log("getUserMedia supported.");

  const constraints = {
    audio: true,
  };
  let chunks = [];

  navigator.mediaDevices
    .getUserMedia(constraints)
    .then((stream) => {
      const mediaRecorder = new MediaRecorder(stream);

      checkbox.addEventListener("change", (event) => {
        //체크박스 사용할떄 쓰는 코드
        if (event.currentTarget.checked) {
          mediaRecorder.start(); //녹음시작
          console.log(mediaRecorder.state); //상태
          console.log("recorder started"); //로그표시
        } else {
          mediaRecorder.stop(); //녹음종료
          console.log(mediaRecorder.state);
          console.log("recorder stopped");
          setInnerHTML();
        }
      });

      // record.onclick = () => {  //버튼 사용시 이용하던 코드
      //     mediaRecorder.start()//녹음시작
      //     console.log(mediaRecorder.state)//상태
      //     console.log("recorder started")//로그표시
      //     //record.style.background = "red" css바꾸는거
      //     //record.style.color = "black"
      // }

      // stop.onclick = () => {//온클릭
      //     mediaRecorder.stop()//녹음종료
      //     console.log(mediaRecorder.state)
      //     console.log("recorder stopped")
      //     //record.style.background = ""
      //     //record.style.color = ""
      // }

      mediaRecorder.onstop = (e) => {
        console.log("data available after MediaRecorder.stop() called.");
        ///////나중에 전송 성공하면 지워도 되는부분들 확인할것
        const clipContainer = document.createElement("article");
        const audio = document.createElement("audio");
        clipContainer.classList.add("clip");
        audio.setAttribute("controls", "auto");
        clipContainer.appendChild(audio);

        const blob = new Blob(chunks, {
          type: "audio/wav codecs=opus",
        });
        chunks = [];
        const audioURL = URL.createObjectURL(blob);
        console.log(audioURL);
        audio.src = audioURL;
        console.log("recorder stopped");
        const sound = new File([audioURL], "soundBlob", {
          lastModified: new Date().getTime(),
          type: "audio",
        });
        console.log(sound);

        let form = new FormData();
        form.append("file", blob, "tempfile");

        $.ajax({
          type: "POST",
          url: "http://220.80.33.113:5003/address", //flask server url로 바꿔주세요! ---> 막혀있을수도 있다는거    http://localhost:8081/temp/temp01
          data: form, // Our pretty new form
          cache: false,
          processData: false, // tell jQuery not to process the data
          contentType: false, // audio/wav ---> 변경하는 방법도 고려해볼 것 (안된다면!!!)
        }).done(function () {
          console.log("성공?");
        });
      };

      mediaRecorder.ondataavailable = (e) => {
        chunks.push(e.data);
      };
    })
    .catch((err) => {
      console.log("The following error occurred: " + err);
    });
}
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-New-Bigdata-1/Squirm.git
