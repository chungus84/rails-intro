class PagesController < ApplicationController

  def home
    @date = Date.today.strftime("%B #{Date.today.day.ordinalize}")
  end

  def about
  end

  def contact
    search = params[:member]
    @members = ['Ben', 'Rebecca', 'Katherine', 'Alex', 'Celine', 'Lucien']
    if search.present?
      @members = @members.select { |name| name.downcase.starts_with?(search.downcase) }
    end



  end
end
