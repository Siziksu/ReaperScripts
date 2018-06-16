track = reaper.GetSelectedTrack(0, 0) -- Get current track
if track ~= nil then    
    -- Toggle track solo
    track_info = reaper.GetMediaTrackInfo_Value(track, "I_SOLO")
    reaper.SetMediaTrackInfo_Value(track, "I_SOLO", track_info == 2.0 and 0.0 or 2.0)
end
