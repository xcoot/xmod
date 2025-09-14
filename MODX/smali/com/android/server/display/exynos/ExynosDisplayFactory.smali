.class public final Lcom/android/server/display/exynos/ExynosDisplayFactory;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final DEBUG:Z

.field public final EXTENSION_OFF:Ljava/lang/String;

.field public final EXTENSION_ON:Ljava/lang/String;

.field public final mColorModeModeIdx:[I

.field public final mColorModeSettingTable:[Ljava/lang/String;

.field public mCountDownTimerCount:I

.field public final mCountDownTimerTable:[[I

.field public final mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayFactory$3;

.field public final mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

.field public mFactoryXMLPath:Ljava/lang/String;

.field public final mIntervalMs:I

.field public final mLocalHandler:Landroid/os/Handler;

.field public final mTimeoutMs:I


# direct methods
.method public static -$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    const-string/jumbo v0, "mode_idx"

    .line 11
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/exynos/ExynosDisplayAdapter;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string/jumbo v0, "eng"

    .line 7
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    iput-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayFactory$3;

    .line 18
    const/16 v1, 0x320

    .line 20
    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mTimeoutMs:I

    .line 22
    const/16 v1, 0x28

    .line 24
    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mIntervalMs:I

    .line 26
    const/4 v1, 0x0

    .line 27
    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 29
    const-string v2, "0"

    .line 31
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->EXTENSION_OFF:Ljava/lang/String;

    .line 33
    const-string v2, "1"

    .line 35
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->EXTENSION_ON:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    .line 39
    const/4 v2, 0x1

    .line 40
    const/4 v3, 0x2

    .line 41
    filled-new-array {v2, v3}, [I

    .line 44
    move-result-object v4

    .line 45
    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    .line 47
    const-string/jumbo v4, "hdr10"

    .line 50
    const-string/jumbo v5, "hdr10p"

    .line 53
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 56
    move-result-object v4

    .line 57
    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    .line 59
    filled-new-array {v1}, [I

    .line 62
    move-result-object v4

    .line 63
    filled-new-array {v1}, [I

    .line 66
    move-result-object v5

    .line 67
    filled-new-array {v4, v5}, [[I

    .line 70
    move-result-object v4

    .line 71
    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    .line 73
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 75
    new-instance v4, Lcom/android/server/display/exynos/ExynosDisplayFactory$2;

    .line 77
    invoke-direct {v4, p0}, Lcom/android/server/display/exynos/ExynosDisplayFactory$2;-><init>(Lcom/android/server/display/exynos/ExynosDisplayFactory;)V

    .line 80
    iput-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 82
    new-instance p2, Landroid/os/Handler;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 87
    move-result-object p1

    .line 88
    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 91
    iput-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mLocalHandler:Landroid/os/Handler;

    .line 93
    new-array p1, v3, [I

    .line 95
    const/16 p2, 0x14

    .line 97
    aput p2, p1, v2

    .line 99
    aput v3, p1, v1

    .line 101
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 103
    invoke-static {v2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 106
    move-result-object p1

    .line 107
    check-cast p1, [[I

    .line 109
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    .line 111
    move p1, v1

    .line 112
    :goto_0
    if-ge p1, v3, :cond_1

    .line 114
    move v2, v1

    .line 115
    :goto_1
    if-ge v2, p2, :cond_0

    .line 117
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    .line 119
    aget-object v4, v4, p1

    .line 121
    aput v1, v4, v2

    .line 123
    add-int/lit8 v2, v2, 0x1

    .line 125
    goto :goto_1

    .line 126
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 128
    goto :goto_0

    .line 129
    :cond_1
    new-instance p1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;

    .line 131
    iget p2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mTimeoutMs:I

    .line 133
    int-to-long v6, p2

    .line 134
    iget p2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mIntervalMs:I

    .line 136
    int-to-long v8, p2

    .line 137
    move-object v4, p1

    .line 138
    move-object v5, p0

    .line 139
    invoke-direct/range {v4 .. v9}, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;-><init>(Lcom/android/server/display/exynos/ExynosDisplayFactory;JJ)V

    .line 142
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayFactory$3;

    .line 144
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    .line 146
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mLocalHandler:Landroid/os/Handler;

    .line 148
    new-instance p2, Lcom/android/server/display/exynos/ExynosDisplayFactory$1;

    .line 150
    invoke-direct {p2, p0}, Lcom/android/server/display/exynos/ExynosDisplayFactory$1;-><init>(Lcom/android/server/display/exynos/ExynosDisplayFactory;)V

    .line 153
    const-wide/16 v0, 0x0

    .line 155
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 158
    return-void
.end method

.method public static getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {v0, v0, p0, p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 5
    move-result-object p0

    .line 6
    if-nez p0, :cond_0

    .line 8
    return v0

    .line 9
    :cond_0
    array-length p1, p0

    .line 10
    const/4 p2, 0x1

    .line 11
    if-ge p1, p2, :cond_1

    .line 13
    return v0

    .line 14
    :cond_1
    aget-object p0, p0, v0

    .line 16
    const-string p1, "\\s*,\\s*"

    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    aget-object p0, p0, v0

    .line 24
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 27
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    :goto_0
    return v0
.end method


# virtual methods
.method public final startCountDownTimer(Ljava/lang/String;)V
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 5
    const-string v0, "DQE_coef_data.xml"

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    const-string/jumbo v1, "xml"

    .line 14
    invoke-virtual {p1, v1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    invoke-static {v0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getPathWithPanel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    :cond_0
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->existFile(Ljava/lang/String;)Z

    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 30
    return-void

    .line 31
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    .line 33
    const-string v1, "ExynosDisplayFactory"

    .line 35
    if-eqz v0, :cond_2

    .line 37
    const-string/jumbo v2, "startCountDownTimer: xml_path="

    .line 40
    invoke-static {v2, p1, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_2
    const/4 v2, 0x0

    .line 44
    move v3, v2

    .line 45
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    .line 47
    const/4 v5, 0x2

    .line 48
    if-ge v3, v5, :cond_4

    .line 50
    move v5, v2

    .line 51
    :goto_1
    const/16 v6, 0x14

    .line 53
    if-ge v5, v6, :cond_3

    .line 55
    aget-object v6, v4, v3

    .line 57
    aput v2, v6, v5

    .line 59
    add-int/lit8 v5, v5, 0x1

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_4
    :try_start_0
    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXMLNodeText(Ljava/lang/String;)[Ljava/lang/String;

    .line 68
    move-result-object v3

    .line 69
    if-eqz v3, :cond_12

    .line 71
    array-length v6, v3

    .line 72
    const/4 v7, 0x1

    .line 73
    if-ge v6, v7, :cond_5

    .line 75
    goto/16 :goto_6

    .line 77
    :cond_5
    if-eqz v0, :cond_6

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    const-string/jumbo v6, "xml version: "

    .line 87
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    aget-object v3, v3, v2

    .line 92
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v0

    .line 99
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    goto :goto_2

    .line 103
    :catch_0
    move-exception p1

    .line 104
    goto/16 :goto_7

    .line 106
    :cond_6
    :goto_2
    move v0, v2

    .line 107
    :goto_3
    if-ge v0, v5, :cond_13

    .line 109
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    .line 111
    aget-object v3, v3, v0

    .line 113
    const-string v6, "aps"

    .line 115
    invoke-static {p1, v3, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    move-result v6

    .line 119
    if-lez v6, :cond_7

    .line 121
    aget-object v6, v4, v0

    .line 123
    aput v7, v6, v2

    .line 125
    :cond_7
    const-string/jumbo v6, "degamma"

    .line 128
    invoke-static {p1, v3, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    move-result v6

    .line 132
    if-lez v6, :cond_8

    .line 134
    aget-object v6, v4, v0

    .line 136
    aput v7, v6, v7

    .line 138
    :cond_8
    const-string/jumbo v6, "gamma"

    .line 141
    invoke-static {p1, v3, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    move-result v6

    .line 145
    if-lez v6, :cond_9

    .line 147
    aget-object v6, v4, v0

    .line 149
    aput v7, v6, v5

    .line 151
    :cond_9
    const-string/jumbo v6, "gamma_matrix"

    .line 154
    invoke-static {p1, v3, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    move-result v6

    .line 158
    if-lez v6, :cond_a

    .line 160
    aget-object v6, v4, v0

    .line 162
    const/4 v8, 0x3

    .line 163
    aput v7, v6, v8

    .line 165
    :cond_a
    const-string/jumbo v6, "hsc"

    .line 168
    invoke-static {p1, v3, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    move-result v6

    .line 172
    const/4 v8, 0x4

    .line 173
    :goto_4
    const/4 v9, 0x5

    .line 174
    if-gt v8, v9, :cond_c

    .line 176
    if-lez v6, :cond_b

    .line 178
    aget-object v9, v4, v0

    .line 180
    aput v7, v9, v8

    .line 182
    :cond_b
    add-int/lit8 v8, v8, 0x1

    .line 184
    goto :goto_4

    .line 185
    :cond_c
    const-string/jumbo v6, "scl"

    .line 188
    invoke-static {p1, v3, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    move-result v6

    .line 192
    if-lez v6, :cond_d

    .line 194
    aget-object v6, v4, v0

    .line 196
    const/4 v8, 0x6

    .line 197
    aput v7, v6, v8

    .line 199
    :cond_d
    const-string/jumbo v6, "cgc17_con"

    .line 202
    invoke-static {p1, v3, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    move-result v6

    .line 206
    const/4 v8, 0x7

    .line 207
    :goto_5
    const/16 v9, 0xb

    .line 209
    if-gt v8, v9, :cond_f

    .line 211
    if-lez v6, :cond_e

    .line 213
    aget-object v9, v4, v0

    .line 215
    aput v7, v9, v8

    .line 217
    :cond_e
    add-int/lit8 v8, v8, 0x1

    .line 219
    goto :goto_5

    .line 220
    :cond_f
    const-string/jumbo v6, "cgc_dither"

    .line 223
    invoke-static {p1, v3, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    move-result v6

    .line 227
    if-lez v6, :cond_10

    .line 229
    aget-object v6, v4, v0

    .line 231
    const/16 v8, 0xc

    .line 233
    aput v7, v6, v8

    .line 235
    :cond_10
    const-string/jumbo v6, "de"

    .line 238
    invoke-static {p1, v3, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    move-result v6

    .line 242
    if-lez v6, :cond_11

    .line 244
    aget-object v6, v4, v0

    .line 246
    const/16 v8, 0xd

    .line 248
    aput v7, v6, v8

    .line 250
    :cond_11
    new-instance v6, Ljava/lang/StringBuilder;

    .line 252
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string v3, " enable "

    .line 260
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    aget-object v3, v4, v0

    .line 265
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 268
    move-result-object v3

    .line 269
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    move-result-object v3

    .line 276
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    add-int/lit8 v0, v0, 0x1

    .line 281
    goto/16 :goto_3

    .line 283
    :cond_12
    :goto_6
    const-string/jumbo p1, "xml version not found"

    .line 286
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    return-void

    .line 290
    :goto_7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 293
    :cond_13
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayFactory$3;

    .line 295
    if-eqz p1, :cond_14

    .line 297
    iput v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 299
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 302
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayFactory$3;

    .line 304
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 307
    :cond_14
    return-void
.end method

.method public final sysfsWriteCGC17_IDX(I)V
    .locals 2

    .line 1
    div-int/lit8 v0, p1, 0x11

    .line 3
    rem-int/lit8 p1, p1, 0x11

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v0, " "

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    const-string/jumbo v0, "cgc17_idx"

    .line 36
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 45
    return-void
.end method

.method public final sysfsWriteDEGAMMA(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 3
    const-string/jumbo v1, "degamma"

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 16
    const-string v2, "0"

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 24
    if-eqz p2, :cond_0

    .line 26
    const-string/jumbo v0, "degamma_ext"

    .line 29
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 31
    invoke-virtual {v2, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 38
    move-result-object p2

    .line 39
    invoke-static {v0, p2}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;[B)Z

    .line 42
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 44
    invoke-virtual {p0, v1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 51
    :cond_0
    return-void
.end method

.method public final sysfsWriteGAMMA(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 3
    const-string/jumbo v1, "gamma"

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 16
    const-string v2, "0"

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 24
    if-eqz p2, :cond_0

    .line 26
    const-string/jumbo v0, "gamma_ext"

    .line 29
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 31
    invoke-virtual {v2, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 38
    move-result-object p2

    .line 39
    invoke-static {v0, p2}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;[B)Z

    .line 42
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 44
    invoke-virtual {p0, v1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 51
    :cond_0
    return-void
.end method
