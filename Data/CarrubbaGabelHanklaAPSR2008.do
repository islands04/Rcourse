***REPLICATION OF CARRUBBA, GABEL, HANKLA ANALYSIS IN "JUDICIAL BEHAVIOR UNDER POLITICAL CONSTRAINTS", AMERICAN POLITICAL SCIENCE REIVEW, NOVEMBER 2008
***FILE CREATED NOVEMBER 18, 2998	

***create log file of results
set logtype text
***modify location of dataset to appropriate folder/drive

*Table 1

sum ECJPlAgree normnetwobs CommIsPl CommIsDef CommObsPl CommObsDef percham normwobsgov article177 govislit if ECJPlAgree ~=.



*Table 3

*normPl and normDef indicate the weighted observations for plaintiff and defendant, respectively, normalized for the increase in the number of member-states

probit ECJPlAgree percham normPl normDef if article169==1, cluster(casenumber)

probit ECJPlAgree percham CommObsPl CommObsDef normPl normDef if govislit==0 & article177==1, cluster(casenumber)



*Table 4

*without AG

probit ECJPlAgree percham CommIsPl CommIsDef CommObsPl CommObsDef govislit normnetwobs article177 normwobs177 normwobsgov govlit177 normwobsgov177, cluster(casenumber)

lincom normnetwobs + normwobs177


lincom normnetwobs + normwobs177



probit ECJPlAgree percham perobsPl perobsDef if article169==1, cluster(casenumber)

probit ECJPlAgree percham CommObsPl CommObsDef perobsPl perobsDef if govislit==0 & article177==1, cluster(casenumber)


***Table 3-4 analysis with GDP-weighted observations


probit ECJPlAgree percham GDPwobsPl CommObsDef GDPwobsPl GDPwobsDef if govislit==0 & article177==1, cluster(casenumber)


***Tables 3-4 analysis with trade-weighted observations

probit ECJPlAgree percham tradewobsPl tradewobsDef if article169==1, cluster(casenumber)

probit ECJPlAgree percham CommObsPl CommObsDef tradewobsPl tradewobsDef if govislit==0 & article177==1, cluster(casenumber)
