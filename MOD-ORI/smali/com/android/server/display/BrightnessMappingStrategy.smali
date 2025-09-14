.class public abstract Lcom/android/server/display/BrightnessMappingStrategy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final PLOG:Lcom/android/server/display/utils/Plog$SystemPlog;

.field public static sScreenExtendedBrightnessRangeMaximum:I


# instance fields
.field public mLoggingEnabled:Z

.field public final mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/display/utils/Plog$SystemPlog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/display/utils/Plog$SystemPlog;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog$SystemPlog;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    monitor-enter v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :try_start_0
    iput-object v1, v0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mCurve:Landroid/util/Pair;

    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mUserPoints:Ljava/util/ArrayList;

    .line 19
    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iput-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0
.end method

.method public static create(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;I)Lcom/android/server/display/BrightnessMappingStrategy;
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    const-string/jumbo v2, "screen_brightness_for_als"

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, -0x2

    .line 10
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    if-eqz p2, :cond_3

    .line 18
    .line 19
    if-eq p2, v2, :cond_1

    .line 20
    .line 21
    if-eq p2, v3, :cond_0

    .line 22
    .line 23
    move-object v1, v6

    .line 24
    move-object v3, v1

    .line 25
    move-object v7, v3

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    invoke-virtual {p1, p2, v1}, Lcom/android/server/display/DisplayDeviceConfig;->getAutoBrightnessBrighteningLevelsLux(II)[F

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {p1, p2, v1}, Lcom/android/server/display/DisplayDeviceConfig;->getAutoBrightnessBrighteningLevels(II)[F

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    move-object v7, v3

    .line 36
    move-object v3, v1

    .line 37
    move-object v1, v6

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const v3, 0x1070094

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    const v7, 0x1070099

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    array-length v7, v3

    .line 66
    add-int/2addr v7, v2

    .line 67
    new-array v7, v7, [F

    .line 68
    .line 69
    move v8, v4

    .line 70
    :goto_0
    array-length v9, v3

    .line 71
    if-ge v8, v9, :cond_2

    .line 72
    .line 73
    add-int/lit8 v9, v8, 0x1

    .line 74
    .line 75
    aget v8, v3, v8

    .line 76
    .line 77
    int-to-float v8, v8

    .line 78
    aput v8, v7, v9

    .line 79
    .line 80
    move v8, v9

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    move-object v3, v6

    .line 83
    goto :goto_2

    .line 84
    :cond_3
    iget-object v3, p1, Lcom/android/server/display/DisplayDeviceConfig;->mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    .line 85
    .line 86
    if-nez v3, :cond_4

    .line 87
    .line 88
    move-object v3, v6

    .line 89
    goto :goto_1

    .line 90
    :cond_4
    iget-object v3, v3, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsNits:[F

    .line 91
    .line 92
    :goto_1
    invoke-virtual {p1, p2, v1}, Lcom/android/server/display/DisplayDeviceConfig;->getAutoBrightnessBrighteningLevelsLux(II)[F

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-virtual {p1, p2, v1}, Lcom/android/server/display/DisplayDeviceConfig;->getAutoBrightnessBrighteningLevels(II)[F

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    move-object v11, v3

    .line 101
    move-object v3, v1

    .line 102
    move-object v1, v11

    .line 103
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    const/high16 v9, 0x1130000

    .line 108
    .line 109
    invoke-virtual {v8, v9, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    .line 114
    .line 115
    if-eqz v2, :cond_5

    .line 116
    .line 117
    iget-object v9, v2, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mNits:[F

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_5
    iget-object v9, p1, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    .line 121
    .line 122
    :goto_3
    if-eqz v2, :cond_6

    .line 123
    .line 124
    iget-object v0, v2, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBrightness:[F

    .line 125
    .line 126
    :goto_4
    move-object v10, v0

    .line 127
    goto :goto_5

    .line 128
    :cond_6
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    .line 129
    .line 130
    goto :goto_4

    .line 131
    :goto_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    const v2, 0x10e0137

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    sput v0, Lcom/android/server/display/BrightnessMappingStrategy;->sScreenExtendedBrightnessRangeMaximum:I

    .line 143
    .line 144
    invoke-static {v9, v10}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[F)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    const-string v2, "BrightnessMappingStrategy"

    .line 149
    .line 150
    if-eqz v0, :cond_9

    .line 151
    .line 152
    invoke-static {v7, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[F)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_9

    .line 157
    .line 158
    const-string v0, "Use PhysicalMappingStrategy"

    .line 159
    .line 160
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_LEGACY_PERFORMANCE_MODE:Z

    .line 164
    .line 165
    if-eqz v0, :cond_8

    .line 166
    .line 167
    :goto_6
    array-length v0, v1

    .line 168
    if-ge v4, v0, :cond_8

    .line 169
    .line 170
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_HBM:Z

    .line 171
    .line 172
    if-eqz v0, :cond_7

    .line 173
    .line 174
    aget v0, v7, v4

    .line 175
    .line 176
    sget v2, Lcom/android/server/power/PowerManagerUtil;->HBM_LUX:I

    .line 177
    .line 178
    int-to-float v2, v2

    .line 179
    cmpl-float v0, v0, v2

    .line 180
    .line 181
    if-ltz v0, :cond_7

    .line 182
    .line 183
    goto :goto_7

    .line 184
    :cond_7
    aget v0, v1, v4

    .line 185
    .line 186
    const v2, 0x3f628f5c    # 0.885f

    .line 187
    .line 188
    .line 189
    mul-float/2addr v0, v2

    .line 190
    aput v0, v1, v4

    .line 191
    .line 192
    add-int/lit8 v4, v4, 0x1

    .line 193
    .line 194
    goto :goto_6

    .line 195
    :cond_8
    :goto_7
    new-instance v0, Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 196
    .line 197
    invoke-direct {v0, v7, v1}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>([F[F)V

    .line 198
    .line 199
    .line 200
    const-wide/32 v1, 0x927c0

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelTimeoutMillis(J)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 204
    .line 205
    .line 206
    const v1, 0x3f19999a    # 0.6f

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v1}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelLowerLuxMultiplier(F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v1}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelUpperLuxMultiplier(F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 213
    .line 214
    .line 215
    new-instance v6, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;

    .line 216
    .line 217
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    move-object v0, v6

    .line 222
    move-object v2, v9

    .line 223
    move-object v3, v10

    .line 224
    move v4, v8

    .line 225
    move v5, p2

    .line 226
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;-><init>(Landroid/hardware/display/BrightnessConfiguration;[F[FFI)V

    .line 227
    .line 228
    .line 229
    return-object v6

    .line 230
    :cond_9
    invoke-static {v7, v3}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[F)Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_a

    .line 235
    .line 236
    const-string v0, "Use SimpleMappingStrategy"

    .line 237
    .line 238
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    new-instance v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;

    .line 242
    .line 243
    invoke-direct {v0, v7, v3, v8, p2}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;-><init>([F[FFI)V

    .line 244
    .line 245
    .line 246
    return-object v0

    .line 247
    :cond_a
    return-object v6
.end method

.method public static getFloatArray(Landroid/content/res/TypedArray;)[F
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [F

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v0, :cond_0

    .line 9
    .line 10
    const/high16 v3, -0x40800000    # -1.0f

    .line 11
    .line 12
    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    aput v3, v1, v2

    .line 17
    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    .line 23
    .line 24
    return-object v1
.end method

.method public static isValidMapping([F[F)Z
    .locals 13

    .line 1
    const-string v0, "BrightnessMappingStrategy"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p0, :cond_9

    .line 5
    .line 6
    if-eqz p1, :cond_9

    .line 7
    .line 8
    array-length v2, p0

    .line 9
    if-eqz v2, :cond_9

    .line 10
    .line 11
    array-length v2, p1

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :cond_0
    array-length v2, p0

    .line 17
    array-length v3, p1

    .line 18
    if-eq v2, v3, :cond_1

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string/jumbo v3, "x.length: "

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    array-length p0, p0

    .line 29
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p0, " y.length: "

    .line 33
    .line 34
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    array-length p0, p1

    .line 38
    invoke-static {v2, p0, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return v1

    .line 42
    :cond_1
    array-length v2, p0

    .line 43
    aget v3, p0, v1

    .line 44
    .line 45
    aget v4, p1, v1

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    cmpg-float v6, v3, v5

    .line 49
    .line 50
    const-string v7, " prevY: "

    .line 51
    .line 52
    const-string/jumbo v8, "prevX: "

    .line 53
    .line 54
    .line 55
    if-ltz v6, :cond_8

    .line 56
    .line 57
    cmpg-float v5, v4, v5

    .line 58
    .line 59
    if-ltz v5, :cond_8

    .line 60
    .line 61
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-nez v5, :cond_8

    .line 66
    .line 67
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_2

    .line 72
    .line 73
    goto/16 :goto_3

    .line 74
    .line 75
    :cond_2
    const/4 v5, 0x1

    .line 76
    move v6, v5

    .line 77
    :goto_0
    if-ge v6, v2, :cond_7

    .line 78
    .line 79
    aget v9, p0, v6

    .line 80
    .line 81
    cmpl-float v10, v3, v9

    .line 82
    .line 83
    const-string v11, " y["

    .line 84
    .line 85
    const-string v12, "]: "

    .line 86
    .line 87
    if-gez v10, :cond_6

    .line 88
    .line 89
    aget v10, p1, v6

    .line 90
    .line 91
    cmpl-float v10, v4, v10

    .line 92
    .line 93
    if-lez v10, :cond_3

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-nez v3, :cond_5

    .line 101
    .line 102
    aget v3, p1, v6

    .line 103
    .line 104
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_4

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    aget v3, p0, v6

    .line 112
    .line 113
    aget v4, p1, v6

    .line 114
    .line 115
    add-int/lit8 v6, v6, 0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_5
    :goto_1
    const-string/jumbo v2, "x["

    .line 119
    .line 120
    .line 121
    invoke-static {v6, v2, v12}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    aget p0, p0, v6

    .line 126
    .line 127
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    aget p0, p1, v6

    .line 140
    .line 141
    invoke-static {v2, p0, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return v1

    .line 145
    :cond_6
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v3, " x["

    .line 154
    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    aget p0, p0, v6

    .line 165
    .line 166
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    aget p0, p1, v6

    .line 185
    .line 186
    invoke-static {v2, p0, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 187
    .line 188
    .line 189
    return v1

    .line 190
    :cond_7
    return v5

    .line 191
    :cond_8
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {p0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    return v1

    .line 213
    :cond_9
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    const-string/jumbo v3, "x: "

    .line 216
    .line 217
    .line 218
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    const-string/jumbo v3, "null"

    .line 222
    .line 223
    .line 224
    if-nez p0, :cond_a

    .line 225
    .line 226
    move-object p0, v3

    .line 227
    goto :goto_5

    .line 228
    :cond_a
    array-length p0, p0

    .line 229
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    :goto_5
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string p0, " y: "

    .line 237
    .line 238
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    if-nez p1, :cond_b

    .line 242
    .line 243
    goto :goto_6

    .line 244
    :cond_b
    array-length p0, p1

    .line 245
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    :goto_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    return v1
.end method

.method public static permissibleMinimumRatio(FF)F
    .locals 2

    .line 1
    const/high16 v0, 0x40400000    # 3.0f

    .line 2
    .line 3
    cmpg-float v1, p0, v0

    .line 4
    .line 5
    if-gez v1, :cond_0

    .line 6
    .line 7
    cmpg-float v0, p1, v0

    .line 8
    .line 9
    if-gez v0, :cond_0

    .line 10
    .line 11
    const/high16 p0, 0x3f800000    # 1.0f

    .line 12
    .line 13
    return p0

    .line 14
    :cond_0
    const/high16 v0, 0x3e800000    # 0.25f

    .line 15
    .line 16
    add-float/2addr p0, v0

    .line 17
    invoke-static {p0}, Landroid/util/MathUtils;->log(F)F

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    add-float/2addr p1, v0

    .line 22
    invoke-static {p1}, Landroid/util/MathUtils;->log(F)F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    sub-float/2addr p0, p1

    .line 27
    const p1, 0x3d4ccccd    # 0.05f

    .line 28
    .line 29
    .line 30
    mul-float/2addr p0, p1

    .line 31
    invoke-static {p0}, Landroid/util/MathUtils;->exp(F)F

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method


# virtual methods
.method public abstract addUserDataPoint(FF)V
.end method

.method public abstract clearUserDataPoints()V
.end method

.method public abstract convertToAdjustedNits(F)F
.end method

.method public abstract convertToBrightness(F)I
.end method

.method public abstract convertToNits(F)F
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract getAppliedBackupConfig(Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;
.end method

.method public abstract getAutoBrightnessAdjustment()F
.end method

.method public abstract getBrightness(Ljava/lang/String;FI)F
.end method

.method public abstract getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
.end method

.method public abstract getBrightnessForSpline(FLandroid/util/Spline;)F
.end method

.method public abstract getBrightnessFromNits(F)F
.end method

.method public abstract getBrightnessSpline()Landroid/util/Spline;
.end method

.method public abstract getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
.end method

.method public abstract getMode()I
.end method

.method public final getOffsetAdjustedCurve([F[F)Landroid/util/Pair;
    .locals 12

    .line 1
    array-length v0, p2

    .line 2
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog$SystemPlog;

    .line 11
    .line 12
    const-string/jumbo v1, "curve before adjust offset"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/display/utils/Plog$SystemPlog;->logCurve(Ljava/lang/String;[F[F)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->hasUserDataPoints()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_16

    .line 25
    .line 26
    array-length v0, p1

    .line 27
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    array-length v1, p2

    .line 32
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    array-length v1, p2

    .line 41
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->getCurve()Landroid/util/Pair;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const/4 v2, 0x0

    .line 52
    const/high16 v3, 0x3f800000    # 1.0f

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v4, [F

    .line 59
    .line 60
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v1, [F

    .line 63
    .line 64
    invoke-static {v4, v1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    move v4, v2

    .line 69
    :goto_0
    array-length v5, p2

    .line 70
    if-ge v4, v5, :cond_3

    .line 71
    .line 72
    aget v5, p2, v4

    .line 73
    .line 74
    cmpl-float v6, v5, v3

    .line 75
    .line 76
    if-lez v6, :cond_1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    aget v6, p1, v4

    .line 80
    .line 81
    invoke-virtual {v1, v6}, Landroid/util/Spline;->interpolate(F)F

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    add-float/2addr v6, v5

    .line 86
    aput v6, p2, v4

    .line 87
    .line 88
    cmpl-float v5, v6, v3

    .line 89
    .line 90
    if-lez v5, :cond_2

    .line 91
    .line 92
    aput v3, p2, v4

    .line 93
    .line 94
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    .line 98
    .line 99
    if-eqz v1, :cond_4

    .line 100
    .line 101
    sget-object v1, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog$SystemPlog;

    .line 102
    .line 103
    const-string/jumbo v4, "curve after offset plus"

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v4, p1, p2}, Lcom/android/server/display/utils/Plog$SystemPlog;->logCurve(Ljava/lang/String;[F[F)V

    .line 107
    .line 108
    .line 109
    :cond_4
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iget-object p2, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    .line 114
    .line 115
    invoke-virtual {p2}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->getCurve()Landroid/util/Pair;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    if-eqz p2, :cond_14

    .line 120
    .line 121
    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v1, [F

    .line 124
    .line 125
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast p2, [F

    .line 128
    .line 129
    move v4, v2

    .line 130
    :goto_2
    array-length v5, v1

    .line 131
    const/4 v6, 0x0

    .line 132
    if-ge v4, v5, :cond_b

    .line 133
    .line 134
    aget v5, v1, v4

    .line 135
    .line 136
    cmpg-float v6, v6, v5

    .line 137
    .line 138
    if-gtz v6, :cond_a

    .line 139
    .line 140
    sget-boolean v6, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_HBM:Z

    .line 141
    .line 142
    if-eqz v6, :cond_5

    .line 143
    .line 144
    sget v6, Lcom/android/server/power/PowerManagerUtil;->HBM_LUX:I

    .line 145
    .line 146
    int-to-float v6, v6

    .line 147
    cmpg-float v6, v5, v6

    .line 148
    .line 149
    if-gez v6, :cond_a

    .line 150
    .line 151
    :cond_5
    invoke-virtual {v0, v5}, Landroid/util/Spline;->interpolate(F)F

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    aget v7, p2, v4

    .line 156
    .line 157
    add-float/2addr v6, v7

    .line 158
    iget-object v7, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v7, [F

    .line 161
    .line 162
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast p1, [F

    .line 165
    .line 166
    move v8, v2

    .line 167
    :goto_3
    array-length v9, v7

    .line 168
    if-ge v8, v9, :cond_7

    .line 169
    .line 170
    aget v9, v7, v8

    .line 171
    .line 172
    cmpg-float v9, v5, v9

    .line 173
    .line 174
    if-gtz v9, :cond_6

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_6
    add-int/lit8 v8, v8, 0x1

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_7
    array-length v8, v7

    .line 181
    :goto_4
    array-length v9, v7

    .line 182
    if-ne v8, v9, :cond_8

    .line 183
    .line 184
    array-length v9, v7

    .line 185
    add-int/lit8 v9, v9, 0x1

    .line 186
    .line 187
    invoke-static {v7, v9}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    array-length v9, p1

    .line 192
    add-int/lit8 v9, v9, 0x1

    .line 193
    .line 194
    invoke-static {p1, v9}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    aput v5, v7, v8

    .line 199
    .line 200
    aput v6, p1, v8

    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_8
    aget v9, v7, v8

    .line 204
    .line 205
    cmpl-float v9, v9, v5

    .line 206
    .line 207
    if-nez v9, :cond_9

    .line 208
    .line 209
    array-length v5, v7

    .line 210
    invoke-static {v7, v5}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    array-length v5, p1

    .line 215
    invoke-static {p1, v5}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    aput v6, p1, v8

    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_9
    array-length v9, v7

    .line 223
    add-int/lit8 v9, v9, 0x1

    .line 224
    .line 225
    invoke-static {v7, v9}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 226
    .line 227
    .line 228
    move-result-object v9

    .line 229
    add-int/lit8 v10, v8, 0x1

    .line 230
    .line 231
    array-length v7, v7

    .line 232
    sub-int/2addr v7, v8

    .line 233
    invoke-static {v9, v8, v9, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    .line 235
    .line 236
    aput v5, v9, v8

    .line 237
    .line 238
    array-length v5, p1

    .line 239
    add-int/lit8 v5, v5, 0x1

    .line 240
    .line 241
    invoke-static {p1, v5}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    array-length p1, p1

    .line 246
    sub-int/2addr p1, v8

    .line 247
    invoke-static {v5, v8, v5, v10, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    .line 249
    .line 250
    aput v6, v5, v8

    .line 251
    .line 252
    move-object p1, v5

    .line 253
    move-object v7, v9

    .line 254
    :goto_5
    invoke-static {v7, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 259
    .line 260
    goto/16 :goto_2

    .line 261
    .line 262
    :cond_b
    iget-object p2, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    .line 263
    .line 264
    monitor-enter p2

    .line 265
    :try_start_0
    iget v0, p2, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mLastAddedLux:F

    .line 266
    .line 267
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 269
    .line 270
    check-cast p2, [F

    .line 271
    .line 272
    :goto_6
    array-length v1, p2

    .line 273
    if-ge v2, v1, :cond_d

    .line 274
    .line 275
    aget v1, p2, v2

    .line 276
    .line 277
    cmpg-float v1, v0, v1

    .line 278
    .line 279
    if-gtz v1, :cond_c

    .line 280
    .line 281
    goto :goto_7

    .line 282
    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 283
    .line 284
    goto :goto_6

    .line 285
    :cond_d
    array-length v2, p2

    .line 286
    :goto_7
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 287
    .line 288
    check-cast p2, [F

    .line 289
    .line 290
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 291
    .line 292
    check-cast v0, [F

    .line 293
    .line 294
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    .line 295
    .line 296
    sget-object v4, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog$SystemPlog;

    .line 297
    .line 298
    if-eqz v1, :cond_e

    .line 299
    .line 300
    const-string/jumbo v1, "unsmoothed curve"

    .line 301
    .line 302
    .line 303
    invoke-virtual {v4, v1, p2, v0}, Lcom/android/server/display/utils/Plog$SystemPlog;->logCurve(Ljava/lang/String;[F[F)V

    .line 304
    .line 305
    .line 306
    :cond_e
    aget v1, p2, v2

    .line 307
    .line 308
    aget v5, v0, v2

    .line 309
    .line 310
    add-int/lit8 v7, v2, 0x1

    .line 311
    .line 312
    :goto_8
    array-length v8, p2

    .line 313
    if-ge v7, v8, :cond_11

    .line 314
    .line 315
    aget v8, p2, v7

    .line 316
    .line 317
    aget v9, v0, v7

    .line 318
    .line 319
    sget-boolean v10, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_HBM:Z

    .line 320
    .line 321
    if-eqz v10, :cond_f

    .line 322
    .line 323
    sget v10, Lcom/android/server/power/PowerManagerUtil;->HBM_LUX:I

    .line 324
    .line 325
    int-to-float v10, v10

    .line 326
    cmpl-float v10, v8, v10

    .line 327
    .line 328
    if-ltz v10, :cond_f

    .line 329
    .line 330
    goto :goto_a

    .line 331
    :cond_f
    invoke-static {v8, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleMinimumRatio(FF)F

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    mul-float/2addr v1, v5

    .line 336
    invoke-static {v9, v1}, Ljava/lang/Math;->max(FF)F

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    cmpl-float v5, v1, v3

    .line 341
    .line 342
    if-lez v5, :cond_10

    .line 343
    .line 344
    move v5, v3

    .line 345
    goto :goto_9

    .line 346
    :cond_10
    move v5, v1

    .line 347
    :goto_9
    aput v5, v0, v7

    .line 348
    .line 349
    add-int/lit8 v7, v7, 0x1

    .line 350
    .line 351
    move v1, v8

    .line 352
    goto :goto_8

    .line 353
    :cond_11
    :goto_a
    aget v1, p2, v2

    .line 354
    .line 355
    aget v3, v0, v2

    .line 356
    .line 357
    add-int/lit8 v2, v2, -0x1

    .line 358
    .line 359
    :goto_b
    if-ltz v2, :cond_13

    .line 360
    .line 361
    aget v5, p2, v2

    .line 362
    .line 363
    aget v7, v0, v2

    .line 364
    .line 365
    cmpg-float v8, v5, v6

    .line 366
    .line 367
    if-gez v8, :cond_12

    .line 368
    .line 369
    goto :goto_c

    .line 370
    :cond_12
    invoke-static {v5, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleMinimumRatio(FF)F

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    mul-float/2addr v1, v3

    .line 375
    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    .line 376
    .line 377
    .line 378
    move-result v3

    .line 379
    aput v3, v0, v2

    .line 380
    .line 381
    add-int/lit8 v2, v2, -0x1

    .line 382
    .line 383
    move v1, v5

    .line 384
    goto :goto_b

    .line 385
    :cond_13
    :goto_c
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    .line 386
    .line 387
    if-eqz v1, :cond_14

    .line 388
    .line 389
    const-string/jumbo v1, "smoothed curve"

    .line 390
    .line 391
    .line 392
    invoke-virtual {v4, v1, p2, v0}, Lcom/android/server/display/utils/Plog$SystemPlog;->logCurve(Ljava/lang/String;[F[F)V

    .line 393
    .line 394
    .line 395
    goto :goto_d

    .line 396
    :catchall_0
    move-exception p0

    .line 397
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    throw p0

    .line 399
    :cond_14
    :goto_d
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 400
    .line 401
    check-cast p2, [F

    .line 402
    .line 403
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 404
    .line 405
    check-cast p1, [F

    .line 406
    .line 407
    iget-boolean p0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    .line 408
    .line 409
    if-eqz p0, :cond_15

    .line 410
    .line 411
    sget-object p0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog$SystemPlog;

    .line 412
    .line 413
    const-string/jumbo v0, "curve after insert user point"

    .line 414
    .line 415
    .line 416
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/display/utils/Plog$SystemPlog;->logCurve(Ljava/lang/String;[F[F)V

    .line 417
    .line 418
    .line 419
    :cond_15
    move-object v11, p2

    .line 420
    move-object p2, p1

    .line 421
    move-object p1, v11

    .line 422
    :cond_16
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 423
    .line 424
    .line 425
    move-result-object p0

    .line 426
    return-object p0
.end method

.method public abstract getShortTermModelTimeout()J
.end method

.method public abstract hasUserDataPoints()Z
.end method

.method public final inferAutoBrightnessAdjustment(FFF)F
    .locals 6

    .line 1
    const v0, 0x3dcccccd    # 0.1f

    .line 2
    .line 3
    .line 4
    cmpg-float v0, p3, v0

    .line 5
    .line 6
    const/high16 v1, -0x40800000    # -1.0f

    .line 7
    .line 8
    const/high16 v2, 0x3f800000    # 1.0f

    .line 9
    .line 10
    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 11
    .line 12
    if-lez v0, :cond_3

    .line 13
    .line 14
    const v0, 0x3f666666    # 0.9f

    .line 15
    .line 16
    .line 17
    cmpl-float v0, p3, v0

    .line 18
    .line 19
    if-ltz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    cmpl-float v0, p2, v0

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    move v0, v1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    cmpl-float v0, p2, v2

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    move v0, v2

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    invoke-static {p2}, Landroid/util/MathUtils;->log(F)F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-static {p3}, Landroid/util/MathUtils;->log(F)F

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    div-float v3, v0, v3

    .line 44
    .line 45
    invoke-static {v3}, Landroid/util/MathUtils;->log(F)F

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    neg-float v0, v0

    .line 50
    invoke-static {p1}, Landroid/util/MathUtils;->log(F)F

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    div-float/2addr v0, v4

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    :goto_0
    sub-float v0, p2, p3

    .line 57
    .line 58
    :goto_1
    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget-boolean p0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    .line 63
    .line 64
    if-eqz p0, :cond_4

    .line 65
    .line 66
    new-instance p0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string/jumbo v1, "inferAutoBrightnessAdjustment: "

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v2, "^"

    .line 78
    .line 79
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    neg-float v4, v0

    .line 83
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v5, "="

    .line 87
    .line 88
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-static {p1, v4}, Landroid/util/MathUtils;->pow(FF)F

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p1, " == "

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    const-string v4, "BrightnessMappingStrategy"

    .line 111
    .line 112
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    new-instance p0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-static {p3, v3}, Landroid/util/MathUtils;->pow(FF)F

    .line 133
    .line 134
    .line 135
    move-result p3

    .line 136
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    :cond_4
    return v0
.end method

.method public abstract isDefaultConfig()Z
.end method

.method public abstract setAutoBrightnessAdjustment(F)Z
.end method

.method public abstract setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
.end method
