//验证码开始
	
//	if($("#very-code").is(":visible")){
//		var $h = $("#login-box").height()+20;
//		$("#login-box").css("height",$h);
//	}
	
	function changeImg(){    
	    var imgSrc = $("#verify-img");    
	    var src = imgSrc.attr("src");    
	    imgSrc.attr("src",chgUrl(src));    
	}    
	//时间戳    
	//为了使每次生成图片不一致，即不让浏览器读缓存，所以需要加上时间戳    
	function chgUrl(url){    
	    var timestamp = (new Date()).valueOf();    
	    url = url.substring(0,17);    
	    if((url.indexOf("&")>=0)){    
	        url = url + "×tamp=" + timestamp;    
	    }else{    
	        url = url + "?timestamp=" + timestamp;    
	    }    
	    return url;    
	}    
	   
	function isRightCode(){    
	    var code = $("#very-code").val();

	    code = "c=" + code;    
	    $.ajax({    
	        type:"POST",    
	        url:"check-virfy-code",    
	        data:code,    
	        success:callback    
	    });    
	}    
	   
	function callback(data){    
	    $("#veryInfo").html(data);    
	} 
	//验证码结束