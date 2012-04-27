
process cI 2
process cro 3
process cII 1
process N 1

GRN([
  cI 2 -> + cI; cI 2 -> - cro; cI 2 -> - cII; cI 1 -> - N;
  cro 3 -> - cro; cro 1 -> - cI; cro 2 -> - N; cro 3 -> - cII;
  cII 1 -> + cI;
  N 1 -> + cII;
])

COOPERATIVITY([cI;cro] -> N 0 1, [[0;0];[0;1]])
COOPERATIVITY([cI;cro] -> N 1 0, [[0;2];[0;3];[1;0];[1;1];[1;2];[1;3];[2;0];[2;1];[2;2];[2;3]])

COOPERATIVITY([cI;cro] -> cro 0 1, [[0;0];[1;0]])
COOPERATIVITY([cI;cro] -> cro 1 2, [[0;1];[1;1]])
COOPERATIVITY([cI;cro] -> cro 2 3, [[0;2];[1;2]])
COOPERATIVITY([cI;cro] -> cro 3 2, [[0;3];[1;3];[2;3]])
COOPERATIVITY([cI;cro] -> cro 2 1, [[2;2]])
COOPERATIVITY([cI;cro] -> cro 1 0, [[2;1]])

COOPERATIVITY([cI;cro;N] -> cII 0 1, [[0;0;1];[0;1;1];[0;2;1];[1;0;1];[1;1;1];[1;2;1]])
COOPERATIVITY([cI;cro;N] -> cII 1 0, [[0;0;0];[0;1;0];[0;2;0];[0;3;0];[0;3;1];[1;0;0];[1;1;0];[1;2;0];[1;3;0];[1;3;1];
                                      [2;0;0];[2;0;1];[2;1;0];[2;1;1];[2;2;0];[2;2;1];[2;3;0];[2;3;1]])

COOPERATIVITY([cI;cro;cII] -> cI 0 1, [[0;0;0];[0;0;1];[0;1;1]])
COOPERATIVITY([cI;cro;cII] -> cI 1 2, [[1;0;0];[1;0;1];[1;1;1]])
COOPERATIVITY([cI;cro;cII] -> cI 2 1, [[2;1;0];[2;2;0];[2;3;0]])
COOPERATIVITY([cI;cro;cII] -> cI 1 0, [[1;1;0];[1;2;0];[1;3;0]])

initial_state cI 2, cro 0, cII 0, N 0

