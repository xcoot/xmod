.class public abstract Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sDynamicParameters:[[F

.field public static final sParameters:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const/4 v0, 0x3

    .line 2
    const/16 v1, 0x9

    .line 4
    new-array v2, v1, [I

    .line 6
    fill-array-data v2, :array_0

    .line 9
    const/4 v3, 0x6

    .line 10
    new-array v4, v1, [I

    .line 12
    fill-array-data v4, :array_1

    .line 15
    new-array v5, v1, [I

    .line 17
    fill-array-data v5, :array_2

    .line 20
    new-array v6, v1, [I

    .line 22
    fill-array-data v6, :array_3

    .line 25
    new-array v7, v1, [I

    .line 27
    fill-array-data v7, :array_4

    .line 30
    new-array v8, v1, [I

    .line 32
    fill-array-data v8, :array_5

    .line 35
    new-array v1, v1, [I

    .line 37
    fill-array-data v1, :array_6

    .line 40
    new-array v9, v3, [I

    .line 42
    fill-array-data v9, :array_7

    .line 45
    move-object v3, v4

    .line 46
    move-object v4, v5

    .line 47
    move-object v5, v6

    .line 48
    move-object v6, v7

    .line 49
    move-object v7, v8

    .line 50
    move-object v8, v1

    .line 51
    filled-new-array/range {v2 .. v9}, [[I

    .line 54
    move-result-object v1

    .line 55
    sput-object v1, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->sParameters:[[I

    .line 57
    new-array v2, v0, [F

    .line 59
    fill-array-data v2, :array_8

    .line 62
    new-array v3, v0, [F

    .line 64
    fill-array-data v3, :array_9

    .line 67
    new-array v4, v0, [F

    .line 69
    fill-array-data v4, :array_a

    .line 72
    new-array v5, v0, [F

    .line 74
    fill-array-data v5, :array_b

    .line 77
    new-array v6, v0, [F

    .line 79
    fill-array-data v6, :array_c

    .line 82
    new-array v7, v0, [F

    .line 84
    fill-array-data v7, :array_d

    .line 87
    new-array v8, v0, [F

    .line 89
    fill-array-data v8, :array_e

    .line 92
    new-array v9, v0, [F

    .line 94
    fill-array-data v9, :array_f

    .line 97
    filled-new-array/range {v2 .. v9}, [[F

    .line 100
    move-result-object v0

    .line 101
    sput-object v0, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->sDynamicParameters:[[F

    .line 103
    return-void

    .line 104
    nop

    .line 105
    :array_0
    .array-data 4
        0x2
        0x1e5
        0x5
        0x3
        0x375
        0x64
        0x190
        0x1f4
        0x258
    .end array-data

    .line 127
    :array_1
    .array-data 4
        0x3
        0x266
        0x7
        0x6
        0x44a
        0x96
        0x190
        0x1f4
        0x3e8
    .end array-data

    .line 149
    :array_2
    .array-data 4
        0x4
        0x276
        0xb
        0x8
        0x57e
        0x12c
        0x190
        0x1f4
        0x5dc
    .end array-data

    .line 171
    :array_3
    .array-data 4
        0x6
        0x44c
        0x13
        0x9
        0x7f2
        0x15e
        0x258
        0x1f4
        0x800
    .end array-data

    .line 193
    :array_4
    .array-data 4
        0x8
        0x866
        0x18
        0xa
        0x9f6
        0x190
        0x258
        0x400
        0x9b0
    .end array-data

    :array_5
    .array-data 4
        0xc
        0x999
        0x1c
        0xe
        0xb29
        0x1f4
        0x400
        0x600
        0x1000
    .end array-data

    :array_6
    .array-data 4
        0x10
        0x999
        0x1c
        0xe
        0xb29
        0x258
        0x400
        0x600
        0x1800
    .end array-data

    :array_7
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_8
    .array-data 4
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_9
    .array-data 4
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40e00000    # 7.0f
    .end array-data

    :array_a
    .array-data 4
        0x40800000    # 4.0f
        0x40c00000    # 6.0f
        0x41200000    # 10.0f
    .end array-data

    :array_b
    .array-data 4
        0x40c00000    # 6.0f
        0x40e00000    # 7.0f
        0x41500000    # 13.0f
    .end array-data

    :array_c
    .array-data 4
        0x41000000    # 8.0f
        0x41000000    # 8.0f
        0x41800000    # 16.0f
    .end array-data

    :array_d
    .array-data 4
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41800000    # 16.0f
    .end array-data

    :array_e
    .array-data 4
        0x41800000    # 16.0f
        0x41600000    # 14.0f
        0x41880000    # 17.0f
    .end array-data

    :array_f
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method
