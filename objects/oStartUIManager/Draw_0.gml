draw_set_font(FntTitle);
draw_set_color(oColorCodes.lightBlue);

var len = string_length(title);
var xOffset = 0;

var totalPath = len + 10; 
waveTimer = (waveTimer + waveSpeed) % totalPath;

for (var i = 1; i <= len; i++) {
    var char = string_char_at(title, i);

    var dist = abs(i - waveTimer);
    var influence = max(0, 1 - (dist / 1.5)); 
    var jump = power(influence, 3) * waveHeight;

    draw_text(x + xOffset + room_width/2 - string_width(title)/2, y - jump, char);
    
    xOffset += string_width(char);
}