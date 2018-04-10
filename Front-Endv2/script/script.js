/**
            function showelec(){
                document.getElementById('water1').style.display = 'none';
                document.getElementById('water2').style.display = 'none';
                document.getElementById('elec1').style.display = 'block';
                document.getElementById('elec2').style.display = 'block'; 
            }
            function showwater(){
                document.getElementById('elec1').style.display = 'none';
                document.getElementById('elec2').style.display = 'none'; 
                document.getElementById('water1').style.display = 'block';
                document.getElementById('water2').style.display = 'block';
            }
            function showmap1(){
                document.getElementById('map2').style.display = 'none';
                document.getElementById('map1').style.display = 'block';
                document.getElementById('map').style.display = 'block';
            }function showmap2(){
                document.getElementById('map1').style.display = 'none';
                document.getElementById('map2').style.display = 'block';
                document.getElementById('map').style.display = 'block';
            }
			
**/
function showelec(){};
 
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  
  var slides = document.getElementsByClassName("picE");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  slides[slideIndex-1].style.display = "block";  
 
}

var slideIndex2 = 1;
showSlides2(slideIndex2);

function plusSlides2(n) {
showSlides2(slideIndex2 += n);
}

function currentSlide2(n) {
  showSlides2(slideIndex2 = n);
}

function showSlides2(n) {
  var j;
  
 var slides2 = document.getElementsByClassName("picW");
 if (n > slides2.length) {slideIndex2 = 1}    
 if (n < 1) {slideIndex2 = slides2.length}
 for (j = 0; j < slides2.length; j++) {
      slides2[j].style.display = "none";  
  }
  slides2[slideIndex2-1].style.display = "block";  
}

var slideIndex3 = 1;
showSlides3(slideIndex3);

function plusSlides3(n) {
showSlides3(slideIndex3 += n);
}

function currentSlide3(n) {
  showSlides3(slideIndex3 = n);
}


function showSlides3(n) {
  var j;
  
  var slides3 = document.getElementsByClassName("picI");
  if (n > slides3.length) {slideIndex3 = 1}    
  if (n < 1) {slideIndex3 = slides3.length}
  for (j = 0; j < slides3.length; j++) {
      slides3[j].style.display = "none";  
  }
  slides3[slideIndex3-1].style.display = "block";  
}



function showElec(){
	document.getElementById("slideSection1").style.display = "block";
	document.getElementById("slideSection2").style.display = "none";
	document.getElementById("slideSection3").style.display = "none";
}

function showWater(){
	document.getElementById("slideSection1").style.display = "none";
	document.getElementById("slideSection2").style.display = "block";
	document.getElementById("slideSection3").style.display = "none";
}

function showIntec(){
	document.getElementById("slideSection1").style.display = "none";
	document.getElementById("slideSection2").style.display = "none";
	document.getElementById("slideSection3").style.display = "block";
}