# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
  first_index(1,n)
end

def first_index( s , e )
  return s if s == e
  x=(s+e)/2
  !is_bad_version(x) ? first_index(x+1, e) : first_index(s, x)
end
