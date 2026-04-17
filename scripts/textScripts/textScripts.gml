function drawTextShadow(x,y,text,size){
	
	draw_set_alpha(0.6);
	draw_text(x+size*oResolutionManager.uiScale,y+size*oResolutionManager.uiScale,text)
	draw_set_alpha(1);
	draw_text(x,y,text)
	
}

function drawTextTransformedShadow(x,y,text,xscale,yscale,angle,size) {
	draw_set_alpha(0.6);
	draw_text_transformed(x+size*oResolutionManager.uiScale,y+size*oResolutionManager.uiScale,
	text,xscale,yscale,angle);
	draw_set_alpha(1);
	draw_text_transformed(x,y,
	text,xscale,yscale,angle);
}

function drawTextExtTransformedShadow(x,y,text,sep, w, xscale,yscale,angle,size) {
	draw_set_alpha(0.6);
	draw_text_ext_transformed(x+size*oResolutionManager.uiScale,y+size*oResolutionManager.uiScale,
	text,sep, w, xscale,yscale,angle);
	draw_set_alpha(1);
	draw_text_ext_transformed(x,y,
	text,sep, w ,xscale,yscale,angle);
}


function drawTextSpaced(x, y, text, spacing, xscale, yscale, angle, size) {
    var len = string_length(text);
    var totalWidth = (string_width(text) * xscale) + ((len - 1) * spacing * xscale);
    
    startX = x - (totalWidth / 2);
    var halign = draw_get_halign();
    draw_set_halign(fa_left);
    var curX = startX;
    for (var i = 1; i <= len; i++) {
        var _char = string_char_at(text, i);
		drawTextTransformedShadow(curX,y,_char,xscale,yscale,angle,size);
        curX += (string_width(_char) * xscale) + (spacing * xscale);
    }
}