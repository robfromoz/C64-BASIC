2
 � SIDEWINDER MAZE ALGORITHM BY ROB VONK 2023 v � FROM "MAZES FOR PROGRAMMERS" BY JAMIS BUCK, 2015, PAGES 12-15 � � RANDOMISE AND SET MAXIMUM DIMENSIONS OF MAZE �( � BOTH NUMBERS MUST BE ODD OR MAZE WON'T DISPLAY PROPERLY 	2 � WORKS BETTER WITH MX<=21 AND MY<=39 6	< Z��(�TI):MX�39:MY�21:� M$(MY,MX) p	F � CREATE GRID WITH CELL SPACES SURROUNDED BY # FENCES �	P � I�1 � MY:� I�2��(I�2) � 100 �	Z � J�1 � MX:M$(I,J)�"#":� J:� 130 �	d � J�1 � MX:� J�2��(J�2) � M$(I,J)�" ":� 120 �	n M$(I,J)�"#" �	x � J <
� � I:X�2:Y�MY�1:S�2:� START AT BOTTOM LEFT CORNER OF GRID \
� � CARVE TUNNEL RIGHT OR UP? p
� � �(1)�.5 � 200 �
� � X�MX�1 � 200 �
� � CARVE TUNNEL RIGHT �
� X�X�2:M$(Y,X�1)�" ":� 150 �
� � PICK A TUNNEL CELL IN SET AND CARVE TUNNEL UP FROM IT � T��(�(1)�((X�S)�2�1))�2�S A� � IF NOT AT RIGHT END, KEEP MOVING RIGHT n� M$(Y�1,T)�" ":� X�MX�1 � X�X�2:S�X:� 150 �� � IF ALL THE WAY TO THE RIGHT, MAKE OUR WAY UP TO NEXT ROW �� Y�Y�2:� Y�2 � X�2:S�2:� 150 �� � AT TOP? CARVE HORIZONTAL TUNNEL � I�2 � MX�2:M$(Y,I)�" ":� I '� DISPLAY MAZE E�"�":� 53280,0:� 53281,0 t"� I�1 � MY:� J�1 � MX:� M$(I,J);:� J:�:� I   