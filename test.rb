#変数の宣言と代入
# 変数名 = 式や値 宣言と代入を同時に行う

str = "Hello"
int = 123 * 2

p str
p int

#変数名は小文字のスネークケースで書く
#スネークケースとは単語を_で区切る記法　⇔ キャメルケース 単語を大文字で区切る記法
# 同時に変数に代入することもできる(多重代入)

a,b = 5,6
p a
p b

# ""で囲むと改行が反映され、式展開が利用できる。''で囲むと改行が反映されない

puts "ダブルクオートで囲った文字です。\n 改行です"
puts 'シングルクオートで囲った文字です。 \n 改行です'
puts "式展開の例。 #{a}"

# 文字列の比較
# 文字列が等しいかどうかを比較するには == を、異なるかどうかは != を利用して比較する

p "Ruby" == "Ruby"
p "Ruby" != "Ruby"
c = 10
d = 10
p c == d
p c != d

# 大小関係の比較には　<,<=,>,>=を利用する。文字列の場合はバイト値が比較基準となり、bytesメソッドでバイト値を確認できる

p "a".bytes
p "b".bytes
p "a" < "b"

#数値には_を含めることができ、_は無視されるため区切る文字として利用できる

e = 100_000_000
p e

# 四則演算は + - / *を利用する。あまりを求める場合は % を利用する

p 10 + 5
p 10 - 5
p 10 / 5
p 10 * 5
p 10 % 5
p 10 % 3

# 整数同士の割り算は整数となり、小数点以下は切り捨てられてしまう。どちらかの値に.0をつけることで小数点以下も算出可能。また変数に整数が入力されている場合はto_fメソッドで少数に変更可能

p 1 / 2
p 1.0 / 2
f = 1
p f.to_f / 2

# **を利用することでべき乗を求めることも可能

p 2 ** 10

# 演算子による比較も<,<=,>,>=を利用する

p 1 < 2
p 10 + 5 < 14
p 10 <= 5 + 5
p 100 + 5 >= 105
p 100 != 50 + 50

# 数学と同様に + - よりも * / が優先されて計算される

p 10 * 5 + 50
p 10 / 2 + 5

# 優先順位を変更する場合は()で囲う

p 10 + 5 * 3 + 5
p (10 + 5) * (3 + 5)

# 変数に格納された数値の増減
# Rubyでは他の言語にみられるような ++ -- のような演算子はなく、+= -= を利用する

g = 1
p g += 1
p g -= 1

# *=,/=,**=を利用できる

h = 3
p h *= 5 # hを5倍する

i = 3
p i/= 3 # iを3で割る

j = 5
p j**= 5 # jの5乗を求める

# 文字列と数値の演算はできない。.to_sや.to_iを利用して型を変換する必要がある

k = "5"
l = 5
p k.to_i + l
p k + l.to_s

# 真偽値と条件分岐
# Rubyでは false または nil であれば偽
# それ以外はすべて真となる

m = nil
p true
p if k

if m
  p "データが存在します"
else
  p "データが存在しません"
end

# 論理演算子 &&や||を使用すると複数の条件を1つにまとめることができる。 a && b はaかつbが真のとき、真となる。

n = true
o = true
q =  false
r = false

p n && o
p o && q

# ||は条件１または条件2のいずれかが真であれば真、ともに偽であれば偽を返す

p n || o
p o || q
p q || r

# &&と||は組み合わせて使用することもできる。&& と || は &&が優先される

p n && o || q && r
p n && o && q && r
p (n || q) && (o || r)

# !を使用すると真偽値を反転させることができる

p !n
p !o
p !q
p !r
p !(n && o)

# if文を利用することで条件分岐をさせることができる

if n
  p "nは真です"
else
  p "nは真ではありません"
end

if q
  p "Qは真です"
else
  p "qは真ではありません"
end

s = 10

if s < 15
  p "sは15未満です"
elsif s > 10
  p "sは11以上です"
end

country = "italy"

if country == "japan"
  p "こんにちは"
elsif country == "us"
  p "Hello"
elsif country == "italy"
  p "Ciao"
else
  p "国データが登録されていないようです"
end

# if文は修飾子として文の後ろに置くことも可能

point = 10
day = 1

point *= 5 if day == 1
p point

# 条件のあとにthenを置くことでその条件が真だった場合の処理を一行にまとめることも可能（ただし使用頻度は高くない)

if country == "japan" then p "こんにちは"
elsif country == "us" then p "Hello"
elsif country == "italy" then p "Ciao"
else p "国データが登録されていないようです"
end