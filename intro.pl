

/*
love is the predicate (function)
joey is an atom (lowercase first letter)
X ia a variable (uppercase first letter).
*/

loves(joey,X). /* This is just a fact. */
loves(you,me).
loves(you,somebody).
loves(me,seikyung).
loves(me,ian).

/* This is another fact. */
name_of_predicate(SomeVar,AnotherVar,howAboutConst).

/* If X and Y love each other, they also hate each other.
    :- means implication.  P :- Q  means "If Q, then P". */
hates(X,Y):- loves(X,Y).

man(joey).
man(john).
man(me).
man(ian).

woman(seikyung).
woman(somebody).

