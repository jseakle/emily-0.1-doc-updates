# Test "let" on this (same as obj.this.7, but meth call order is reversed)
# Expect:
# 4.
# 3.

let .obj1 [
    let .meth ^arg{ this.let.var1 arg }
]

let .obj2 [
    let .parent obj1
]

obj2.meth 4
println( obj2.var1 )

obj1.meth 3
println( obj1.var1 )