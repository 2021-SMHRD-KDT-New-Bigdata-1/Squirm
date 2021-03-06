var button = $(".button");
var mic = button.find("svg");
var active = $(".active-wrapper");
var stop = $(".stop-button");
var dotCol = $(".dots-col");
// 위에는
var w = $(window);
var vw = w.innerWidth();
var vh = w.innerHeight();
var bw = button.innerWidth();
var bh = button.innerHeight();
var s;

var clone = button.clone();
clone.find("svg").remove();
button.before(clone);

var open = function () {
  if (vw > vh) {
    s = (vw / bw) * 1.5;
  } else {
    s = (vh / bh) * 1.5;
  }
  var scale = "scale(" + s + ") translate(-50%,-50%)";

  clone.css({
    transform: scale,
  });

  mic.css({
    fill: "rgba(0,0,0,0.2)",
    transform: "scale(4)",
  });

  button.on("transitionend", function () {
    active.addClass("active");
    $(this).off("transitionend");
  });

  return false;
}; 

var close = function () {
  active.removeClass("active");
  clone.removeAttr("style");
  mic.removeAttr("style");
};

button.on("click", open);
stop.on("click", close);
