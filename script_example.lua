function Print(param)
    reaper.ShowConsoleMsg(param.."\n")
end

track = reaper.GetSelectedTrack(0, 0) -- Get current track

if track ~= nil then
    Print("")

    local track_name, track_flags = reaper.GetTrackState(track)
    
    Print("Track Name: " .. track_name)
    Print("Track Flags: " .. track_flags)

    local value = reaper.GetMediaTrackInfo_Value(track, "I_RECMON") -- Track record monitor -- 0.0 or 1.0 or 2.0
    Print("Track record monitor: " .. value)

    value = reaper.GetMediaTrackInfo_Value(track, "D_PAN") -- Track pan -- -1.0 to 1.0
    Print("Track pan: " .. value)

    value = reaper.GetMediaTrackInfo_Value(track, "D_VOL") -- Track volume
    Print("Track volume: " .. value)

    value = reaper.GetMediaTrackInfo_Value(track, "I_RECARM") -- Track arm -- 0.0 or 1.0
    Print("Track arm: " .. value)
    
    value = reaper.GetMediaTrackInfo_Value(track, "I_SOLO") -- Track soloe -- 0.0 or 2.0
    Print("Track solo: " .. value)
    
    value = reaper.GetMediaTrackInfo_Value(track, "B_MUTE") -- Track mute -- 0.0 or 1.0
    Print("Track mute: " .. value)

    value = reaper.GetTrackColor(track) -- Track color
    Print("Track color: " .. value)
    
    -- Toggle track arm
    value = reaper.GetMediaTrackInfo_Value(track, "I_RECARM")
    if value == 1.0 then
        reaper.SetMediaTrackInfo_Value(track, "I_RECARM", 0.0)
    else
        reaper.SetMediaTrackInfo_Value(track, "I_RECARM", 1.0)
    end
else
    Print("")
    Print("No track selected")
end
