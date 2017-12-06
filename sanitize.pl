% to be completed
			      

isProblematic(S) :-
                  sub_string(S, _, _, _, 'bong');
                  sub_string(S, _, _, _, 'wasted');
                  sub_string(S, _, _, _, 'snorted');
                  sub_string(S, _, _, _, 'drinking').

postProb(e) :- isProblematic(e).

% rule2Post(ID, User) :- 
					waslike(ID, Number), 
					friends(User, Amount), 
					Number < Amount * (2 / 10).

findFriends(User, Person):- friends(User, Person).

findPost(ID, user, message) :- post(ID, user, message).

% the final rule to build
toBeCheckedPost(User, IntViewer, ID) :- 
										friends(User, pete) , friends(User, ali).

% setof(ID, toBeCheckedPost(joe, rick, ID), S).
