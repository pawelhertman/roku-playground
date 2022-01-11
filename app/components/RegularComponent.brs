sub init()
  m.integerVariable = 1000
  m.textVariable = "texttesttexttest"
  m.objectVariable = { a: "a", b: "b", c: "c", d: "d" }
  m.output = 0

  m.regularBackground = m.top.findNode("regularBackground")
  m.regularLabel = m.top.findNode("regularLabel")
  m.test = m.top.findNode("regularTest")
  m.test.observeFieldScoped("output", "_onOutput")
end sub

sub _onOutput(evt as Object)
  m.output = evt.getData()
end sub