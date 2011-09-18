require 'bundler'
Bundler.require



project_root = File.expand_path(File.dirname(__FILE__))

assets = Sprockets::Environment.new(project_root) do |env|
  env.logger = Logger.new(STDOUT)
end

#assets.append_path('assets')
assets.append_path(File.join(project_root, 'assets'))
assets.append_path(File.join(project_root, 'assets', 'images'))
assets.append_path(File.join(project_root, 'assets', 'javascripts'))
assets.append_path(File.join(project_root, 'assets', 'stylesheets'))


module AssetHelpers
  def asset_path(name)
    "/assets/#{name}"
  end
end

assets.context_class.instance_eval do
  include AssetHelpers
end

get '/assets/*' do
  new_env = env.clone
  new_env["PATH_INFO"].gsub!("/assets", "")
  assets.call(new_env)
end



get '/', :provides => 'html' do
	@forrst = Forrst::User.find 'kdn'
	@dribbble = Dribbble::Shot.find(109375)
	haml :index
end

get '/css/stylesheet.css' do
    scss :stylesheet
end

get '/js/application.js' do
	coffee :application
end