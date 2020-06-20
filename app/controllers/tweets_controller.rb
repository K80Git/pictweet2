class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
    #＠tweets変数に　Tweetモデルの全てを扱えるようにする処理
  end

  def new
    @tweet = Tweet.new
    #@tweet 変数に入ったものは、Tweetモデルクラスに追加されるnewメソッドを適応される。
  end


end
