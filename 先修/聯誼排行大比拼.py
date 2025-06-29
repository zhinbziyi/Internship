n = int(input())
data = []
for _ in range(n):
    name,score = input().split()
    score = int(score)
    data.append((name, score))
max_score = max(score for name,score in data)
for name,score in data:
    if score == max_score:
        print(name)
