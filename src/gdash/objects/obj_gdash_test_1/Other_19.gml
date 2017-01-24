/// _filter
test_start("_filter", "returns an array with elements removed when they are falsey in the function");

var arr = _arrayOf(0, 1, 2, 3, 4, 5, 6);

var res = _filter(arr, __isEven);

assert_is_true(_contains(res, 0));
assert_is_true(_contains(res, 2));
assert_is_true(_contains(res, 4));
assert_is_true(_contains(res, 6));

assert_is_false(_contains(res, 1));
assert_is_false(_contains(res, 3));
assert_is_false(_contains(res, 5));

test_end();
