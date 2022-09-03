from algorithm import isSorted, SortOrder; export SortOrder
from sequtils import delete, toSeq

proc stalinSort*[T](a: var seq[T], order: SortOrder = Ascending) =
  ## StalinSort equivalent of the ``algorithm.sort()`` proc.
  ## Modifies the ``var seq[T]`` directly.
  ## 
  ## Big O is guaranteed to be O(n).
  ## 
  ## Sort order defaults to ``Ascending``.
  runnableExamples:
    var x, y = @["boo", "fo", "barr", "qux"]

    x.stalinSort()
    assert x == @["boo", "fo", "qux"]

    y.stalinSort(Descending)
    assert y == @["boo", "barr"]
  var
    b = a # buffer to avoid modification during loop
    s = 0 # index of most recently (s)orted character
    c = 0 # count of how many deletions there have been, for proper indexing
  for i, x in a:
    # compare most recent sort with current item
    if not [a[s], a[i]].isSorted(order): b.delete(i-c, i-c); c += 1
    else: s = i
  a = b

proc stalinSorted*[T](a: openArray[T], order: SortOrder = Ascending): seq[T] =
  ## StalinSort equivalent of the ``algorithm.sorted()`` proc.
  ## Returns the sorted ``openArray[T]``.
  ## 
  ## Big O is guaranteed to be O(n).
  ## 
  ## Sort order defaults to ``Ascending``.
  runnableExamples:
    var x, y = @["boo", "fo", "barr", "qux"]

    assert x.stalinSorted() == @["boo", "fo", "qux"]

    assert y.stalinSorted(Descending) == @["boo", "barr"]
  result = a.toSeq(); result.stalinSort(order)

proc isStalinSorted*[T](a: openArray[T], order: SortOrder = Ascending): bool =
  ## StalinSort equivalent of the ``algorithm.isSorted()`` proc.
  ## Returns ``true`` if sorted, otherwise ``false``.
  ## 
  ## Big O is guaranteed to be O(n).
  ## 
  ## Sort order defaults to ``Ascending``.
  runnableExamples:
    var x = @["boo", "fo", "qux"]
    
    assert x.isStalinSorted()

    assert not x.isStalinSorted(Descending)
  a == a.stalinSorted(order)
