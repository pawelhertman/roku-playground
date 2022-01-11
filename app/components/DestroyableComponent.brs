sub init()
  m.INDEX_LIMIT = 100
  m.textVariable = "texttesttexttest"
  m.objectVariable = { a: "a", b: "b", c: "c", d: "d" }
  m.output = {}

  m.background = m.top.findNode("destroyableBackground")
  m.label = m.top.findNode("destroyableLabel")
  m.child = Invalid

  m.top.observeFieldScoped("index", "_onIndexUpdate")
end sub

sub _onIndexUpdate(evt as Object)
  index = evt.getData()
  if index < m.INDEX_LIMIT
    m.child = m.top.createChild("DestroyableComponent")
    m.child.index = index + 1
    m.child.translation = [5, 5]
    m.child.observeFieldScoped("output", "_onOutput") ' unnecessary - just to create more observers
  end if
end sub

sub _onOutput(evt as Object)
  m.output = evt.getData()
end sub

sub destroy()
  m.INDEX_LIMIT = Invalid
  m.textVariable = Invalid
  m.objectVariable = Invalid
  m.output = Invalid

  m.background = Invalid
  m.label = Invalid

  if m.child <> Invalid
    m.child.callFunc("destroy")
    m.child.unobserveFieldScoped("output")
    m.child = Invalid
  end if

  m.top.unobserveFieldScoped("index")
end sub