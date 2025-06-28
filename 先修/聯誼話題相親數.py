def get_divisor_sum(n):
  total = 0
  for i in range(1, n):
    if n % i == 0:
      total += i
  return total
    
while True:
    num = int(input())
    if num == 0:
        break
    partnum = get_divisor_sum(num)
    if partnum != num and get_divisor_sum(partnum) == num:
        print(partnum)
    else:
        print("QQ")
