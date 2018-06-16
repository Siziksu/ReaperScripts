track = reaper.GetSelectedTrack(0, 0) -- Get current track
if track ~= nil then    
    -- Toggle track fx bypass
    track_info = reaper.GetMediaTrackInfo_Value(track, "I_FXEN")
    reaper.SetMediaTrackInfo_Value(track, "I_FXEN", track_info == 1.0 and 0.0 or 1.0)
end
