module JsonToMashHelper
  def to_mash(json)
    mash = Hashie::Mash.new(JSON.parse json)
    mash
  end
end