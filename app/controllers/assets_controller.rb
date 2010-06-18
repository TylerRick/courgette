class AssetsController < ApplicationController
  def javascripts
    render_asset("javascripts", "javascript", "js")
  end

  def stylesheets
    render_asset("stylesheets", "css", "css")
  end

  private

  def render_asset(asset_type, file_type, suffix)
    assets_root = File.join(__FILE__, '..', '..', '..', 'assets')
    asset_path = File.expand_path( File.join(assets_root, asset_type, "#{params[:id]}.#{suffix}") )
    send_file asset_path, :type => "text/#{file_type}", :disposition => 'inline'
  end
end