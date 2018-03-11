module SongsHelper

  def artist_field(song)
    if song.artist_id.nil? 
      select_tag "post[author_id]", options_from_collection_for_select(Author.all, :id, :name)
    else
      hidden_field_tag :artist_id
    end 
  end 
end
