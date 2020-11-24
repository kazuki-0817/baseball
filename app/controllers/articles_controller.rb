class ArticlesController < ApplicationController
    before_action :login_required #ログインが必要
  def index
    if params[:user_id]# 個別ユーザー(user_id)の記事を取得
      @user=User.find(params[:user_id])
      @articles=@user.articles  
    elsif params[:team_id]# 選択されたチームに関連する(team_id)記事を取得
      @team=Team.find(params[:team_id])
      @articles=@team.articles
    else
      @articles=Article.all #全記事を取得
    end
    @articles=@articles.order(created_at: :desc).page(params[:page]).per(6) #新しい記事の順番に表示
  end

  def show
    @article=Article.find(params[:id])
  end

  def new
    @article=Article.new(created_at: Time.current)
  end

  def edit
    @article= current_user.articles.find(params[:id])
  end
  def create
    @article=Article.new(article_params)
    @article.author=current_user
    if @article.save
      redirect_to @article,notice: "記事を作成しました。"
    else
      flash.now[:notice]="失敗"
      render "new"
    end
  end
  def update
    @article=current_user.articles.find(params[:id])
    @article.assign_attributes(article_params)
    if @article.save
      redirect_to @article,notice: "記事を更新しました。"
    else
      flash.now[:notice]="失敗"
      render "edit"
    end
  end
  def destroy
    @article=current_user.articles.find(params[:id])
    @article.destroy
    redirect_to :articles,notice: "記事を削除しました。"
  end
  private def article_params
    params.require(:article).permit(
      :user_id,
      :team_id,
      :title,
      :videoid,
      :body,
    )
  end
end
