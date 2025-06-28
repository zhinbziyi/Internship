n = int(input())
for _ in range(n):
  a,b,k = map(int,input().split(' '))
  if k == 1:
    if a>b:
      print('A')
    elif a<b:
      print('B')
    else:
      print("DRAW")
  else:
    if a>b:
      print('B')
    elif a<b:
      print('A')
    else:
      print("DRAW")
