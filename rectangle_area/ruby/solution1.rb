# @param {Integer} a
# @param {Integer} b
# @param {Integer} c
# @param {Integer} d
# @param {Integer} e
# @param {Integer} f
# @param {Integer} g
# @param {Integer} h
# @return {Integer}
def compute_area(a, b, c, d, e, f, g, h)
    area_a = (a-c)*(b-d)
    area_b = (e-g)*(f-h)
    overlap = [([c,g].min-[a,e].max),0].max*[([d,h].min-[b,f].max),0].max
    return area_a + area_b - overlap
end

p 16 == compute_area(-2,-2,2,2,-2,-2,2,2)