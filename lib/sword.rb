require'hobbit';require'tilt';Sword=s=Class.new Hobbit::Base;def s.l;s=[];Dir['**/*'].each{|f|
(t=Tilt[f])?get("/#{f.chomp File.extname f}#{Rack::Mime::MIME_TYPES.key m=t.default_mime_type}"){
response.headers['Content-Type']="#{m};charset=utf-8";t.new(f).render}:s<<"/#{f}"};use Rack::Static,
:urls=>s;get('*'){($v=nil;raise)if$v==$v=env['REQUEST_PATH'];(k=self.class).instance_eval{
routes['GET']=[]};k.l;response.redirect$v}end
