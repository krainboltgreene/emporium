class PagesController < ApplicationController
  def splash
    Account
    @meta_full = true
    downloadables = if Downloadable.top(3).any? then Downloadable.top(3) else Downloadable.limit(3) end
    @top = downloadables.decorate
  end

  def search
    results = Downloadable.search(params[:q]).to_a
    @downloadables = results.map(&:decorate)
  end
end
