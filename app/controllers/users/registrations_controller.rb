class Users::RegistrationsController < Devise::RegistrationsController
  before_action :ensure_normal_user, only: [:update, :destroy]

  def ensure_normal_user
    redirect_to root_path, alert: 'ゲストユーザーの削除・更新はできません。' if resource.email == 'guest@example.com'
  end
end
