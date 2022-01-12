sub init()
    m.timer = m.top.findNode("timer")
    m.timer.observeFieldScoped("fire", "_onTimerFired")
    m.timer.control = "START"
end sub

sub _onTimerFired()
    ?"timer fired"
end sub