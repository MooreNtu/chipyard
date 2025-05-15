.section .text
.global vector_add

vector_add:
    # a0: int *a
    # a1: int *b
    # a2: int *c
    # a3: int n

    mv t0, a0  # a
    mv t1, a1  # b
    mv t2, a2  # c
    mv t3, a3  # n

loop:
    vsetvli t4, t3, e32, m1     # 设置VL（32位整数，m1 grouping）
    vle32.v v1, (t0)            # load a
    vle32.v v2, (t1)            # load b
    vadd.vv v3, v1, v2          # v3 = v1 + v2
    vse32.v v3, (t2)            # store c

    slli t5, t4, 2              # offset = vl * 4
    add t0, t0, t5
    add t1, t1, t5
    add t2, t2, t5
    sub t3, t3, t4
    bnez t3, loop

    ret
