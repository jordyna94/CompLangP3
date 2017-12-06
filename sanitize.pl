% to be completed
			      

isProblematic(S) :-
                  sub_string(S, _, _, _, 'bong');
                  sub_string(S, _, _, _, 'wasted');
                  sub_string(S, _, _, _, 'snorted');
                  sub_string(S, _, _, _, 'drinking').

% Rule 2. The number of likes is less than 20% of the friends a user has
likesOverMax(ID, User) :- 
					aggregate_all(count,like(_, ID) ,Likes),
					friends(User, People),
					length_1(X, People), 
					Friends is X, 
					V is 2/10, 
					P is V * Friends, 
					Likes < P.

isFriend(User, Friend) :- friends(User, P), memberchk(Friend, P).

% Get the size of a list
length_1(0, []).
length_1(L+1, [H|T]) :- length_1(L,T).

friendsCount(User, List) :- Length(List, X).

findPost(ID, user, message) :- post(ID, user, message).

% the final rule to build
toBeCheckedPost(User, IntViewer, ID) :- ...

% setof(ID, toBeCheckedPost(joe, rick, ID), S).

didComment(User, Person, ID) :- post(I, User, _), comment(Person, I, _).
# This rule doesnt work yet
commentedOn(User, Person, ID) :- 
							didComment(User, P, ID);
							isFriend(User, P).