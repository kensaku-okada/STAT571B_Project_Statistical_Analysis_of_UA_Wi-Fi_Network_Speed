/*Analysis 1 design of experiment*/
/*4 factorial design (levels:location, day, time, whosPC == 3,2,2,2)*/
/*replicates: 40*/

/*import data*/
data projectAnalysis1_data; 
/*change the following path wit your own path */
infile 'C:\Users\kensaku_lenovo\Dropbox\universityOfArizona\STAT571BDesignOfExperiments\project\ProjectAnalysis1.csv'
/*deliter == tab*/
delimiter='09'x; 
input Location	Day	Time	WhosPC	networkSpeed	@@; 
run;
quit; 

/*draw the data table*/
proc print data=projectAnalysis1_data; 
run; 
quit;

/*referred to topic12_factorial_II.pdf p34*/
proc glm data = projectAnalysis1_data;
class Location	Day	Time	WhosPC;
model networkSpeed = Location|Day|Time|WhosPC;
output out = projectAnalysis1_data_anova r=res p= pred; 
run;
quit;


/*multiple comparison. referred to topic12_factorial_II.pdf p13*/
proc glm data=projectAnalysis1_data; 
class Location	Day	Time	WhosPC; 
model networkSpeed = Location|Day|Time|WhosPC; 
means Location|Day|Time|WhosPC /tukey lines; 
lsmeans Location|Day|Time|WhosPC/tdiff adjust=tukey; 
run; 
quit;


/*3*2*2*2 factorial regression analysis*/
proc  reg data = projectAnalysis1_data; 
model networkSpeed = Location Day Time WhosPC;
run;
quit;


/*distribution normality checking*/
/*draw a qq plot */
title "normality checking"; 
proc univariate data= projectAnalysis1_data_anova normal; 
var res;
/*do not change this line below*/
qqplot res/normal(mu=est sigma=est color=red L=1); 
run; 
quit;


/*draw scattered plot for constant variance checking*/
title 'residual plot: constant  variance checking'; 
proc sgplot data= projectAnalysis1_data_anova; 
scatter x=pred y=res; 
refline 0; 
run; 
quit;



/*######################################################################*/
/*Analysis 2 design of experiment on sunday for shantz corridor and shantz 440 */
/*2^3 factorial design (levels:location, day, time, whosPC == 2,1,2,2)*/
/*num of replicates: 40*/


/*import data*/
data projectAnalysis2_data; 
/*change the following path wit your own path */
infile 'C:\Users\kensaku_lenovo\Dropbox\universityOfArizona\STAT571BDesignOfExperiments\project\ProjectAnalysis2.csv'
/*deliter == tab*/
delimiter='09'x; 
input Location	Day	Time	WhosPC	networkSpeed	@@; 
/*TimeWhosPC = Time * WhosPC;*/	
LocationWhosPC = Location * WhosPC;
LocationTime = Location * Time;
run;
quit; 


/*2^3 factorial analysiss by regression analysis*/
proc  reg data = projectAnalysis2_data; 
model networkSpeed = Location Time WhosPC LocationTime LocationWhosPC ;
run;
quit;


/*2^3 factorial analysiss by glm (ANOVA analysis)*/
proc glm data = projectAnalysis2_data;
class Location	Time	WhosPC;
model networkSpeed = Location|Time|WhosPC;
means Location|Time|WhosPC /tukey lines;
output out = projectAnalysis2_data_anova r=res p= pred; 
run;
quit;
	

/*distribution normality checking*/
/*draw a qq plot */
title "normality checking"; 
proc univariate data= projectAnalysis2_data_anova normal; 
var res;
/*do not change this line below*/
qqplot res/normal(mu=est sigma=est color=red L=1);
run; 
quit;


/*draw scattered plot for constant variance checking*/
title 'residual plot: constant  variance checking'; 
proc sgplot data=projectAnalysis2_data_anova; 
scatter x=pred y=res; 
refline 0; 
run; 
quit;






