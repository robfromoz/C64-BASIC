5
 � ALDOUS-BRODER MAZE ALGORITHM BY ROB VONK 2023 y � FROM "MAZES FOR PROGRAMMERS" BY JAMIS BUCK, 2015, PAGES 55-57 � � RANDOMISE, SET MAXIMUM DIMENSIONS OF MAZE AND SET COUNT OF UNVISITED 	( � CELLS TO ZERO. MX AND MY MUST BOTH BE ODD OR MAZE WON'T DISPLAY PROPERLY =	2 � WORKS BETTER WITH MX<=21 AND MY<=39 d	< � WARNING: THIS ALGORITHM IS SLOW! �	F Z��(�TI):C�0:MX�39:MY�21:� M$(MY,MX),M(MY,MX) �	P � CREATE GRID WITH CELL SPACES SURROUNDED BY # FENCES, AND COUNT EACH �	Z � UNVISITED CELL AS WE GO  
d � I�1 � MY:� I�2��(I�2) � 120 E
n � J�1 � MX:M$(I,J)�"#":� J:� 160 �
x � J�1 � MX:� J�2��(J�2) � M$(I,J)�" ":M(I,J)�0:C�C�1:� 140 �
� M$(I,J)�"#" �
� � J �
� � START AT RANDOM CELL �
� � I:X��(�(1)�(((MX�1)�2)�2�1))�2�2:Y��(�(1)�(((MY�1)�2)�2�1))�2�2 1� � IF UNVISITED CELL COUNT IS ZERO, DISPLAY MAZE A� � C�0 � 460 �� � SET RANDOM DIRECTION NORTH = 1, SOUTH = 2, EAST = 3, WEST = 4 �� � �(�(1)�4�1) � 230,290,350,410 �� � NORTH �� � IF AT VERY TOP TRY NEW DIRECTION �� � Y�2 � 200 8� � IF MOVED INTO UNVISITED CELL, REMOVE WALL TO SOUTH AND SET TO VISITED l� Y�Y�2:� M(Y,X)�0 � M$(Y�1,X)�" ":M(Y,X)�1:C�C�1 v� 180 �� SOUTH �� IF AT VERY BOTTOM TRY NEW DIRECTION �"� Y�MY�1 � 200 ,� IF MOVED INTO UNVISITED CELL, REMOVE WALL TO NORTH AND SET TO VISITED ?6Y�Y�2:� M(Y,X)�0 � M$(Y�1,X)�" ":M(Y,X)�1:C�C�1 I@� 180 TJ� EAST |T� IF AT FAR RIGHT TRY NEW DIRECTION �^� X�MX�1 � 200 �h� IF MOVED INTO UNVISITED CELL, REMOVE WALL TO WEST AND SET TO VISITED rX�X�2:� M(Y,X)�0 � M$(Y,X�1)�" ":M(Y,X)�1:C�C�1 |� 180 #�� WEST J�� IF AT FAR LEFT TRY NEW DIRECTION Z�� X�2 � 200 ��� IF MOVED INTO UNVISITED CELL, REMOVE WALL TO EAST AND SET TO VISITED ��X�X�2:� M(Y,X)�0 � M$(Y,X�1)�" ":M(Y,X)�1:C�C�1 ��� 180 ��� DISPLAY MAZE ��"�":� 53280,0:� 53281,0 C�� I�1 � MY:� J�1 � MX:� M$(I,J);:� J:�:� I   