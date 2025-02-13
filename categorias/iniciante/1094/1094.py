cobaias = {"coelhos": 0, "ratos": 0, "sapos": 0}

n = int(input(""))

for x in range(n):
    line = input("").split(" ")
    if line[1] == "C":
        cobaias["coelhos"] += int(line[0])
    elif line[1] == "R":
        cobaias["ratos"] += int(line[0])
    else:
        cobaias["sapos"] += int(line[0])

total_cobaias = cobaias["coelhos"] + cobaias["ratos"] + cobaias["sapos"]

print(f"Total: {total_cobaias} cobaias")
print(f"Total de coelhos: {cobaias['coelhos']}")
print(f"Total de ratos: {cobaias['ratos']}")
print(f"Total de sapos: {cobaias['sapos']}")

print(f"Percentual de coelhos: {((cobaias['coelhos'] * 100.00) / total_cobaias):.2f} %")
print(f"Percentual de ratos: {((cobaias['ratos'] * 100.00) / total_cobaias):.2f} %")
print(f"Percentual de sapos: {((cobaias['sapos'] * 100.00) / total_cobaias):.2f} %")

