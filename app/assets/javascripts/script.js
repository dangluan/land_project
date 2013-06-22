function transferContentFromTinyEditor() {
  window.newContentEditor.post();
}

$(document).ready(function(){
	
	$(document.body).delegate("form#new_contact", "submit", function(){
		$.ajax({
			url: "/clients/add_contact",
			type: "post",
			data: $(this).serialize(),
			success: function(response){
				$("#stage").html(response);
			}
		});
		return false;
	});
	
	// $("body").on({
    // ajaxStart: function() { 
        // $(this).addClass("ajax-loading"); 
    // },
    // ajaxStop: function() { 
        // $(this).removeClass("ajax-loading"); 
    // }    
	// });
	
	$(document.body).delegate('li.nav', 'click', function(e){
		$('li.nav').removeClass('selected');
		$('div.menu-left').addClass("hidden");
		if($(this).hasClass("activity")){
			$("div.menu-left").removeClass("hidden");
		}
		$(this).addClass('selected');
		var dom = $(this).attr('data-load-element');
		var url = $(this).attr('data-url');
		var data = $(this).attr('data-type');
		var method = $(this).attr('data-method');
		$.ajax({
			url : url,
			type: method,
			data: {"type" : data},
			cache: true,
			success: function (result, textStatus, jqXHR) {
        // if 304, re-request the data
        if (result === undefined && textStatus == 'notmodified') {
            $.ajax({
                type: method,
                url: url,
                data: data,
                cache: true,
                ifModified: false, // don't check with server
                success: function (cachedResult, textStatus, jqXHR) {
                		$("div.ajax-loading").addClass("hidden");
                    $("#stage").html(cachedResult);
                }
            });
        }
        else{
            $("#stage").html(result);
    		}
    	}
		});
		return false;
	});
	
	$(document.body).delegate("#left_banner .menu-left ul.vnav-menu li", 'click', function(e){
		$("ul.vnav-menu li").removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});
	
	$(document.body).delegate(".fancy-album-link", 'click', function(){
		 var data = $(this).attr("data-images");
		 $('#slides').slidesjs({
        width: 570,
        height: 630,
        play: {
          active: true,
          auto: false,
          interval: 4000,
          swap: true
        }
     });
		return false;
	});
	
	$(document.body).delegate(".fancy-link", 'click', function(){
		var url = $(this).attr("data-url");
		$.fancybox({
			type: 'ajax',
			width: 500,
			height: 350,
			prevEffect		: 'none',
			nextEffect		: 'none',
			closeBtn		: true,
			href: url
		});
		return false;
	});
	
	$(document.body).delegate(".dynamic-link", 'click', function(e){	
		var dom = $(this).attr('data-load-element');
		var url = $(this).attr('data-url');
		var data = $(this).attr('data-type');
		var method = $(this).attr('data-method');
    $("div.ajax-loading").removeClass("hidden"); 	
		$.ajax({
			url : url,
			type: method,
			data: {"type" : data},
			cache: true,
			success: function (result, textStatus, jqXHR) {
        // if 304, re-request the data
        if (result === undefined && textStatus == 'notmodified') {
            $.ajax({
                type: method,
                url: url,
                data: data,
                cache: true,
                ifModified: false, // don't check with server
                success: function (cachedResult, textStatus, jqXHR) {
                		$("div.ajax-loading").addClass("hidden");
                    $("#stage").html(cachedResult);
                }
            });
        }
        else{
            $("div.ajax-loading").addClass("hidden");
            $("#stage").html(result);
    		}
    	}
		});
		return false;
	});
});