def produit(m1: list, m2: list) -> list:
	n = len(m1)
	p = [[0 for j in range(n)] for i in range(n)]
	for i in range(n):
		for j in range(n):
			for k in range(n):
				p[i][j] += m1[i][k] * m2[k][j]
	return p


m1 = [[1, 2, -1], [0, -1, 2], [-1, 1, 0]]
m2 = [[-3, 1, 0], [1, 0, -2], [1, -1, 1]]


def nb_bits(n: int) -> int:
	b = 0
	while n > 0:
		b += 1
		n //= 2
	return b

print(produit(m1,m2))
print(bits(255))
print(bits(256))
