README

#Simple item recommend system based on EPI2

This is a project from Class CSC 444 class by professor Lenhart K. Schubert from U of R.

EPi2 is a lisp logic tool developed by the team of professor Schubert, you can find references through
http://www.cs.rochester.edu/research/epilog/

There are three members in this group.

1.Yupeng Gou

2.Zining Wen

3.Haosen Wen

We have devloped a simple item recommend system with the help of EPI2.
You just need to choose what you have bought from our list and under what conditions(like happy, health),
Then the system would give your a probability how you could buy it again.

It works on the pure logic, for example:
If you bought a burger and you are happy, it could judge that you dont care weight, and would recommend you more junk food.

If you bought a burger and you are not happy, it could judge that you care weight and may need more exercise, so it would recommend you some exercise equipment.

This is rather a simple system, it could only support 19 items and 5 conditions.
To experience, EPI2 and lisp is required.

Yupeng Gou

University of Rochester

#Instructions:
1.we have added some more predicates and terms to the epilog knowledge base. So please replace the orgin version of el-lexicon.lisp file by the el-lexicon.lisp is our package before you try to use our system.


2.You should first load our “ui” file to start the whole system by type (load “FP_CSC444/ui”) from epi2 file path.


3.After your successfully load our ui file, you can call the “start” function by type (start) to start our system. Then, you just need to follow the directions given by the program. Please note that all the input should be in the form of a list. For example, when input the user’s name, type (kevin) but not kevin. And when input item (tennis), instead of tennis or “tennis”.