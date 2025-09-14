.class public abstract Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static bracket(Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;D)[D
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    cmpg-double v5, p1, v3

    .line 8
    .line 9
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 10
    .line 11
    if-ltz v5, :cond_7

    .line 12
    .line 13
    cmpl-double v5, p1, v6

    .line 14
    .line 15
    if-gtz v5, :cond_7

    .line 16
    .line 17
    move-wide/from16 v8, p1

    .line 18
    .line 19
    move-wide v10, v8

    .line 20
    move v5, v2

    .line 21
    :goto_0
    sub-double/2addr v8, v6

    .line 22
    invoke-static {v8, v9, v3, v4}, Lorg/apache/commons/math/util/FastMath;->max(DD)D

    .line 23
    .line 24
    .line 25
    move-result-wide v8

    .line 26
    add-double/2addr v10, v6

    .line 27
    cmpl-double v12, v10, v6

    .line 28
    .line 29
    if-lez v12, :cond_1

    .line 30
    .line 31
    :cond_0
    move-wide v10, v6

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    cmpg-double v13, v10, v6

    .line 34
    .line 35
    if-gez v13, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    if-eqz v12, :cond_3

    .line 39
    .line 40
    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 44
    .line 45
    .line 46
    move-result-wide v12

    .line 47
    const-wide/high16 v14, -0x8000000000000000L

    .line 48
    .line 49
    cmp-long v12, v12, v14

    .line 50
    .line 51
    if-nez v12, :cond_0

    .line 52
    .line 53
    :goto_1
    invoke-virtual {v0, v8, v9}, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;->value(D)D

    .line 54
    .line 55
    .line 56
    move-result-wide v12

    .line 57
    invoke-virtual {v0, v10, v11}, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;->value(D)D

    .line 58
    .line 59
    .line 60
    move-result-wide v14

    .line 61
    add-int/2addr v5, v1

    .line 62
    mul-double v16, v12, v14

    .line 63
    .line 64
    cmpl-double v16, v16, v3

    .line 65
    .line 66
    const v1, 0x7fffffff

    .line 67
    .line 68
    .line 69
    if-lez v16, :cond_5

    .line 70
    .line 71
    if-ge v5, v1, :cond_5

    .line 72
    .line 73
    cmpl-double v18, v8, v3

    .line 74
    .line 75
    if-gtz v18, :cond_4

    .line 76
    .line 77
    cmpg-double v18, v10, v6

    .line 78
    .line 79
    if-ltz v18, :cond_4

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    const/4 v1, 0x1

    .line 83
    goto :goto_0

    .line 84
    :cond_5
    :goto_2
    if-gtz v16, :cond_6

    .line 85
    .line 86
    const/4 v0, 0x2

    .line 87
    new-array v0, v0, [D

    .line 88
    .line 89
    aput-wide v8, v0, v2

    .line 90
    .line 91
    const/4 v1, 0x1

    .line 92
    aput-wide v10, v0, v1

    .line 93
    .line 94
    return-object v0

    .line 95
    :cond_6
    new-instance v0, Lorg/apache/commons/math/ConvergenceException;

    .line 96
    .line 97
    sget-object v2, Lorg/apache/commons/math/exception/util/LocalizedFormats;->FAILED_BRACKETING:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 98
    .line 99
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v16

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v17

    .line 107
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 108
    .line 109
    .line 110
    move-result-object v18

    .line 111
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 112
    .line 113
    .line 114
    move-result-object v19

    .line 115
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 116
    .line 117
    .line 118
    move-result-object v20

    .line 119
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 120
    .line 121
    .line 122
    move-result-object v21

    .line 123
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 124
    .line 125
    .line 126
    move-result-object v22

    .line 127
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 128
    .line 129
    .line 130
    move-result-object v23

    .line 131
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 132
    .line 133
    .line 134
    move-result-object v24

    .line 135
    filled-new-array/range {v16 .. v24}, [Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math/MathException;-><init>(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    throw v0

    .line 143
    :cond_7
    sget-object v0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->INVALID_BRACKETING_PARAMETERS:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 144
    .line 145
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-static {v0, v1}, Lorg/apache/commons/math/MathRuntimeException;->createIllegalArgumentException(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    throw v0
.end method
