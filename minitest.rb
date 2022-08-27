# Minitestの基本について
# プログラムの実行結果が正しいかどうかを判断するために、テスティングフレームワークを利用してテストの自動化を行う
# MinitestはRubyインストール時に一緒にインストールされており、セットアップ不要でRailsのデフォルトテスティングフレームワークにもなっている。
# 基本の雛形は下記の通り

require "minitest/autorun" #ライブラリの読み込み

class SampleTest < Minitest::Test #テストコードここから
  def test_sample
    assert_equal "RUBY","ruby".upcase
    assert_equal "RUBY","ruby".capitalize
  end
end #テストコードここまで

# 8行目のSampleTestの部分がクラス名。
# 慣習的にテストに関するクラスはTestで終わる、または始まる命名をすることが多い。
# またテストコードが記述されたファイル名はクラス名と合わせる。 今回の場合はsample_test.rbとなる。(クラス名はキャメルケース、ファイル名はスネークケース)
# <Minitest::Test はSampleTestがMinitest::Testクラスを継承するための記述
# 9行目~11行目が実行対象となるテストメソッド。Minitestはtest_で始まるメソッドを探して実行するため、メソッド名はtest_で始めることが必須。
# 10行目が実行結果を確認するための検証メソッド
# assert_equal 期待する結果,テスト対象となる式や値 という形で記述する。今回の場合は"ruby".upcaseの実行結果が"RUBY"となることを検証する。
# Minitestには様々な検証メソッドが用意されており、代表的なものは下記の3つ
# assert_equal b,a aがbと等しければパスする
# assert a aが真であればパスする
# refute a aが偽であればパスする