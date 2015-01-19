Array.prototype.delete = (element)->
  id = this.indexOf(element)
  if id == -1
    this
  else
    this.slice(0, id).concat this.slice(id+1)
