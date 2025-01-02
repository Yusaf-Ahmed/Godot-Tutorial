shader_type canvas_item;

uniform vec4 OLDCOLOR1 : source_color;
uniform vec4 OLDCOLOR2 : source_color;
uniform vec4 OLDCOLOR3 : source_color;


uniform vec4 NEWCOLOR1 : source_color;
uniform vec4 NEWCOLOR2 : source_color;
uniform vec4 NEWCOLOR3 : source_color;

const float EPSILON = 0.01; // Tolerance for color comparison

// Helper function for approximate color equality
bool is_equal(vec4 a, vec4 b) {
    return all(lessThan(abs(a - b), vec4(EPSILON)));
	}


// Fragment checks through every pixel of a sprite -
void fragment() {
	vec4 curr_colour = texture(TEXTURE,UV); //Checks for current pixel colours
	
	if (curr_colour == OLDCOLOR1)
	{
		COLOR = NEWCOLOR1;
	}
	
	else if (curr_colour == OLDCOLOR2)
	{
		COLOR = NEWCOLOR2;
	}
	
	else if (curr_colour == OLDCOLOR3)
	{
		COLOR = NEWCOLOR3;
	}
	
	else
	{
		COLOR = curr_colour; //Keeps origin color if no new color is found
	}
	
}

