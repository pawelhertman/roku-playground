sub init()
  m.removableComponent = Invalid
  m.destroyableComponent = Invalid
  m.timerComponent = Invalid

  _handleButtonSelection("button1", "_createChildToRemove")
  _handleButtonSelection("button2", "_removeChild")
  _handleButtonSelection("button3", "_createChildToDestroy")
  _handleButtonSelection("button4", "_destroyChild")
  _handleButtonSelection("button5", "_comboRemove")
  _handleButtonSelection("button6", "_comboDestroy")
  _handleButtonSelection("button7", "_createTimerComponent")
  _handleButtonSelection("button8", "_removeTimerComponent")
end sub

sub _handleButtonSelection(buttonId as String, callbackName as String)
  m.top.findNode(buttonId).observeFieldScoped("buttonSelected", callbackName)
end sub

sub  _createChildToRemove()
  component = m.top.createChild("DestroyableComponent")
  component.translation = [100, 400]
  component.index = 0

  m.removableComponent = component
end sub

sub _removeChild()
  m.top.removeChild(m.removableComponent)
  m.removableComponent = Invalid
end sub

sub _createChildToDestroy()
  component = m.top.createChild("DestroyableComponent")
  component.translation = [100, 400]
  component.index = 0

  m.destroyableComponent = component
end sub

sub _destroyChild()
  m.destroyableComponent.callFunc("destroy")
  m.top.removeChild(m.destroyableComponent)
  m.destroyableComponent = Invalid
end sub

sub _comboRemove()
  for i = 0 to 19
    _createChildToRemove()
    _removeChild()
  end for
end sub

sub _comboDestroy()
  for i = 0 to 19
    _createChildToDestroy()
    _destroyChild()
  end for
end sub

sub _createTimerComponent()
  m.timerComponent = m.top.createChild("TimerComponent")
end sub

sub _removeTimerComponent()
  m.top.removeChild(m.timerComponent)
  m.timerComponent = Invalid
end sub
