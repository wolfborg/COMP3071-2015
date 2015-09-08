
/*
Introduction to Prolog predicates, atoms, variables, facts and rules.

Predicates include facts and rules.
Prolog assumes anything undefined is false (this is the closed world assumption).

Anything that starts with a lower case is an atom (a defined constant).
Anything that starts with an uppercase letter is a variable.

loves (defined below) is a predicate. The names are atoms, X is a variable.

These are facts.
*/
loves(joey,X).        /* joey loves everybody (X is a variable) */
loves(X,raymond).     /* everybody loves raymond (X is a variable) */
loves(john,bill).     /* john loves bill */
loves(john,susan).    /* john loves susan */
loves(bill,susan).    /* bill loves susan */
loves(bill,ian).      /* bill loves ian */
loves(susan,bill).    /* suan loves bill */

man(joey). /* joey is a man */
man(john). /* john is a man */
man(bill). /* bill is a man */
man(ian).  /* ian is a man */
man(raymond). /* raymond is a man */

woman(sally). /* sally is a woman */
woman(susan).

/* 
    If X and Y love each other, they also like each other.
    :- means implication. P :- Q. reads as: if Q, then P.
 */
likes(X,Y):- loves(X,Y).

/*
    If two people love each other (X loves Y and Y loves X), it's true love.
    , means and. P, Q. reads as: P and Q.
*/
true_love(X,Y):- loves(X,Y),loves(Y,X).

/*
    If two different people love the same person, they'll be jealous.
    ; means or. P; Q. reads as: P or Q.
    () means group. (P ; Q), R. reads as: (P or Q) and R.
*/
jealous(X,Y,Z):- (loves(X,Z),loves(Y,Z));(loves(Z,X),loves(Z,Y)).

