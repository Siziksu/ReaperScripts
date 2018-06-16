track = reaper.GetSelectedTrack(0, 0) -- Get current track
if track ~= nil then    
    -- Toggle track arm
    track_info = reaper.GetMediaTrackInfo_Value(track, "I_RECARM")
    if track_info == 1.0 then
        reaper.SetMediaTrackInfo_Value(track, "I_RECARM", 0.0)
    else
        reaper.SetMediaTrackInfo_Value(track, "I_RECARM", 1.0)
    end
end
