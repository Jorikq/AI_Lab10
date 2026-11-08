% Task 1 - Area and Perimeter

% Square
square_area(Side, Area) :-
    Area is Side * Side.

square_perimeter(Side, Perimeter) :-
    Perimeter is 4 * Side.


% Rectangle
rectangle_area(Width, Height, Area) :-
    Area is Width * Height.

rectangle_perimeter(Width, Height, Perimeter) :-
    Perimeter is 2 * (Width + Height).


% Triangle
triangle_area(Base, Height, Area) :-
    Area is 0.5 * Base * Height.

triangle_perimeter(A, B, C, Perimeter) :-
    Perimeter is A + B + C.
