track = reaper.GetSelectedTrack(0, 0) -- Get current track
if track ~= nil then    
    -- Toggle track solo
    track_info = reaper.GetMediaTrackInfo_Value(track, "I_SOLO")
    if track_info == 2.0 then
        reaper.SetMediaTrackInfo_Value(track, "I_SOLO", 0.0)
    else
        reaper.SetMediaTrackInfo_Value(track, "I_SOLO", 2.0)
    end
end
