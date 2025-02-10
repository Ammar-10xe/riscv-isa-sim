.text

// start code here
_start:
    li a0,0xdeadbeef
    la t0, result
    sw a0, 0(t0)
    lb s0, 0(t0)
    lbu s1, 0(t0)
    lh s2, 0(t0)
    lhu s3, 0(t0)
    lw s4, 0(t0)

write_tohost:
    li x1, 1
    sw x1, tohost, t5
    j write_tohost
    
.data
.align 4
result: .word 0

.align 12
.section ".tohost","aw",@progbits;
.align 4; .global tohost; tohost: .dword 0;
.align 4; .global fromhost; fromhost: .dword 0;
