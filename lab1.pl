directTrain(avon, braintree).
directTrain(quincy,avon).
directTrain(newton,boston).
directTrain(boston,avon).
directTrain(braintree,milton).
directTrain(westwood,newton).
directTrain(canton, westwood).


tran(eins,one).
tran(zwei,two).
tran(drei,three).
tran(vier,four).
tran(fuenf,five).
tran(sechs,six).
tran(sieben,seven).
tran(acht,eight).
tran(neun,nine).

% This knowledge base holds facts about towns it is possible to travel between by taking a direct train.
% But of course, we can travel further by chaining together direct train journeys.
% Write a recursive predicate travelBetween/2 that tells us when we can travel by train between two towns.

%calls recursive
travelBetween(X,Y) :- directTrain(X,Y).
travelBetween(X,Z) :- 
	(directTrain(X,Y),travelBetween(Y,Z));
	(directTrain(Y,X), travelBetween(Z,Y)).


% Write a predicate listtran(G,E) which translates a list of German number words to the corresponding list of English number words.

listtran([],[]).
listtran([G|Tail],[E|Tail2]) :- tran(G,E), listtran(Tail,Tail2).

