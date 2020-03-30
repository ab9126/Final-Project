	function checkImg(filename) {
		 var pattern = /jpg|jpeg|png|gif/i;
         return pattern.test(filename);
	}
	
	function getOriginalName(filename) {
		
		if(checkImg(filename)) {
			
			var idx = filename.indexOf("_", 14) +1;
		}else{
			var idx = filename.indexOf("_") +1;
		}
		
		filename = filename.substring(idx);
		return filename;
		
	}
	
	function getImageName(filename) {
		var idx = filename.indexOf("s");
		var idx2 = filename.indexOf("_");
		
		var prefix = filename.substring(0, 12);	
		var suffix = filename.substring(14);
		
		return prefix + suffix;
		
	}
	
	function iconAppend(data, ok) {	
		var str = '<li class="col-xs-3">';
		if(checkImg(data)) {
			str += '<a target="_blank" href="/display?filename='+getImageName(data)+'"><img alt="이미지파일 썸네일" src="/display?filename='+data+'" class="img_icon" data-url="'+data+'"></a>';
		}else {
			str += '<a href="/display?filename='+data+'"><img alt="일반파일 썸네일" src="/resources/img/일반.png" class="board_img_icon" data-url="'+data+'"></a>';	
		}
		
		str += '<div>';
		str += '<span>' + getOriginalName(data) + '</span>';
		
		if(ok) {	
			str += '<input name="p_thumb" id=" p_thumb" type="radio" value="'+data+'">';
			str += '<a class="btn btn-danger btn-xs delbtn" href="'+data+'"><span class="glyphicon glyphicon-remove"></span></a>';
		}
		str += '</div>';
		
		$(".uploadedList").append(str);
	}
	
	
	function addComma(num) {
		  var regexp = /\B(?=(\d{3})+(?!\d))/g;
		  return num.toString().replace(regexp, ',');
	}
	
	
	