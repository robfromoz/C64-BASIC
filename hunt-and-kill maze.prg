5
 � HUNT-AND-KILL MAZE ALGORITHM BY ROB VONK 2024 y � FROM "MAZES FOR PROGRAMMERS" BY JAMIS BUCK, 2015, PAGES 67-69 � � SHUFFLED DIRECTION RANDOM WALK ROUTINE IDEA BY JAMIS BUCK 	( � RANDOMISE, SET MAXIMUM DIMENSIONS OF MAZE, AND SET ARRAYS FOR HUNT 6	2 � ROUTINE DIRECTIONS AND RANDOM WALK DIRECTIONS `	< � WORKS BETTER WITH MX<=21 AND MY<=39 �	F Z��(�TI):MX�39:MY�21:� M$(MY,MX),M(MY,MX),C(4),S(4) �	P � CREATE GRID WITH CELL SPACES SURROUNDED BY # FENCES �	Z � I�1 � MY:� I�2��(I�2) � 110 
d � J�1 � MX:M$(I,J)�"#":� J:� 150 R
n � J�1 � MX:� J�2��(J�2) � M$(I,J)�" ":M(I,J)�0:� 130 b
x M$(I,J)�"#" j
� � J �
� � START AT RANDOM CELL �
� � I:X��(�(1)�(((MX�1)�2)�2�1))�2�2:Y��(�(1)�(((MY�1)�2)�2�1))�2�2 � � SET RANDOM WALK DIRECTIONS NORTH = 1, EAST = 2, SOUTH = 3, WEST = 4 .� � I�1 � 4:S(I)�I:� I P� � SET CURRENT CELL TO VISITED ]� M(Y,X)�1 �� � SHUFFLE RANDOM WALK DIRECTIONS �� � I�4 � 1 � �1:R��(�(1)�4�1):T�S(R):S(R)�S(I):S(I)�T:� I �� � CYCLE THROUGH LIST OF DIRECTIONS � � I�1 � 4:� S(I) � 250,310,370,430 5� � IF AT VERY TOP TRY NEXT DIRECTION E� � Y�2 � 490 y� IF CELL TO NORTH IS VISITED TRY NEW DIRECTION �� M(Y�2,X)�1 � 490 �� OTHERWISE CARVE TUNNEL NORTH �"Y�Y�2:M$(Y�1,X)�" ":M(Y,X)�1:� 210 ,� IF AT FAR RIGHT TRY NEXT DIRECTION 6� X�MX�1 � 490 I@� IF CELL TO EAST IS VISITED TRY NEW DIRECTION `J� M(Y,X�2)�1 � 490 �T� OTHERWISE CARVE TUNNEL EAST �^X�X�2:M$(Y,X�1)�" ":M(Y,X)�1:� 210 �h� IF AT VERY BOTTOM TRY NEXT DIRECTION �r� Y�MY�1 � 490 |� IF CELL TO SOUTH IS VISITED TRY NEW DIRECTION 2�� M(Y�2,X)�1 � 490 U�� OTHERWISE CARVE TUNNEL SOUTH |�Y�Y�2:M$(Y�1,X)�" ":M(Y,X)�1:� 210 ��� IF AT FAR LEFT TRY NEXT DIRECTION ��� X�2 � 490 ��� IF CELL TO WEST IS VISITED TRY NEW DIRECTION ��� M(Y,X�2)�1 � 490  �� OTHERWISE CARVE TUNNEL WEST G�X�X�2:M$(Y,X�1)�" ":M(Y,X)�1:� 210 z�� IF THERE'S NOWHERE TO GO, BEGIN HUNT ROUTINE ��� I ��� START SCAN FROM TOP LEFT HAND CORNER OF MAZE, SET AVAILABLE DIRECTION ��� FLAGS TO ZERO C�0:C(1)�0:C(2)�0:C(3)�0:C(4)�0:F�0:X�2:Y�2 "� SCAN CELL 7� M(Y,X)�1 � 810 _&� IF AT VERY TOP TRY NEXT DIRECTION o0� Y�2 � 600 �:� OTHERWISE ADD NORTH TO LIST OF AVAILABLE DIRECTIONS �D� M(Y�2,X)�1 � C�C�1:F�1:C(C)�1 �N� IF AT FAR RIGHT TRY NEXT DIRECTION 	X� X�MX�1 � 640 Bb� OTHERWISE ADD EAST TO LIST OF AVAILABLE DIRECTIONS fl� M(Y,X�2)�1 � C�C�1:F�1:C(C)�2 �v� IF AT VERY BOTTOM TRY NEXT DIRECTION ��� Y�MY�1 � 680 ��� OTHERWISE ADD SOUTH TO LIST OF AVAILABLE DIRECTIONS �� M(Y�2,X)�1 � C�C�1:F�1:C(C)�3 6�� IF AT FAR LEFT, SEE IF WE HAVE ANYWHERE TO GO F�� X�2 � 720 �� OTHERWISE ADD WEST TO LIST OF AVAILABLE DIRECTIONS ��� M(Y,X�2)�1 � C�C�1:F�1:C(C)�4 ��� NOWHERE TO GO? SEE IF WE CAN MOVE TO THE NEXT CELL ��� F�0 � 810 5�� CHOOSE RANDOM DIRECTION FROM THOSE AVAILABLE AND LINK CURRENT CELL ]�� TO VISITED CELL IN THAT DIRECTION ��� C(�(�(1)�C�1)) � 760,770,780,790 ��M$(Y�1,X)�" ":� 190 �M$(Y,X�1)�" ":� 190 �M$(Y�1,X)�" ":� 190 �M$(Y,X�1)�" ":� 190  � IF NO MORE UNVISITED CELLS, DISPLAY MAZE /*� X�MX�1 � Y�MY�1 � 850 N4� X�MX�1 � X�2:Y�Y�2:� 540 ^>X�X�2:� 540 {H� MAKE ENTRANCE AND EXIT �RM$(1,2)�" ":M$(MY,MX�1)�" " �\� DISPLAY MAZE �f�"�":� 53280,0:� 53281,0:� I�1 � MY:� J�1 � MX �p� M$(I,J);:� J:�:� I   