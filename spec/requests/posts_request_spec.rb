require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe '新規投稿ページ' do
    context "新規投稿ページが正しく表示される" do
      before do
        get posts_new_path
      end

      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
      # ページにタイトルが正しく表示されているかテスト追加
      it 'タイトルが正しく表示されていること' do
        expect(response.body).to include("新規投稿")
      end
    end
  end
end

# コードの解説：
# describe：PostsControllerをテスト対象にすることを示している。
# describe：新規投稿ページの関するテストであることを示している。
# context ：新規投稿ページの正しく表示されることに関するものをまとめる。
# before ：今回は' get posts_new_path 'で新規投稿ページを表示する処理をitの前に行う。
# response.status：この記述することでレスポンスステータスが受け取ることができる。
# eq ：表示成功した時のレスポンスステータスの' 200 'を記述している
# response.body：htmlのデータが入っている
# include：()の中身が含まれているか検証している
