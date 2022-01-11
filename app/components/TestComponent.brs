sub init()
    m.number = 0
    m.top.findNode("testTimer").observeFieldScoped("fire", "_onFire")
    ' m.top.findNode("testTimer").control = "start"
end sub

sub _onFire(evt as Object)
    m.top.output = m.number
    m.number++
end sub