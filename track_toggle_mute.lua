track = reaper.GetSelectedTrack(0, 0) -- Get current track
if track ~= nil then    
    -- Toggle track mute
    track_info = reaper.GetMediaTrackInfo_Value(track, "B_MUTE")
    reaper.SetMediaTrackInfo_Value(track, "B_MUTE", track_info == 1.0 and 0.0 or 1.0)
end
