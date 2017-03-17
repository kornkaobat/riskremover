# riskremover
A batch antivirus migrated from riskremove.blogspot.com.

--Key Features--: MD5 scanning engine, Web Firewall (which sucks).

--MD5 scanning engine--

This MD5 scanning engine uses https://virusshare.com/hashes.4n6 for md5 malware database. As of v.2.2.0, the antivirus database contains
786432 *unique* samples for each malware itself. The scanning engine consists of John Walker's Formilab MD5 Command Line Message Digest Utility http://www.fourmilab.ch/md5/ and SachaDee http://stackoverflow.com/questions/40192417/how-to-make-a-md5-batch-virus-scanner md5 scanning codes.   

*Crashing MD5 for different files **IS possible**but, the probabillity is very low and is discussed here: https://security.stackexchange.com/questions/52461/how-weak-is-md5-as-a-password-hashing-function.

--Web firewall--

This Web Firewall sucks. It only filters out 20 most dangerous pages on the internet and lets you choose you favourite browser to browse
the *safe-or-so* pages which isn't included in the filter list of pages. This could become a *good* feature again with a help of everyone
to find and commit in their dangerous webpages little by little.

--Status--

Needs help in commiting a lot of features from everyone possible.

--Version Notes--

Release Notes:

( version 0.1 - 1.2 are lost because I moved to a new computer and at that time I was a kid that didn't know about dropbox and I didn't have a usb too. Sorry. )

Program ver. Database ver. SafeBrowser Database ver. MD5 Database Count Info

0.1          0.1.2013              -                        -            First Ver...

0.2          0.2.2013              -                        -            Added ZeroAccess and Bug Fixes...

0.3          0.2.2013              -                        -            Bug Fixes

0.4          0.2.2013              -                        -            Bug Fixes and added :404 Moldule (Stable enough version)

1.0          0.2.2013              -                        -            Added Many Moldule...Fixed Bug .etc

1.1          0.2.2013              -                        -            Bug and Name Error Fix

1.2          0.2.2013              -                        -            Fixes Moldule Lanch Bug

1.2B         0.3.2013              -                        -            Developers Release

1.3          1.0.2014              -                        -            HUGE IMPROVEMENT (Its so many so i cant tell it here...)

1.3.1        1.0.2014              -                        -            Added infomation to the error log,add computer's time to the main menu and fixed some file exist checker bug

1.3.1        1.1.2014              -                        -            Added 2 malware to the database.

1.3.2        1.1.2014              -                        -            Added time to the menu

1.3.3        1.1.2014              -                        -            Change name to make it able to run within cmd environment and added some REMs in the top of code.

2.0.0        1.1.2014              -                        -            Added updrade module

2.1.0        1.1.2014           0.1.2015                    -            Added SafeBrowser Moldule and remove updrade module cause of some error.

2.1.1        1.0.2015           0.1.2015                    -            Added Change Time Moldule, Database update ( add baidu products and fake av ), copyright disclaimer, fixed some bug, add advanted logging system and changes some word in full scan slide.

2.2.0        1.0.2015           0.1.2015                  786432         Added MD5 scanning moldule, UAC request and Fullscreen support.     

