$(document).ready(function(){
    $('.footer').css('margin-top', $(document).height() - ( $('#wrapper').height() + $('#footer').height()) - 50 );
});
$(window).scroll(function() {

    if ( $(window).scrollTop() >= 100 ) {
    	$('.logo').css({"display":"none"});
        $('.navbar-right, .signin').css({"padding-top":"0"});
        $('.navbar-inverse').css({"opacity":"0.8"});
        $('.navbar-inverse').css({"padding-top":"0"});

    } else {
        $('.logo, .navbar-inverse, .navbar-right , .signin').attr('style', '');

    }
});
$(document).ready(function(){
	    $('.datas').slick({
       /* dots: true,
    	centerMode: true,*/
	    infinite: true,
	    autoplay: true,
	    speed: 300,
	    rtl: true,
	    slidesToShow: 5,
	    slidesToScroll: 1,
	    pauseOnHover: true,
	    responsive: [
	      {
	          breakpoint: 1024,
	          settings: {
	              slidesToShow: 3,
	              slidesToScroll: 3,
	              infinite: true
	          }
	      },
	      {
	          breakpoint: 600,
	          settings: {
	              slidesToShow: 2,
	              slidesToScroll: 2
	          }
	      },
	      {
	          breakpoint: 480,
	          settings: {
	              slidesToShow: 1,
	              slidesToScroll: 1
	          }
	      }
	    ]
	});

});

/*$(document).ready(function(){
     
     $("body").on("click","#signup",function(){
             
          $("#myModal").modal("show");
    	  $(".MODAL").addClass("after_modal_appended");
          //appending modal background inside the blue div
          $('.modal-backdrop').appendTo('.MODAL');   
     
          //remove the padding right and modal-open class from the body tag which bootstrap adds when a modal is shown
          $('body').removeClass("modal-open")
          $('body').css("padding-right","");     
      });
 
});*/