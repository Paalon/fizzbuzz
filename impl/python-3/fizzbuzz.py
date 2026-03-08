import sys

def word(rule: dict, n: int):
    a = []
    for k in rule.keys():
        a.append(n % k == 0)
    if any(a):
        ws = []
        for i, w in enumerate(rule.values()):
            if a[i]:
                ws.append(w)
        return ' '.join(ws)
    else:
        return str(n)

def play(rule: dict, n: int):
    for i in range(1, n + 1):
        print(word(rule, i))

def main():
    s: str = sys.stdin.read()
    n: int = int(s)
    rule: dict = {3: 'fizz', 5: 'buzz'}
    play(rule, n)

if __name__ == '__main__':
    main()
