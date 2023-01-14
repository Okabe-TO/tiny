%{
int linecounter = 1;
%}
%option nounput
%%
string                                          { return(STRING); }
display                                         { return(DISPLAY); }
image                                           { return(IMAGE); }
stroke                                          { return(STROKE); }
fill                                            { return(FILL); }
rectangle                                       { return(RECTANGLE); }
line                                            { return(LINE); }
arc                                             { return(ARC); }
angle                                           { return(ANGLE); }
sweep                                           { return(SWEEP); }
start                                           { return(START); }
pass                                            { return(PASS); }
end                                             { return(END); }
width                                           { return(WIDTH); }
color                                           { return(COLOR); }
red                                             { return(RED); }
green                                           { return(GREEN); }
blue                                            { return(BLUE); }
cyan                                            { return(CYAN); }
magenta                                         { return(MAGENTA); }
yellow                                          { return(YELLOW); }
gray                                            { return(GRAY); }
black                                           { return(BLACK); }
while                                           { return(WHITE); }
at                                              { return(AT); }
[0-9]+                                          { return(INTEGER); }
"."                                             { return(PERIOD); }
"@"                                             { return(ATMARK); }
"\""([A-Za-z0-9]|":"|"/"|"."|"-"|"~")*"\""      { return(WQUOTED); }
"\n"                                            { linecounter++; }
"\r\n"                                          { linecounter++; }
"\r"                                            { linecounter++; }
" "|"\t"                                        { }
"/*"                                            { comment(); }
.                                               { return(UNKNOWN); }

%%
int yywrap(void) {
	return(1);
}
void comment(void) {
	int boolean, first, second;

	boolean = TRUE;
	first = input();
	while (first != EOF && boolean) {
		second = input();
		if (first == '*' && second == '/') {
			boolean = FALSE;
		} else if (first == '\r' && second == '\n') {
			linecounter++;
			first = input();
		} else {
			if (first == '\r' || first == '\n') {
				linecounter++;
			}
			first = second;
		}
	}
	if (first == EOF) {
		fprintf(stderr, "eof in comment\n");
	}
}
