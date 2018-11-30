EXECUT	=	calculator
LIB		=	libStat.a
CXX		=	g++
SRCL	=	calculator.cpp
SRC		=	main.cpp
OBJL	=	$(SRCL:.cpp=.o)
OBJ		=	$(SRC:.cpp=.o)
FLAGS	=	-Wall -Wextra -Werror

all:	$(EXECUT)

%.o:	%.cpp %.h
	$(CXX) $(FLAGS) -o $@ -c $<

$(LIB): $(OBJL)
	ar rc $(LIB) $(OBJL)

$(EXECUT): $(LIB) $(OBJ)

$(EXECUT): $(LIB)
	$(CXX) $(FLAGS) -o $(EXECUT) $(OBJ) $(LIB)


clean:
	rm -f $(OBJL) $(OBJ)

fclean: clean
	rm -f $(EXECUT) $(LIB)

re: fclean all