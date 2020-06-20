class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
    #＠tweets変数に　Tweetモデルの全てを扱えるようにする処理
  end

  def new
    @tweet = Tweet.new
    #@tweet 変数に入ったものは、Tweetモデルクラスに追加されるnewメソッドを適応される。
  end

  def create
    Tweet.create(tweet_params)
    #tweetモデルを作る処理（tweet_paramsはプライベートに記載）
  end

  private
  def tweet_params
    params.require(:tweet).permit(:name, :image, :text)
    #ストロングパラメータ　require（:tweet）とすることで、レスポンスで受け取る各データの内、tweetに関する内容を選ぶ。
    #その後、tweetに入っている中の、name,image,textを受け取るとする。
  end


end
