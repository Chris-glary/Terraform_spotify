resource "spotify_playlist" "Bollywood" {
  name="Bollywood"
  tracks=["4hNkNEye4wcDd434D12FIg"]
}
data "spotify_search_track" "eminem" {
    artist = "Eminem"
}
resource "spotify_playlist" "Slimshady" {
  name="Slim_shady"
  tracks=[data.spotify_search_track.eminem.tracks[0].id,data.spotify_search_track.eminem.tracks[1].id,data.spotify_search_track.eminem.tracks[2].id]
}