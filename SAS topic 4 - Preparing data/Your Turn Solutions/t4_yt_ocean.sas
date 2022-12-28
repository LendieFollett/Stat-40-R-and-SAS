/*t4_yt_ocean.sas*/

/*library from which to draw data*/
libname s40dat '/home/u47369495/my_shared_file_links/u47369495/data/';

data storm_summary2;
    set s40dat.storm_summary;
    length Ocean $ 8;
    keep Basin Season Name MaxWindMPH Ocean;
    Basin=upcase(Basin);
    OceanCode=substr(Basin,2,1);
    if OceanCode="I" then Ocean="Indian";
    else if OceanCode="A" then Ocean="Atlantic";
    else Ocean="Pacific";
run;

data storm_summary2;
    set s40dat.storm_summary;
    keep Basin Season Name MaxWindMPH Ocean;
    Basin=upcase(Basin);
    OceanCode=substr(Basin,2,1);
    if OceanCode="I" then Ocean="Indian";
    else if OceanCode="A" then Ocean="Atlantic";
    else Ocean="Pacific";
       length Ocean $ 8;
run;

/*Warning message in log!

WARNING: Length of character variable Ocean has already been set. 
          Use the LENGTH statement as the very first statement in the DATA STEP to declare the length of a character variable.
*/
