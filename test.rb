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

# Rubyではdefを利用してメソッドを定義する。メソッド名は変数と同様にスネークケースで書く

def add(a,b)
  p a + b
end

add(10,5)

# 引数がないメソッドの場合は()をつけないことが多い

def greet
  p "こんにちは"
end

greet

# fizzbuzzプログラムの実装
# 3で割り切れる数値を引数に渡すと"Fizz"を返す
# 5で割り切れる数値を引数に渡すと"Buzz"を返す
# 15で割り切れる数値を引数に渡すと"FizzBuzz"を返す。
# それ以外の数値はその数値を文字列に変えて返す。

def fizzbuzz(a)
  if a % 15 == 0
    p "FizzBuzz"
  elsif a % 5 == 0
    p "Buzz"
  elsif a % 3 == 0
    p "Fizz"
  else
    p a.to_s
  end
end

fizzbuzz(15)
fizzbuzz(20)
fizzbuzz(9)
fizzbuzz(22)

# クラスについて
# .classメソッドを呼び出すことでクラス名を確認することができる

p "abc".class #文字列はStringクラス

# 文字列は途中で改行することも可能

puts "abc
def"

# 長文に渡るときはヒアドキュメントを利用すると便利

t = <<TEXT
ヒアドキュメントのテスト
識別子(ここではTEXT)間の文章を書くときに便利
三行目
四行目
TEXT

puts t

# ヒアドキュメント内でも式展開が可能

u = <<TEXT
ヒアドキュメントのテスト
15でfizzbuzzメソッドを実行した結果は
#{fizzbuzz(15)}です
TEXT

puts u

# ヒアドキュメントの識別子にメソッドを利用することも可能

o = <<TEXT.upcase
abcdefghijkenl
TEXT

puts o

# 整数リテラル
# 2進数の場合は0b 8進数の場合は0 16進数の場合は0xという基数指示子を先頭につけることで10進数以外の記数法で整数値を書くことができる

p 0b11111111 # 2進数
p 0377 #8進数
p 0xff #16進数

# 数値のクラス
# 数値は整数であればintegerクラス 少数はfloatクラスとなる

p 10.class
p 10.5.class

# 有理数はRationalクラス 複素数はcomplexクラスとなる

rational =  2 / 3r
p rational.class

complex = 0.3 - 0.5i
p complex.class

# これらの数値クラスはNumeric（数値）クラスと継承関係にある

# && や　|| の戻り値は必ずしもtrue/falseにならず、最後に評価された式が返される

p 1 && 2 && 3
p 1 && nil && 3 # nil が評価された段階で式全体の偽が確定したため、nilまでで評価が終了し、nilが返る
p 1 && false && 3 # falseもnil同様

# && || ! に近いものとしてand or not がある

tr = true
fa = false

p fa and tr
p tr or fa

# 優先順位は　! && || not and or なので! && || と同様には利用できない

# unless文 ifと反対の意味を持つ。ifは条件が真のときのみ実行される一方、unlessは条件が偽のときのみ実行される

status = "error"
if status != "ok"
  p "なにか異常があります"
end

unless status == "ok"
  p "なにか異常があります"
end

# unlessにelseを組み合わせて条件が真だった場合の処理を書くことも可能

unless status == "ok"
  p "なにか異常があります"
else
  p "異常はありません"
end

# if文同様に戻り値を変数に代入したり、修飾子として文の後ろに置くことも可能。

message =
  unless status == "ok"
    "なにか異常があります"
  else
    "正常です"
  end

p message

p "なにか異常があります" unless status == "ok"

# if文同様thenを入れることも可能

# case文
# 1つのオブジェクト/式を複数の値と比較する場合はelsifを複数書くよりもcase文を利用したほうがシンプルになる

case status
when "ok"
  p "case文でstatusがok"
when "error"
  p "case文でstatusがerror"
else
  p "case文でstatusがそれ以外"
end

# case文ではwhen節に複数の値を指定して、いずれかに一致すれば処理を実行するという条件分岐も可能

country = "日本"

case country
when "america","アメリカ"
  p "Hello"
when "japan","日本"
  p "こんにちは"
when "italy","イタリア"
  p "Ciao"
else
  p "当てはまる国がありません"
end

# case文をif文同様、最後に評価された式を戻り値として返すため、結果を変数に入れることが可能

message =
  case country
  when "america","アメリカ"
    "hello"
  when "japan","日本"
    "こんにちは"
  when "italy","イタリア"
    "Ciao"
  else
    "当てはまる国がありません"
  end

