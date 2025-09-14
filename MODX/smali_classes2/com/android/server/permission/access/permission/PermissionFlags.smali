.class public abstract Lcom/android/server/permission/access/permission/PermissionFlags;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static isAppOpGranted(I)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const/high16 v0, 0xc0000

    .line 10
    .line 11
    invoke-static {p0, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    const/high16 v0, 0x100000

    .line 19
    .line 20
    invoke-static {p0, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_2

    .line 25
    .line 26
    return v1

    .line 27
    :cond_2
    const/4 p0, 0x1

    .line 28
    return p0
.end method

.method public static isPermissionGranted(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v1, 0x2

    .line 10
    invoke-static {p0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    return v2

    .line 18
    :cond_1
    const/4 v1, 0x4

    .line 19
    invoke-static {p0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    return v0

    .line 26
    :cond_2
    const/16 v1, 0x400

    .line 27
    .line 28
    invoke-static {p0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_5

    .line 33
    .line 34
    const/16 v1, 0x800

    .line 35
    .line 36
    invoke-static {p0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    const/high16 v0, 0x40000

    .line 44
    .line 45
    invoke-static {p0, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    return v2

    .line 52
    :cond_4
    const/16 v0, 0x10

    .line 53
    .line 54
    invoke-static {p0, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    return p0

    .line 59
    :cond_5
    :goto_0
    return v0
.end method

.method public static toApiFlags(I)I
    .locals 6

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x40

    .line 8
    .line 9
    invoke-static {p0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    or-int/lit8 v0, v0, 0x2

    .line 16
    .line 17
    :cond_0
    const/16 v2, 0x80

    .line 18
    .line 19
    invoke-static {p0, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    or-int/lit8 v0, v0, 0x4

    .line 26
    .line 27
    :cond_1
    const/16 v3, 0x100

    .line 28
    .line 29
    invoke-static {p0, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    or-int/lit8 v0, v0, 0x10

    .line 36
    .line 37
    :cond_2
    const/16 v3, 0x200

    .line 38
    .line 39
    invoke-static {p0, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_3

    .line 44
    .line 45
    or-int/lit8 v0, v0, 0x20

    .line 46
    .line 47
    :cond_3
    const/16 v3, 0x1000

    .line 48
    .line 49
    invoke-static {p0, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_5

    .line 54
    .line 55
    const/16 v3, 0x400

    .line 56
    .line 57
    invoke-static {p0, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_4

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    move v1, v2

    .line 65
    :goto_0
    or-int/2addr v0, v1

    .line 66
    :cond_5
    const/16 v1, 0x2000

    .line 67
    .line 68
    invoke-static {p0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_6

    .line 73
    .line 74
    or-int/lit16 v0, v0, 0x100

    .line 75
    .line 76
    :cond_6
    const/16 v1, 0x4000

    .line 77
    .line 78
    invoke-static {p0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_7

    .line 83
    .line 84
    or-int/lit16 v0, v0, 0x200

    .line 85
    .line 86
    :cond_7
    const v1, 0x8000

    .line 87
    .line 88
    .line 89
    invoke-static {p0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_8

    .line 94
    .line 95
    or-int/lit16 v0, v0, 0x800

    .line 96
    .line 97
    :cond_8
    const/high16 v2, 0x10000

    .line 98
    .line 99
    invoke-static {p0, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_9

    .line 104
    .line 105
    or-int/lit16 v0, v0, 0x1000

    .line 106
    .line 107
    :cond_9
    const/high16 v3, 0x20000

    .line 108
    .line 109
    invoke-static {p0, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-eqz v4, :cond_a

    .line 114
    .line 115
    or-int/lit16 v0, v0, 0x2000

    .line 116
    .line 117
    :cond_a
    const/high16 v4, 0x40000

    .line 118
    .line 119
    invoke-static {p0, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    const/high16 v5, 0x80000

    .line 124
    .line 125
    if-nez v4, :cond_b

    .line 126
    .line 127
    invoke-static {p0, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-eqz v4, :cond_c

    .line 132
    .line 133
    :cond_b
    or-int/lit16 v0, v0, 0x4000

    .line 134
    .line 135
    :cond_c
    const/16 v4, 0x8

    .line 136
    .line 137
    invoke-static {p0, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-eqz v4, :cond_d

    .line 142
    .line 143
    or-int/2addr v0, v1

    .line 144
    :cond_d
    const/high16 v1, 0x100000

    .line 145
    .line 146
    invoke-static {p0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_e

    .line 151
    .line 152
    or-int/lit8 v0, v0, 0x8

    .line 153
    .line 154
    :cond_e
    const/high16 v1, 0x200000

    .line 155
    .line 156
    invoke-static {p0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_f

    .line 161
    .line 162
    or-int/2addr v0, v2

    .line 163
    :cond_f
    const/high16 v1, 0x400000

    .line 164
    .line 165
    invoke-static {p0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-eqz v1, :cond_10

    .line 170
    .line 171
    or-int/2addr v0, v3

    .line 172
    :cond_10
    const/high16 v1, 0x800000

    .line 173
    .line 174
    invoke-static {p0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    if-eqz p0, :cond_11

    .line 179
    .line 180
    or-int/2addr v0, v5

    .line 181
    :cond_11
    return v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    :goto_0
    const-string/jumbo v1, "toString(...)"

    .line 9
    .line 10
    .line 11
    if-eqz p0, :cond_4

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    shl-int v2, v3, v2

    .line 19
    .line 20
    not-int v4, v2

    .line 21
    and-int/2addr p0, v4

    .line 22
    if-eq v2, v3, :cond_3

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    if-eq v2, v3, :cond_2

    .line 26
    .line 27
    sparse-switch v2, :sswitch_data_0

    .line 28
    .line 29
    .line 30
    int-to-long v4, v2

    .line 31
    const-wide v6, 0xffffffffL

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    and-long/2addr v4, v6

    .line 37
    new-instance v2, Lcom/android/server/permission/jarjar/kotlin/ranges/IntRange;

    .line 38
    .line 39
    const/16 v6, 0x24

    .line 40
    .line 41
    invoke-direct {v2, v3, v6}, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;-><init>(II)V

    .line 42
    .line 43
    .line 44
    iget v2, v2, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->last:I

    .line 45
    .line 46
    const/16 v7, 0x10

    .line 47
    .line 48
    if-gt v7, v2, :cond_1

    .line 49
    .line 50
    invoke-static {v4, v5, v7}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 58
    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string/jumbo v2, "toUpperCase(...)"

    .line 64
    .line 65
    .line 66
    invoke-static {v2, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    const-string v2, "0x"

    .line 70
    .line 71
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    goto/16 :goto_1

    .line 76
    .line 77
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 78
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string/jumbo v1, "radix 16 was not in valid range "

    .line 82
    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance v1, Lcom/android/server/permission/jarjar/kotlin/ranges/IntRange;

    .line 88
    .line 89
    invoke-direct {v1, v3, v6}, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;-><init>(II)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p0

    .line 103
    :sswitch_0
    const-string v1, "USER_SELECTED"

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :sswitch_1
    const-string v1, "HIBERNATION"

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :sswitch_2
    const-string v1, "ONE_TIME"

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :sswitch_3
    const-string v1, "APP_OP_REVOKED"

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :sswitch_4
    const-string v1, "SOFT_RESTRICTED"

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :sswitch_5
    const-string v1, "RESTRICTION_REVOKED"

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :sswitch_6
    const-string v1, "UPGRADE_EXEMPT"

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :sswitch_7
    const-string v1, "SYSTEM_EXEMPT"

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :sswitch_8
    const-string v1, "INSTALLER_EXEMPT"

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :sswitch_9
    const-string v1, "USER_SENSITIVE_WHEN_REVOKED"

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :sswitch_a
    const-string v1, "USER_SENSITIVE_WHEN_GRANTED"

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :sswitch_b
    const-string v1, "IMPLICIT"

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :sswitch_c
    const-string v1, "IMPLICIT_GRANTED"

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :sswitch_d
    const-string v1, "LEGACY_GRANTED"

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :sswitch_e
    const-string v1, "PREGRANT"

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :sswitch_f
    const-string v1, "SYSTEM_FIXED"

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :sswitch_10
    const-string v1, "POLICY_FIXED"

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :sswitch_11
    const-string v1, "USER_FIXED"

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :sswitch_12
    const-string v1, "USER_SET"

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :sswitch_13
    const-string v1, "RUNTIME_GRANTED"

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :sswitch_14
    const-string v1, "ROLE"

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :sswitch_15
    const-string v1, "PROTECTION_GRANTED"

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_2
    const-string v1, "INSTALL_REVOKED"

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_3
    const-string v1, "INSTALL_GRANTED"

    .line 173
    .line 174
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    if-eqz p0, :cond_0

    .line 178
    .line 179
    const/16 v1, 0x7c

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :cond_4
    const-string p0, "]"

    .line 187
    .line 188
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    invoke-static {v1, p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    return-object p0

    .line 199
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_15
        0x8 -> :sswitch_14
        0x10 -> :sswitch_13
        0x20 -> :sswitch_12
        0x40 -> :sswitch_11
        0x80 -> :sswitch_10
        0x100 -> :sswitch_f
        0x200 -> :sswitch_e
        0x400 -> :sswitch_d
        0x800 -> :sswitch_c
        0x1000 -> :sswitch_b
        0x2000 -> :sswitch_a
        0x4000 -> :sswitch_9
        0x8000 -> :sswitch_8
        0x10000 -> :sswitch_7
        0x20000 -> :sswitch_6
        0x40000 -> :sswitch_5
        0x80000 -> :sswitch_4
        0x100000 -> :sswitch_3
        0x200000 -> :sswitch_2
        0x400000 -> :sswitch_1
        0x800000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static updateFlags(Lcom/android/server/permission/access/permission/Permission;III)I
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/android/server/permission/access/permission/PermissionFlags;->toApiFlags(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    not-int v1, p2

    .line 6
    and-int/2addr v0, v1

    .line 7
    and-int/2addr p2, p3

    .line 8
    or-int/2addr p2, v0

    .line 9
    and-int/lit8 p3, p1, 0x7

    .line 10
    .line 11
    const v0, 0x8000

    .line 12
    .line 13
    .line 14
    invoke-static {p2, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    or-int/lit8 p3, p3, 0x8

    .line 21
    .line 22
    :cond_0
    and-int/lit8 v1, p1, 0x10

    .line 23
    .line 24
    or-int/2addr p3, v1

    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-static {p2, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    or-int/lit8 p3, p3, 0x20

    .line 33
    .line 34
    :cond_1
    const/4 v1, 0x2

    .line 35
    invoke-static {p2, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    or-int/lit8 p3, p3, 0x40

    .line 42
    .line 43
    :cond_2
    const/4 v1, 0x4

    .line 44
    invoke-static {p2, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_3

    .line 49
    .line 50
    or-int/lit16 p3, p3, 0x80

    .line 51
    .line 52
    :cond_3
    const/16 v2, 0x10

    .line 53
    .line 54
    invoke-static {p2, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    or-int/lit16 p3, p3, 0x100

    .line 61
    .line 62
    :cond_4
    const/16 v2, 0x20

    .line 63
    .line 64
    invoke-static {p2, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_5

    .line 69
    .line 70
    or-int/lit16 p3, p3, 0x200

    .line 71
    .line 72
    :cond_5
    and-int/lit16 v2, p1, 0x400

    .line 73
    .line 74
    or-int/2addr p3, v2

    .line 75
    const/16 v2, 0x800

    .line 76
    .line 77
    and-int/2addr p1, v2

    .line 78
    or-int/2addr p1, p3

    .line 79
    const/16 p3, 0x40

    .line 80
    .line 81
    invoke-static {p2, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 82
    .line 83
    .line 84
    move-result p3

    .line 85
    if-nez p3, :cond_6

    .line 86
    .line 87
    const/16 p3, 0x80

    .line 88
    .line 89
    invoke-static {p2, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 90
    .line 91
    .line 92
    move-result p3

    .line 93
    if-eqz p3, :cond_7

    .line 94
    .line 95
    :cond_6
    or-int/lit16 p1, p1, 0x1000

    .line 96
    .line 97
    :cond_7
    const/16 p3, 0x100

    .line 98
    .line 99
    invoke-static {p2, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 100
    .line 101
    .line 102
    move-result p3

    .line 103
    if-eqz p3, :cond_8

    .line 104
    .line 105
    or-int/lit16 p1, p1, 0x2000

    .line 106
    .line 107
    :cond_8
    const/16 p3, 0x200

    .line 108
    .line 109
    invoke-static {p2, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 110
    .line 111
    .line 112
    move-result p3

    .line 113
    if-eqz p3, :cond_9

    .line 114
    .line 115
    or-int/lit16 p1, p1, 0x4000

    .line 116
    .line 117
    :cond_9
    invoke-static {p2, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 118
    .line 119
    .line 120
    move-result p3

    .line 121
    if-eqz p3, :cond_a

    .line 122
    .line 123
    or-int/2addr p1, v0

    .line 124
    :cond_a
    const/16 p3, 0x1000

    .line 125
    .line 126
    invoke-static {p2, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 127
    .line 128
    .line 129
    move-result p3

    .line 130
    const/high16 v0, 0x10000

    .line 131
    .line 132
    if-eqz p3, :cond_b

    .line 133
    .line 134
    or-int/2addr p1, v0

    .line 135
    :cond_b
    const/16 p3, 0x2000

    .line 136
    .line 137
    invoke-static {p2, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 138
    .line 139
    .line 140
    move-result p3

    .line 141
    const/high16 v2, 0x20000

    .line 142
    .line 143
    if-eqz p3, :cond_c

    .line 144
    .line 145
    or-int/2addr p1, v2

    .line 146
    :cond_c
    const/16 p3, 0x4000

    .line 147
    .line 148
    invoke-static {p2, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 149
    .line 150
    .line 151
    move-result p3

    .line 152
    const/16 v3, 0x8

    .line 153
    .line 154
    const/high16 v4, 0x80000

    .line 155
    .line 156
    if-eqz p3, :cond_e

    .line 157
    .line 158
    iget-object p3, p0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 159
    .line 160
    iget p3, p3, Landroid/content/pm/PermissionInfo;->flags:I

    .line 161
    .line 162
    invoke-static {p3, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 163
    .line 164
    .line 165
    move-result p3

    .line 166
    if-eqz p3, :cond_d

    .line 167
    .line 168
    const/high16 p3, 0x40000

    .line 169
    .line 170
    or-int/2addr p1, p3

    .line 171
    :cond_d
    iget-object p0, p0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 172
    .line 173
    iget p0, p0, Landroid/content/pm/PermissionInfo;->flags:I

    .line 174
    .line 175
    invoke-static {p0, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 176
    .line 177
    .line 178
    move-result p0

    .line 179
    if-eqz p0, :cond_e

    .line 180
    .line 181
    or-int/2addr p1, v4

    .line 182
    :cond_e
    invoke-static {p2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    if-eqz p0, :cond_f

    .line 187
    .line 188
    const/high16 p0, 0x100000

    .line 189
    .line 190
    or-int/2addr p1, p0

    .line 191
    :cond_f
    invoke-static {p2, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    if-eqz p0, :cond_10

    .line 196
    .line 197
    const/high16 p0, 0x200000

    .line 198
    .line 199
    or-int/2addr p1, p0

    .line 200
    :cond_10
    invoke-static {p2, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 201
    .line 202
    .line 203
    move-result p0

    .line 204
    if-eqz p0, :cond_11

    .line 205
    .line 206
    const/high16 p0, 0x400000

    .line 207
    .line 208
    or-int/2addr p1, p0

    .line 209
    :cond_11
    invoke-static {p2, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 210
    .line 211
    .line 212
    move-result p0

    .line 213
    if-eqz p0, :cond_12

    .line 214
    .line 215
    const/high16 p0, 0x800000

    .line 216
    .line 217
    or-int/2addr p1, p0

    .line 218
    :cond_12
    return p1
.end method
