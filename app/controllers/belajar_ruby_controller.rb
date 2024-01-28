class BelajarRubyController < ApplicationController
  def index
@aqw1 ="rehan alif" 
@aqw2 ="rehan alif albani"

@aqw3 = [
"1.dota",
"2.aqw",
"3.naruto", 
"5.sinobi",
]
  end
  def tentang
    @naruto = BelajarRuby.all
  end
  def dota
    @naruto = BelajarRuby.find_by(id: params[:id])
  end
  def input
    
  end
  def membuat
    @naruto = BelajarRuby.new(namagame: params[:namagame], komentar: params[:komentar])
    @naruto.save

    flash[:pesan] ="data berhasil di simpan"

    redirect_to("/tentang")
  end
  def edit
    @naruto = BelajarRuby.find_by(id: params[:id])
  end
  def update
    @naruto = BelajarRuby.find_by(id: params[:id])
    @naruto.namagame = params[:namagame]
    @naruto.komentar = params[:komentar]
    @naruto.save
    flash[:pesan] = "data berhasil di edit"
    redirect_to("/tentang")
  end
  def delete
    @naruto = BelajarRuby.find_by(id: params[:id])
    @naruto.destroy
    flash[:pesan] = "data berhasil di hapus"
    redirect_to("/tentang")
  end

end

