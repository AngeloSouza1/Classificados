class AdsController < ActionController::Base
  before_action :require_logged_user
  helper_method :user_signed_in?, :current_user

  def user_signed_in?
    current_user.present?
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def require_logged_user
    redirect_to new_session_path, alert: "Você precisa estar logado para entrar nessa tela" unless user_signed_in?
  end

  def new
    @ad = Ad.new
  end

  def create
    @ad = current_user.ads.build(ad_params)
    if @ad.save
      redirect_to root_path, notice: "Anúncio criado com sucesso"
    end
  end

  private

  def ad_params
    params.require(:ad).permit(:title, :description, :prince)
  end
end
