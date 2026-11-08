% Task 2 - Login System

% Dataset
user(john, 1234).
user(mary, 5678).
user(ali, 9012).

% Start the login system
main :-
    login(3).

% Login with a maximum of 3 attempts
login(0) :-
    write('Sorry, you exceeded the maximum number of attempts, try again later.'), nl.

login(Attempts) :-
    Attempts > 0,
    write('Enter username: '),
    read(Username),
    write('Enter password: '),
    read(Password),
    check_login(Username, Password, Attempts).

% Correct username and password
check_login(Username, Password, _) :-
    user(Username, Password),
    write('Login Successful'), nl.

% Incorrect username or password
check_login(Username, Password, Attempts) :-
    \+ user(Username, Password),
    write('Login Unsuccessful'), nl,
    NewAttempts is Attempts - 1,
    login(NewAttempts).