p message

# thenも使用可能

country = "india"

case country
when "america","アメリカ" then p "Hello"
when "japan","日本" then p "こんにちは"
when "italy","イタリア" then p "Ciao"
else
  p "当てはまる国がありません"
end

# 条件演算子(三項演算子)
# 式?真だった場合の処理:偽だった場合の処理 というように?:を使った条件分岐が可能

# if文の場合

n = 100
if n >= 100
  p "nは100以上です"
else
  p "nは100未満です"
end

# 三項演算子の場合

p n >= 100? "nは100以上です" : "nは100未満です"

# if/case同様に戻り値を変数に代入することも可能

message = n >= 100? "nは100以上です" : "nは100未満です"

p message

# デフォルト値付きの引数
# Rubyではメソッドを呼び出す際の引数に過不足があるとエラーが発生する

def check_country(country)
  case country
  when "japan"
    p "日本"
  when "us"
    p "アメリカ"
  when "italy"
    p "イタリア"
  when "india"
    p "インド"
  else
    p "該当する国がありません"
  end
end

check_country("aaa")
check_country("japan")
check_country("us")
check_country("italy")
check_country("india")

# エラーを防ぐためにメソッドの引数にデフォルト値を設定することが可能。こうすることでエラーを回避することができる

def show_name(age = 12)
  case age
  when 12
    p "たかし"
  when 13
    p "けんじ"
  when 15
    p "たろう"
  else
    p "該当する名前が存在しません"
  end
end

show_name()
show_name(13)
show_name(15)
show_name(22)

# デフォルト値にはメソッドの戻り値や動的に変わる値を指定することも可能

def show_time(time = Time.now)
  p "#{time}"
end

show_time()

# 述語メソッド
# Rubyのメソッド名は!,?で終わらせることができ、?で終わるメソッドは慣習的に真偽値を返すメソッドとなっている

# empty?メソッド　最初から用意されている述語メソッドで空文字列であればtrue,そうでなければfalseを返す

p "".empty?
p "string".empty?

# include?メソッド　最初から用意されている述語メソッドで引数の文字列が含まれていればtrue,そうでなければfalseを返す

p "abc".include?("c")
p "abc".include?("def")

# odd?メソッド　最初から用意されている述語メソッドで奇数ならtrue,偶数ならfalseを返す
p 1.odd?
p 2.odd?

# even?メソッド　最初から用意されている述語メソッドで偶数ならtrue,奇数ならfalseを返す

p 1.even?
p 2.even?

# nil?メソッド　最初から用意されている述語メソッドでnilであればtrue,nilでなければfalseを返す

p nil.nil?
p "abc".nil?
p 1.nil?

# ?で終わるメソッドは自身で定義することも可能

def multiple_of_five?(n)
  n % 5 == 0
end

p multiple_of_five?(3)
p multiple_of_five?(4)
p multiple_of_five?(5)

# !で終わるメソッドは!がついていないメソッドよりも危険という意味を持つ。
# 例 upcaseメソッドは引数を大文字に変えた新しい文字列を返すが、upcase!メソッドは呼び出した文字列自身を大文字にして返す

a = "ruby"
p a.upcase
p a
p a.upcase!
p a

# このように渡したオブジェクトの状態を変更してしまうメソッドのことを破壊的メソッドという

# エンドレスメソッド定義
# Ruby3系ではendを省略して記述するエンドレスメソッドが使用できる

def normal_hello
  "hello"
end

p normal_hello

def endless_hello = "endlesshello"

p endless_hello

def normal_add(a,b)
  a + b
end

p normal_add(5,10)

def endless_add(a,b) = a + b

p endless_add(5,10)

# 参照の概念
# 変数a,変数bは同じ文字列であるが、オブジェクトとしては別物。どのオブジェクトが参照されているかはobject_idメソッドを実行すると判別可能

a = "string"
b = "string"

p a.object_id
p b.object_id

c = b

p c.object_id # 変数cに変数bを代入するとbとcは同じオブジェクトとなる

# 同じオブジェクトを参照している場合、参照元の変数も変更される

c.upcase!

p c
p b

# require/require_relative
# 組み込みライブラリではない標準ライブラリやgemを利用する際は明示的にライブラリを読み込む必要がある

require "date"
p Date.today

# 自身で作成したRubyプログラムを読み込む場合は require_relative "相対パス" という記述で読み込む