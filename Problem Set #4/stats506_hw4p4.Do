cd "D:\OneDrive - sjtu.edu.cn\UMich\Course\STATS506 Computational Methods and Tools in Statistic\Homework\Problem Set #4\"

use "./data/public2022/public2022_use.dta", clear

describe 

display _N

tabulate B3

replace B3 = 0 if B3 < 3 
replace B3 = 1 if B3 >= 3

tabulate B3

svyset CaseID [pw=weight_pop]

svy: logit B3 i.ND2 i.B7_b i.GH1 i.ppeducat i.ppethm

export delimited using "./data/public2022/public2022_use.csv", replace
