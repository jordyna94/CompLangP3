% friends of joe
friends(joe, [john, ann, pete, ellen, 
              maria, jose, bruno, ali, jing, yang]).
friends(john, [rick]).
friends(ellen, [mia, xing, jun, maria]).
friends(maria, [pete, ellen, zhang, jose, serena]).
friends(serena, [ali, rick, zhang, mia]).
friends(jose, [maria, jose, bruno, ali, jing]).

% post(postId, poster, message)
post(p1, joe,'Comparative Languages Rocks!').
post(p2, joe, 'I am so wasted!').
post(p3, joe, 'This is the biggest bong I have ever smoked!').
post(p4, joe, 'Love drinking milk at 2am').
post(p5, joe, 'Got this project finally to work!').
post(p6, joe, 'No way the semester is almost over!').
post(p7, joe, 'Prolog is now my favorite language!').

like(john, p1).
comment(john, p1, 'Cool!').

like(john, p2).
like(pete, p2).
comment(ann, p2, 'Oh, no!').

like(ellen, p3).
like(john, p3).
like(pete, p3).
comment(ellen, p3, 'Love it!').
comment(ellen, p3, 'How does it feel?').
comment(john, p3, '?!').

like(john, p5).
like(maria, p5).
like(jose, p5).
like(bruno, p5).

comment(john, p6, 'I know!').
comment(ann, p6, 'Hard to believe!').
comment(jing, p6, 'Time freaking flies!').
