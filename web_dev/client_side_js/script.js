function dottedBorder(event) {
  event.target.style.border = "2px dotted red";
}
var send = document.getElementById("send");
send.addEventListener("click", dottedBorder);