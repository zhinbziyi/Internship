n = int(input())
words = []
for _ in range(n):
  word = input()
  words.extend(word)
m = int(input())
ans = []
for _ in range(m):
  a = int(input())
  tmp = words[a-1]
  ans.append(tmp)
print("".join(ans))
