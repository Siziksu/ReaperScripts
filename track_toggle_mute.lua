track = reaper.GetSelectedTrack(0, 0) -- Get current track
if track ~= nil then    
    -- Toggle track mute
    track_info = reaper.GetMediaTrackInfo_Value(track, "B_MUTE")
    if track_info == 1.0 then
        reaper.SetMediaTrackInfo_Value(track, "B_MUTE", 0.0)
    else
        reaper.SetMediaTrackInfo_Value(track, "B_MUTE", 1.0)
    end
end
