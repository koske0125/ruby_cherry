
# 配列
# 配列は複数のデータをまとめて格納できるオブジェクトで、インデックスを指定することで指定したデータを取り出すことができる
# 配列はArrayクラスのオブジェクトになっている

a = ["a","b","c"]
p a

str = ["リンゴ","オレンジ","ブドウ"]

p str

# 文字列と数値を混在させて作ることも可能

mix = [1,"リンゴ",2,"オレンジ",3,"ブドウ"]
p mix

# 配列の中に配列を含めることも可能

array_in_array = [["日本","アメリカ","インド"],["ラーメン","うどん","パスタ"]]

p array_in_array

# 配列の各要素を取得するには[]とインデックスを利用する。各要素は左から0.1.2.3...というインデックスが振られている

p mix[1]

# 存在しない要素の場合はエラーではなく、nilが返る

p mix[100]

# sizeメソッドを利用すると配列の要素数を取得することが可能

p mix.size

# 添字を指定して値を代入すると指定した要素を変更することができる
p mix[1]
mix[1] = "りんご"
p mix[1]

# 要素を追加する場合

mix[7] = 4
p mix[7]

# もとの大きさよりも大きい添字を指定すると間の値はnilで埋められる。

mix[10] = "マンゴー"
p mix

# 最後の要素として追加する場合は << を利用する

mix << "パイナップル"
p mix

# 配列の特定の要素を削除する場合はdelete_atメソッドを利用する

mix.delete_at(0)
p mix

# ブロックはメソッドに引数として渡すことのできる処理のかたまり。
# 例としてはeachメソッドが挙げられる。

numbers = [1,2,3,4]
sum = 0

numbers.each do |n|
  sum += n
end

p sum

# 上記の例ではdo ～ endまでがブロックとなり、|n|のnがブロックパラメータと呼ばれ、eachメソッドから渡された要素が入る。
# eachメソッドでは、配列numbersから要素が1つずつnに渡され、ブロック内で順番に処理が行われる。

# delete/delete_ifメソッド

# deleteメソッドは指定した値に一致する要素を削除するdeleteメソッドが用意されている。

b = [1,2,3,4,5,4,3,2,1]
p b
b.delete(3)
p b

# deleteメソッドでは引数で渡した値に完全一致する要素しか削除できない。
# 条件を指定したい場合は、deleteメソッドの代わりにdelete_ifメソッドを利用する。

c = [1,2,3,4,5,4,3,2,1]
p c

c.delete_if do |n|
  n.odd?
end

p c

# delete_ifメソッドもeachメソッド同様に配列の要素を順番に取り出し、ブロックパラメータに渡していく。
# ブロック内での処理はeachとはことなり、真偽値が判定され、戻り値がtrueだった場合は配列からその要素を削除する。

# ブロックはdo,endを使用して改行して記述するだけではなく、{}を利用することでも動作させることができる

d = [1,2,3,4,5,6,7,8,9,10]
p d
p d_sum = 0
d.each {|n| d_sum += 2 * n}
p d_sum

# map/collectメソッド
# mapメソッドは各要素に対して、ブロックを評価した結果を新しい配列にして返す。

new_numbers = [1,2,3,4,5,6,7,8,9,10]
ten_times_numbers = new_numbers.map{|n| n * 10}
p ten_times_numbers

# 上記ではnew.numbersをnに一個ずつ取り出して10倍したものを新しい配列として作成している。

# select/find_all/rejectメソッド
# selectメソッドは各要素に対してブロックを評価し、その戻り値がtrueとなる要素のみを配列にして返すメソッド

three_multiple_numbers = ten_times_numbers.select do|n|
  n % 3 == 0
end

p three_multiple_numbers

# 上記の例では3の倍数のみが配列に格納されて返される

# rejectメソッドはselectのは逆でブロックの評価結果がfalseとなる要素のみを配列にして返すメソッド

not_three_multiple_numbers = ten_times_numbers.reject do |n|
  n % 3 == 0
end

p not_three_multiple_numbers

# findメソッドはブロックの戻り値が最初にtrueになった要素を返すメソッド

minimum_three_multiple_number = three_multiple_numbers.find{|n| n % 3 == 0}
p minimum_three_multiple_number