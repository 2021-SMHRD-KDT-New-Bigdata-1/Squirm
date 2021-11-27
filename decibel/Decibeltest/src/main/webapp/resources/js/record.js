const checkbox = document.getElementById("cb-1");

const soundClips = document.getElementById("sound-clips");

const audioCtx = new (window.AudioContext || window.webkitAudioContext)(); // 오디오 컨텍스트 정의

const analyser = audioCtx.createAnalyser();
const distortion = audioCtx.createWaveShaper();
const gainNode = audioCtx.createGain();
const biquadFilter = audioCtx.createBiquadFilter();

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

        const clipName = prompt("오디오 파일 제목을 입력하세요.", new Date());

        const clipContainer = document.createElement("article");
        const clipLabel = document.createElement("p");
        const audio = document.createElement("audio");
        const deleteButton = document.createElement("button");

        clipContainer.classList.add("clip");
        audio.setAttribute("controls", "");
        deleteButton.innerHTML = "삭제";
        clipLabel.innerHTML = clipName;

        clipContainer.appendChild(audio);
        clipContainer.appendChild(clipLabel);
        clipContainer.appendChild(deleteButton);
        soundClips.appendChild(clipContainer);
        console.log(soundClips);

        audio.controls = true;
        const blob = new Blob(chunks, {
          type: "audio/ogg codecs=opus",
        });
        chunks = [];
        const audioURL = URL.createObjectURL(blob);
        console.log(audioURL);
        audio.src = audioURL;
        console.log("recorder stopped");

        deleteButton.onclick = (e) => {
          evtTgt = e.target;
          evtTgt.parentNode.parentNode.removeChild(evtTgt.parentNode);
        };
      };

      mediaRecorder.ondataavailable = (e) => {
        chunks.push(e.data);
      };
    })
    .catch((err) => {
      console.log("The following error occurred: " + err);
    });
}
