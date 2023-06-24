* NOTE: format names are the same as variable names, except for
        variable names that end in a number.  For these a 1 is replaced
        by an A, a 2 is replaced by a B, and so on.
  Edit the infile statement to reference the data file on your computer.
*;
data atuscall_2016;
infile "c:\atuscall_2016.dat" firstobs=2 dsd missover lrecl=16384 dlm=",";
length
 TUCASEID $14
 TRFNLCLL $7
 TUATTMDATE $8
 TUATTMPTNO 8
 TUATTMWEEK 8
 TUHINTID $4
;
input
 TUCASEID
 TRFNLCLL
 TUATTMDATE
 TUATTMPTNO
 TUATTMWEEK
 TUHINTID
;
label TRFNLCLL = "Final call outcome";
label TUATTMDATE = "Date of call attempt";
label TUATTMPTNO = "Call attempt number";
label TUATTMWEEK = "Which week (out of 8 weeks in sample) call was made";
label TUCASEID = "ATUS Case ID (14-digit identifier)";
label TUHINTID = "Unique anonymous ATUS interviewer ID for each call attempt";
run;
 
proc format;
value $TRFNLCLL /*TRFNLCLL*/
"-1" = "Blank"
"-2" = "Don't Know"
"-3" = "Refused"
"001.001" = "Complete interview"
"002.001" = "Sufficient partial"
"020.002" = "Not eligible: other type of living quarters"
"020.011" = "Not eligible: designated person underage"
"020.022" = "Not eligible: designated person in Armed Forces"
"020.015" = "Not eligible: designated person not a household member"
"020.007" = "Not eligible: vacant"
"020.005" = "Not eligible: not used as a regular residence"
"021.003" = "Not eligible: designated person moved out"
"021.002" = "Other: designated person absent, ill, or hospitalized - unavailable through closeout"
"021.001" = "Other: designated person institutionalized, unavailable through closeout"
"022.002" = "Unknown eligibility: sample unit not found/unreached"
"024.001" = "Other: language barrier"
"025.001" = "Other: unconverted hearing barrier"
"172.001" = "Not eligible: removed from sample"
"172.002" = "Other: invalid input"
"176.001" = "Refusal: Congressional case"
"179.001" = "Refusal: hostile breakoff"
"181.001" = "Refusal: refusal by designated person or gatekeeper"
"182.001" = "Refusal: manual override by supervisor"
"183.001" = "Unknown eligibility: exceeded unproductive call maximum"
"185.001" = "Sufficient partial with planned callback"
"186.001" = "Refusal: pre-refusal based on explicit refusal or hostile breakoff"
"188.001" = "Noncontact: incomplete callbacks"
"188.002" = "Noncontact: temporarily unavailable (absent, ill, or hospitalized)"
"188.003" = "Not eligible: temporarily unavailable (institutionalized)"
"191.001" = "Other: unresolved language barrier"
"192.001" = "Other: hearing barrier"
"193.001" = "Unknown eligibility: privacy detectors"
"194.001" = "Noncontact: never contacted, confirmed number"
"195.001" = "Unknown eligibility: never contacted, unconfirmed number"
"199.001" = "Unknown eligibility: never tried, no telephone number household"
;
value TUATMWEE /*altered: TUATTMWEEK**/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
0 = "Attempt made outside of 8-week period"
1 = "1st week"
2 = "2nd week"
3 = "3rd week"
4 = "4th week"
5 = "5th week"
6 = "6th week"
7 = "7th week"
8 = "8th week"
;
proc contents data=atuscall_2016; run;
