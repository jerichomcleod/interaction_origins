 
* Edit the FILE statement to reference the data file on your computer.
 
GET DATA  /TYPE = TXT
 /FILE = "C:\atuscall_2017.dat"
 /DELCASE = LINE
 /DELIMITERS = ","
 /ARRANGEMENT = DELIMITED
 /FIRSTCASE = 2
 /IMPORTCASE = ALL
 /VARIABLES =
TUCASEID A14
TRFNLCLL A7
TUATTMDATE A8
TUATTMPTNO F8
TUATTMWEEK F8
TUHINTID A4
.
VARIABLE LABELS
TRFNLCLL "Final call outcome" /
TUATTMDATE "Date of call attempt" /
TUATTMPTNO "Call attempt number" /
TUATTMWEEK "Which week [out of 8 weeks in sample] call was made" /
TUCASEID "ATUS Case ID [14-digit identifier]" /
TUHINTID "Unique anonymous ATUS interviewer ID for each call attempt" /
.
VALUE LABELS
TRFNLCLL
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1.001 "Complete interview"
2.001 "Sufficient partial"
20.002 "Not eligible: other type of living quarters"
20.011 "Not eligible: designated person underage"
20.022 "Not eligible: designated person in Armed Forces"
20.015 "Not eligible: designated person not a household member"
20.007 "Not eligible: vacant"
20.005 "Not eligible: not used as a regular residence"
21.003 "Not eligible: designated person moved out"
21.002 "Other: designated person absent, ill, or hospitalized - unavailable through closeout"
21.001 "Other: designated person institutionalized, unavailable through closeout"
22.002 "Unknown eligibility: sample unit not found-unreached"
24.001 "Other: language barrier"
25.001 "Other: unconverted hearing barrier"
172.001 "Not eligible: removed from sample"
172.002 "Other: invalid input"
176.001 "Refusal: Congressional case"
179.001 "Refusal: hostile breakoff"
181.001 "Refusal: refusal by designated person or gatekeeper"
182.001 "Refusal: manual override by supervisor"
183.001 "Unknown eligibility: exceeded unproductive call maximum"
185.001 "Sufficient partial with planned callback"
186.001 "Refusal: pre-refusal based on explicit refusal or hostile breakoff"
188.001 "Noncontact: incomplete callbacks"
188.003 "Not eligible: temporarily unavailable [institutionalized]"
188.002 "Noncontact: temporarily unavailable [absent, ill, or hospitalized]"
191.001 "Other: unresolved language barrier"
192.001 "Other: hearing barrier"
193.001 "Unknown eligibility: privacy detectors"
194.001 "Noncontact: never contacted, confirmed number"
195.001 "Unknown eligibility: never contacted, unconfirmed number"
199.001 "Unknown eligibility: never tried, no telephone number household"
/
TUATTMWEEK
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "Attempt made outside of 8-week period"
1 "1st week"
2 "2nd week"
3 "3rd week"
4 "4th week"
5 "5th week"
6 "6th week"
7 "7th week"
8 "8th week"
/
.
 
CACHE.
EXECUTE.
