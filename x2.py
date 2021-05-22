#!/usr/bin/env python3

def recode(x, trf):
    return trf(ord(x) - 32) % 95 + 32

def ost(x):
    xc = chr(x % 256)
    if xc.isprintable():
        return f" {xc} {x}"
    else:
        return f"   {x}"

def do_cmp_gen(i, j, a, b):
    oa, ob = ord(a), ord(b)
    print(f"{i}/{j}\t: {a} {b}\t^{ost(oa^ob)}\t&{ost(oa&ob)}\t|{ost(oa|ob)}\t-{ost(oa-ob)}")

def do_cmp(i, s):
    for (j, (a, b)) in enumerate(zip("NORZH{}", s[:6] + s[-1])):
        do_cmp_gen(i, j, a, b)

do_cmp(0, "$rj,=[4wgG.b+a$@$I#cjS98@rX")
do_cmp(1, "84W[WiI.GbI=['S+oc]piSCN(f")
