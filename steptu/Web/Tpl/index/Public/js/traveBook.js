///**
// * Created by Adam on 15/5/5.
// */
//$(document).ready(
    function time(){
    var d = new Date();
    var str = d.getFullYear()+"-"+(d.getMonth()+1)+"-"+d.getDate();
    document.getElementById("dataBox").innerHTML=str;
    document.getElementById("dataBoxLetter").innerHTML=str;
}
function readerNumber(){
    var num = 0;
    document.getElementById("readerNumber").innerHTML=num;
}
function replayNumber(){
    var rep = 0;
    document.getElementById("replayNumber").innerHTML=rep;
}
function likeNumber(){
    var like = 0;
    document.getElementById("likeNumber").innerHTML=like;
}
function showFelling(){
    mainboxrealFelling.style.display="block";
    mainboxrealLetter.style.display="none";
}
function showLetter(){
    mainboxrealFelling.style.display="none";
    mainboxrealLetter.style.display="block";
}
