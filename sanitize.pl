%to be completed
			      

isProblematic(S) :-
                  sub_string(S, _, _, _, 'bong');
                  sub_string(S, _, _, _, 'wasted');
                  sub_string(S, _, _, _, 'snorted');
                  sub_string(S, _, _, _, 'drinking').

rule2Post(ID, user) :- waslike(ID, number), friends(user, amount), number < amount * (2 / 10).

% the final rule to build
% toBeCheckedPost(User, IntViewer, ID) :- ...

%setof(ID, toBeCheckedPost(joe, rick, ID), S).
