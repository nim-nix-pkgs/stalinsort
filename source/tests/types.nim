import unittest, ../src/stalinsort



suite "Integers":

  test "sort ord asc":
    var z = @[1, 2, 3, 4, 5]; z.stalinSort()
    check z == @[1, 2, 3, 4, 5]
  test "sort ord desc":
    var z = @[5, 4, 3, 2, 1]; z.stalinSort(Descending)
    check z == @[5, 4, 3, 2, 1]
  test "sort unord asc":
    var z = @[3, 5, 1, 2, 4]; z.stalinSort()
    check z == @[3, 5]
  test "sort unord desc":
    var z = @[5, 2, 3, 1, 4]; z.stalinSort(Descending)
    check z == @[5, 2, 1]
  
  test "sorted ord asc":
    check @[1, 2, 3, 4, 5].stalinSorted() == @[1, 2, 3, 4, 5]
  test "sorted ord desc":
    check [5, 4, 3, 2, 1].stalinSorted(Descending) == @[5, 4, 3, 2, 1]
  test "sorted unord asc":
    check @[3, 5, 1, 2, 4].stalinSorted() == @[3, 5]
  test "sorted unord desc":
    check @[5, 2, 3, 1, 4].stalinSorted(Descending) == @[5, 2, 1]
  
  test "is ord asc":
    check @[1, 2, 3, 4, 5].isStalinSorted()
  test "is ord desc":
    check [5, 4, 3, 2, 1].isStalinSorted(Descending)
  test "is unord asc":
    check not @[3, 5, 1, 2, 4].isStalinSorted()
  test "is unord desc":
    check not @[5, 2, 3, 1, 4].isStalinSorted(Descending)



suite "Floats":

  test "sort ord asc":
    var z = @[1.2, 2.34, 3.456, 4.56, 5.6]; z.stalinSort()
    check z == @[1.2, 2.34, 3.456, 4.56, 5.6]
  test "sort ord desc":
    var z = @[5.4, 4.32, 3.21, 2.1, 1.0]; z.stalinSort(Descending)
    check z == @[5.4, 4.32, 3.21, 2.1, 1.0]
  test "sort unord asc":
    var z = @[3.1, 5.2, 1.3, 2.4, 4.5]; z.stalinSort()
    check z == @[3.1, 5.2]
  test "sort unord desc":
    var z = @[5.5, 2.4, 3.3, 1.2, 4.1]; z.stalinSort(Descending)
    check z == @[5.5, 2.4, 1.2]
  
  test "sorted ord asc":
    check @[1.2, 2.34, 3.456, 4.56, 5.6].stalinSorted() ==
      @[1.2, 2.34, 3.456, 4.56, 5.6]
  test "sorted ord desc":
    check @[5.4, 4.32, 3.21, 2.1, 1.0].stalinSorted(Descending) ==
      @[5.4, 4.32, 3.21, 2.1, 1.0]
  test "sorted unord asc":
    check @[3.1, 5.2, 1.3, 2.4, 4.5].stalinSorted() == @[3.1, 5.2]
  test "sorted unord desc":
    check @[5.5, 2.4, 3.3, 1.2, 4.1].stalinSorted(Descending) ==
      @[5.5, 2.4, 1.2]
  
  test "is ord asc":
    check @[1.2, 2.34, 3.456, 4.56, 5.6].isStalinSorted()
  test "is ord desc":
    check @[5.4, 4.32, 3.21, 2.1, 1.0].isStalinSorted(Descending)
  test "is unord asc":
    check not @[3.1, 5.2, 1.3, 2.4, 4.5].isStalinSorted()
  test "is unord desc":
    check not @[5.5, 2.4, 3.3, 1.2, 4.1].isStalinSorted(Descending)



suite "Strings":

  test "sort ord asc":
    var z = @["ayy", "bee", "cee", "dee", "ee"]; z.stalinSort()
    check z == @["ayy", "bee", "cee", "dee", "ee"]
  test "sort ord desc":
    var z = @["ee", "dee", "cee", "bee", "ayy"]; z.stalinSort(Descending)
    check z == @["ee", "dee", "cee", "bee", "ayy"]
  test "sort unord asc":
    var z = @["cee", "ee", "ayy", "bee", "dee"]; z.stalinSort()
    check z == @["cee", "ee"]
  test "sort unord desc":
    var z = @["ee", "bee", "cee", "ayy", "dee"]; z.stalinSort(Descending)
    check z == @["ee", "bee", "ayy"]
  
  test "sorted ord asc":
    check @["ayy", "bee", "cee", "dee", "ee"].stalinSorted() ==
      @["ayy", "bee", "cee", "dee", "ee"]
  test "sorted ord desc":
    check @["ee", "dee", "cee", "bee", "ayy"].stalinSorted(Descending) ==
      @["ee", "dee", "cee", "bee", "ayy"]
  test "sorted unord asc":
    check @["cee", "ee", "ayy", "bee", "dee"].stalinSorted() == @["cee", "ee"]
  test "sorted unord desc":
    check @["ee", "bee", "cee", "ayy", "dee"].stalinSorted(Descending) ==
      @["ee", "bee", "ayy"]
  
  test "is ord asc":
    check @["ayy", "bee", "cee", "dee", "ee"].isStalinSorted()
  test "is ord desc":
    check @["ee", "dee", "cee", "bee", "ayy"].isStalinSorted(Descending)
  test "is unord asc":
    check not @["cee", "ee", "ayy", "bee", "dee"].isStalinSorted()
  test "is unord desc":
    check not @["ee", "bee", "cee", "ayy", "dee"].isStalinSorted(Descending)