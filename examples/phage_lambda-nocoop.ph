
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

initial_state cI 2, cro 0, cII 0, N 0

