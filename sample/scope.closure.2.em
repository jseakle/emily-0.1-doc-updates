# Test variable binding for an unscoped closure.
# Expect:
# 4.
# 3.

^(
    let .b 3
    println b
) null

println b