.class public abstract Lcom/android/server/am/SecLmkdStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final LMKD_SLOT_ADJ_VALUES:[I

.field public static sInvalidCountMemPressure:I

.field public static sInvalidCountReason:I

.field public static sInvalidCountSlot:I

.field public static final sKillCountCustomReason:[I

.field public static final sKillCountInterval:[I

.field public static final sKillCountMemPressure:[I

.field public static final sKillCountReason:[I

.field public static final sKillCountSlot:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x11

    .line 3
    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_0

    .line 8
    sput-object v0, Lcom/android/server/am/SecLmkdStats;->LMKD_SLOT_ADJ_VALUES:[I

    .line 10
    array-length v1, v0

    .line 11
    new-array v1, v1, [I

    .line 13
    sput-object v1, Lcom/android/server/am/SecLmkdStats;->sKillCountSlot:[I

    .line 15
    array-length v0, v0

    .line 16
    new-array v0, v0, [I

    .line 18
    sput-object v0, Lcom/android/server/am/SecLmkdStats;->sKillCountInterval:[I

    .line 20
    const/4 v0, 0x4

    .line 21
    new-array v1, v0, [I

    .line 23
    sput-object v1, Lcom/android/server/am/SecLmkdStats;->sKillCountMemPressure:[I

    .line 25
    const/16 v1, 0xa

    .line 27
    new-array v1, v1, [I

    .line 29
    sput-object v1, Lcom/android/server/am/SecLmkdStats;->sKillCountReason:[I

    .line 31
    new-array v0, v0, [I

    .line 33
    sput-object v0, Lcom/android/server/am/SecLmkdStats;->sKillCountCustomReason:[I

    .line 35
    return-void

    .line 36
    nop

    .line 37
    :array_0
    .array-data 4
        0x0
        0x32
        0x64
        0xc8
        0xe1
        0xfa
        0x12c
        0x15e
        0x190
        0x1f4
        0x258
        0x2bc
        0x320
        0x352
        0x384
        0x3e7
        0x3e9
    .end array-data
.end method

.method public static dumpInvalidCount(Landroid/util/IndentingPrintWriter;)V
    .locals 1

    .line 1
    const-string v0, "[invalid_count]"

    .line 3
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 9
    const-string/jumbo v0, "sInvalidCountSlot="

    .line 12
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 15
    sget v0, Lcom/android/server/am/SecLmkdStats;->sInvalidCountSlot:I

    .line 17
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 20
    const-string/jumbo v0, "sInvalidCountMemPressure="

    .line 23
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 26
    sget v0, Lcom/android/server/am/SecLmkdStats;->sInvalidCountMemPressure:I

    .line 28
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 31
    const-string/jumbo v0, "sInvalidCountReason="

    .line 34
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 37
    sget v0, Lcom/android/server/am/SecLmkdStats;->sInvalidCountReason:I

    .line 39
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 42
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 45
    return-void
.end method

.method public static dumpKillCountByMemPressure(Landroid/util/IndentingPrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "[kill_count_by_mem_pressure]"

    .line 3
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 9
    sget-object v0, Lcom/android/server/am/SecLmkdStats;->sKillCountMemPressure:[I

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    const/4 v2, 0x4

    .line 13
    if-ge v1, v2, :cond_4

    .line 15
    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 18
    const-string v2, " "

    .line 20
    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 23
    aget v3, v0, v1

    .line 25
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 28
    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 31
    if-eqz v1, :cond_3

    .line 33
    const/4 v2, 0x1

    .line 34
    if-eq v1, v2, :cond_2

    .line 36
    const/4 v2, 0x2

    .line 37
    if-eq v1, v2, :cond_1

    .line 39
    const/4 v2, 0x3

    .line 40
    if-eq v1, v2, :cond_0

    .line 42
    const-string/jumbo v2, "undefined"

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    const-string/jumbo v2, "super_critical"

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const-string/jumbo v2, "critical"

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const-string/jumbo v2, "medium"

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    const-string/jumbo v2, "low"

    .line 61
    :goto_1
    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 66
    goto :goto_0

    .line 67
    :cond_4
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 70
    return-void
.end method

.method public static dumpKillCountBySlot(Landroid/util/IndentingPrintWriter;)V
    .locals 11

    .line 1
    const-string v0, "[kill_count_by_adj]"

    .line 3
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 9
    sget-object v0, Lcom/android/server/am/SecLmkdStats;->sKillCountInterval:[I

    .line 11
    sget-object v1, Lcom/android/server/am/SecLmkdStats;->sKillCountSlot:[I

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :goto_0
    array-length v4, v1

    .line 16
    if-ge v2, v4, :cond_1

    .line 18
    sget-object v4, Lcom/android/server/am/SecLmkdStats;->LMKD_SLOT_ADJ_VALUES:[I

    .line 20
    const-string/jumbo v5, "~"

    .line 23
    const-string v6, " "

    .line 25
    if-lez v2, :cond_0

    .line 27
    add-int/lit8 v7, v2, -0x1

    .line 29
    aget v8, v4, v7

    .line 31
    add-int/lit8 v8, v8, 0x1

    .line 33
    aget v9, v4, v2

    .line 35
    add-int/lit8 v9, v9, -0x1

    .line 37
    if-gt v8, v9, :cond_0

    .line 39
    aget v10, v0, v7

    .line 41
    add-int/2addr v3, v10

    .line 42
    invoke-virtual {p0, v8}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 45
    invoke-virtual {p0, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, v9}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 51
    invoke-virtual {p0, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 54
    aget v7, v0, v7

    .line 56
    invoke-virtual {p0, v7}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 59
    invoke-virtual {p0, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 65
    :cond_0
    aget v7, v1, v2

    .line 67
    add-int/2addr v3, v7

    .line 68
    aget v7, v4, v2

    .line 70
    invoke-virtual {p0, v7}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 73
    invoke-virtual {p0, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 76
    aget v4, v4, v2

    .line 78
    invoke-virtual {p0, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 81
    invoke-virtual {p0, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 84
    aget v4, v1, v2

    .line 86
    invoke-virtual {p0, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 89
    invoke-virtual {p0, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 95
    invoke-virtual {p0, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 98
    packed-switch v2, :pswitch_data_0

    .line 101
    const-string/jumbo v4, "undefined"

    .line 104
    goto :goto_1

    .line 105
    :pswitch_0
    const-string/jumbo v4, "unknown"

    .line 108
    goto :goto_1

    .line 109
    :pswitch_1
    const-string/jumbo v4, "cached_max"

    .line 112
    goto :goto_1

    .line 113
    :pswitch_2
    const-string/jumbo v4, "cached"

    .line 116
    goto :goto_1

    .line 117
    :pswitch_3
    const-string/jumbo v4, "picked"

    .line 120
    goto :goto_1

    .line 121
    :pswitch_4
    const-string/jumbo v4, "service_b"

    .line 124
    goto :goto_1

    .line 125
    :pswitch_5
    const-string/jumbo v4, "previous"

    .line 128
    goto :goto_1

    .line 129
    :pswitch_6
    const-string/jumbo v4, "home"

    .line 132
    goto :goto_1

    .line 133
    :pswitch_7
    const-string/jumbo v4, "service"

    .line 136
    goto :goto_1

    .line 137
    :pswitch_8
    const-string/jumbo v4, "heavy_weight"

    .line 140
    goto :goto_1

    .line 141
    :pswitch_9
    const-string/jumbo v4, "bora"

    .line 144
    goto :goto_1

    .line 145
    :pswitch_a
    const-string v4, "backup"

    .line 147
    goto :goto_1

    .line 148
    :pswitch_b
    const-string/jumbo v4, "perceptible_low"

    .line 151
    goto :goto_1

    .line 152
    :pswitch_c
    const-string/jumbo v4, "perceptible_medium"

    .line 155
    goto :goto_1

    .line 156
    :pswitch_d
    const-string/jumbo v4, "perceptible"

    .line 159
    goto :goto_1

    .line 160
    :pswitch_e
    const-string/jumbo v4, "visible"

    .line 163
    goto :goto_1

    .line 164
    :pswitch_f
    const-string/jumbo v4, "perceptible_recent_foreground"

    .line 167
    goto :goto_1

    .line 168
    :pswitch_10
    const-string/jumbo v4, "foreground"

    .line 171
    goto :goto_1

    .line 172
    :pswitch_11
    const-string/jumbo v4, "invalid"

    .line 175
    :goto_1
    invoke-virtual {p0, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 178
    add-int/lit8 v2, v2, 0x1

    .line 180
    goto/16 :goto_0

    .line 182
    :cond_1
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 185
    return-void

    .line 186
    nop

    .line 187
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getKillCountFromSlotRange(IIZZ)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    if-le p0, v1, :cond_4

    .line 5
    const/16 v2, 0x10

    .line 7
    if-le p1, v2, :cond_0

    .line 9
    goto :goto_3

    .line 10
    :cond_0
    move v2, p0

    .line 11
    move v3, v0

    .line 12
    :goto_0
    if-ge v2, p1, :cond_1

    .line 14
    :try_start_0
    sget-object v4, Lcom/android/server/am/SecLmkdStats;->sKillCountInterval:[I

    .line 16
    aget v4, v4, v2

    .line 18
    add-int/2addr v3, v4

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    goto :goto_2

    .line 24
    :cond_1
    add-int/2addr p0, p2

    .line 25
    if-eqz p3, :cond_2

    .line 27
    move v0, v1

    .line 28
    :cond_2
    add-int/2addr p1, v0

    .line 29
    :goto_1
    if-gt p0, p1, :cond_3

    .line 31
    sget-object p2, Lcom/android/server/am/SecLmkdStats;->sKillCountSlot:[I

    .line 33
    aget p2, p2, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    add-int/2addr v3, p2

    .line 36
    add-int/lit8 p0, p0, 0x1

    .line 38
    goto :goto_1

    .line 39
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    :cond_3
    return v3

    .line 43
    :cond_4
    :goto_3
    return v0
.end method

.method public static getTotalCriticalKillCount()I
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/am/SecLmkdStats;->sKillCountMemPressure:[I

    .line 3
    const/4 v1, 0x2

    .line 4
    aget v1, v0, v1

    .line 6
    const/4 v2, 0x3

    .line 7
    aget v0, v0, v2

    .line 9
    add-int/2addr v1, v0

    .line 10
    return v1
.end method

.method public static killReasonToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 4
    packed-switch p0, :pswitch_data_1

    .line 7
    const-string/jumbo p0, "undefined"

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    const-string/jumbo p0, "custom_camera_kill_mode"

    .line 14
    return-object p0

    .line 15
    :pswitch_1
    const-string/jumbo p0, "custom_reserved"

    .line 18
    return-object p0

    .line 19
    :pswitch_2
    const-string/jumbo p0, "custom_emergency_kill"

    .line 22
    return-object p0

    .line 23
    :pswitch_3
    const-string/jumbo p0, "custom_pressure_after_kill_drkill"

    .line 26
    return-object p0

    .line 27
    :pswitch_4
    const-string/jumbo p0, "direct_recl_stuck"

    .line 30
    return-object p0

    .line 31
    :pswitch_5
    const-string/jumbo p0, "low_mem"

    .line 34
    return-object p0

    .line 35
    :pswitch_6
    const-string/jumbo p0, "low_filecache_after_thrashing"

    .line 38
    return-object p0

    .line 39
    :pswitch_7
    const-string/jumbo p0, "low_mem_and_swap_util"

    .line 42
    return-object p0

    .line 43
    :pswitch_8
    const-string/jumbo p0, "direct_recl_and_thrashing"

    .line 46
    return-object p0

    .line 47
    :pswitch_9
    const-string/jumbo p0, "low_mem_and_thrashing"

    .line 50
    return-object p0

    .line 51
    :pswitch_a
    const-string/jumbo p0, "low_mem_and_swap"

    .line 54
    return-object p0

    .line 55
    :pswitch_b
    const-string/jumbo p0, "low_swap_and_thrashing"

    .line 58
    return-object p0

    .line 59
    :pswitch_c
    const-string/jumbo p0, "not_responding"

    .line 62
    return-object p0

    .line 63
    :pswitch_d
    const-string/jumbo p0, "pressure_after_kill"

    .line 66
    return-object p0

    .line 67
    :pswitch_e
    const-string/jumbo p0, "none"

    .line 70
    return-object p0

    .line 71
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static noteLmkKillOccurred(III)V
    .locals 9

    .line 1
    :try_start_0
    sget-object v0, Lcom/android/server/am/SecLmkdStats;->LMKD_SLOT_ADJ_VALUES:[I

    .line 3
    const/16 v1, 0x10

    .line 5
    aget v2, v0, v1

    .line 7
    const/4 v3, 0x1

    .line 8
    if-gt p0, v2, :cond_1

    .line 10
    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([II)I

    .line 13
    move-result v1

    .line 14
    if-ltz v1, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 19
    neg-int v1, v1

    .line 20
    sub-int/2addr v1, v3

    .line 21
    :cond_1
    :goto_0
    const/4 v2, -0x1

    .line 22
    const/4 v4, 0x0

    .line 23
    if-le v1, v2, :cond_2

    .line 25
    move v2, v3

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    move v2, v4

    .line 28
    :goto_1
    if-ltz p1, :cond_3

    .line 30
    const/4 v5, 0x4

    .line 31
    if-ge p1, v5, :cond_3

    .line 33
    move v5, v3

    .line 34
    goto :goto_2

    .line 35
    :cond_3
    move v5, v4

    .line 36
    :goto_2
    if-ltz p2, :cond_4

    .line 38
    const/16 v6, 0xa

    .line 40
    if-ge p2, v6, :cond_4

    .line 42
    move v6, v3

    .line 43
    goto :goto_3

    .line 44
    :cond_4
    move v6, v4

    .line 45
    :goto_3
    const/16 v7, 0x64

    .line 47
    if-lt p2, v7, :cond_5

    .line 49
    const/16 v8, 0x68

    .line 51
    if-ge p2, v8, :cond_5

    .line 53
    move v4, v3

    .line 54
    :cond_5
    if-eqz v2, :cond_7

    .line 56
    aget v0, v0, v1

    .line 58
    if-ne p0, v0, :cond_6

    .line 60
    sget-object p0, Lcom/android/server/am/SecLmkdStats;->sKillCountSlot:[I

    .line 62
    aget v0, p0, v1

    .line 64
    add-int/2addr v0, v3

    .line 65
    aput v0, p0, v1

    .line 67
    goto :goto_4

    .line 68
    :catch_0
    move-exception p0

    .line 69
    goto :goto_6

    .line 70
    :cond_6
    sget-object p0, Lcom/android/server/am/SecLmkdStats;->sKillCountInterval:[I

    .line 72
    aget v0, p0, v1

    .line 74
    add-int/2addr v0, v3

    .line 75
    aput v0, p0, v1

    .line 77
    goto :goto_4

    .line 78
    :cond_7
    sget p0, Lcom/android/server/am/SecLmkdStats;->sInvalidCountSlot:I

    .line 80
    add-int/2addr p0, v3

    .line 81
    sput p0, Lcom/android/server/am/SecLmkdStats;->sInvalidCountSlot:I

    .line 83
    :goto_4
    if-eqz v5, :cond_8

    .line 85
    sget-object p0, Lcom/android/server/am/SecLmkdStats;->sKillCountMemPressure:[I

    .line 87
    aget v0, p0, p1

    .line 89
    add-int/2addr v0, v3

    .line 90
    aput v0, p0, p1

    .line 92
    goto :goto_5

    .line 93
    :cond_8
    sget p0, Lcom/android/server/am/SecLmkdStats;->sInvalidCountMemPressure:I

    .line 95
    add-int/2addr p0, v3

    .line 96
    sput p0, Lcom/android/server/am/SecLmkdStats;->sInvalidCountMemPressure:I

    .line 98
    :goto_5
    if-eqz v6, :cond_9

    .line 100
    sget-object p0, Lcom/android/server/am/SecLmkdStats;->sKillCountReason:[I

    .line 102
    aget p1, p0, p2

    .line 104
    add-int/2addr p1, v3

    .line 105
    aput p1, p0, p2

    .line 107
    goto :goto_7

    .line 108
    :cond_9
    if-eqz v4, :cond_a

    .line 110
    sget-object p0, Lcom/android/server/am/SecLmkdStats;->sKillCountCustomReason:[I

    .line 112
    sub-int/2addr p2, v7

    .line 113
    aget p1, p0, p2

    .line 115
    add-int/2addr p1, v3

    .line 116
    aput p1, p0, p2

    .line 118
    goto :goto_7

    .line 119
    :cond_a
    sget p0, Lcom/android/server/am/SecLmkdStats;->sInvalidCountReason:I

    .line 121
    add-int/2addr p0, v3

    .line 122
    sput p0, Lcom/android/server/am/SecLmkdStats;->sInvalidCountReason:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    goto :goto_7

    .line 125
    :goto_6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    :goto_7
    return-void
.end method
