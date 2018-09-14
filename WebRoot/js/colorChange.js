$.fn.getHexBackgroundColor = function($jQueryObj, property) {
	var rgb = $jQueryObj.css(property);
	if ($.support .msie && $.support .version > 8 || $.support .mozilla || $.support .webkit) {
		rgb = rgb.match(/^rgb\((\d+),\s*(\d+),\s*(\d+)\)$/);

		function hex(x) {
			return ("0" + parseInt(x).toString(16)).slice(-2);
		}
		rgb = "#" + hex(rgb[1]) + hex(rgb[2]) + hex(rgb[3]);
	}
	return rgb;
}

//使用方式
//$.fn.getHexBackgroundColor("#thediv","color"))