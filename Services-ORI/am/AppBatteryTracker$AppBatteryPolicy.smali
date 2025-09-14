.class public final Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;
.super Lcom/android/server/am/BaseAppStatePolicy;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public volatile mBatteryDimensions:[Landroid/os/BatteryConsumer$Dimensions;

.field public mBatteryFullChargeMah:I

.field public volatile mBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

.field public volatile mBgCurrentDrainBgRestrictedThreshold:[F

.field public volatile mBgCurrentDrainBgRestrictedTypes:I

.field public volatile mBgCurrentDrainDecoupleThresholds:Z

.field public volatile mBgCurrentDrainEventDurationBasedThresholdEnabled:Z

.field public volatile mBgCurrentDrainExemptedTypes:I

.field public volatile mBgCurrentDrainHighThresholdByBgLocation:Z

.field public volatile mBgCurrentDrainInteractionGracePeriodMs:J

.field public volatile mBgCurrentDrainLocationMinDuration:J

.field public volatile mBgCurrentDrainMediaPlaybackMinDuration:J

.field public volatile mBgCurrentDrainPowerComponents:I

.field public volatile mBgCurrentDrainRestrictedBucketThreshold:[F

.field public volatile mBgCurrentDrainRestrictedBucketTypes:I

.field public volatile mBgCurrentDrainWindowMs:J

.field public final mDefaultBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

.field public final mDefaultBgCurrentDrainBgRestrictedHighThreshold:F

.field public final mDefaultBgCurrentDrainBgRestrictedThreshold:F

.field public final mDefaultBgCurrentDrainEventDurationBasedThresholdEnabled:Z

.field public final mDefaultBgCurrentDrainExemptedTypes:I

.field public final mDefaultBgCurrentDrainHighThresholdByBgLocation:Z

.field public final mDefaultBgCurrentDrainInteractionGracePeriodMs:J

.field public final mDefaultBgCurrentDrainLocationMinDuration:J

.field public final mDefaultBgCurrentDrainMediaPlaybackMinDuration:J

.field public final mDefaultBgCurrentDrainPowerComponent:I

.field public final mDefaultBgCurrentDrainRestrictedBucket:F

.field public final mDefaultBgCurrentDrainRestrictedBucketHighThreshold:F

.field public final mDefaultBgCurrentDrainTypesToBgRestricted:I

.field public final mDefaultBgCurrentDrainWindowMs:J

.field public final mDefaultCurrentDrainTypesToRestrictedBucket:I

.field public final mHighBgBatteryPackages:Landroid/util/SparseArray;

.field public final mLastInteractionTime:Landroid/util/SparseLongArray;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/AppBatteryTracker;)V
    .locals 12

    .line 1
    iget-object v0, p2, Lcom/android/server/am/BaseAppStateTracker;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x111005e

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const-string v1, "bg_current_drain_monitor_enabled"

    .line 15
    .line 16
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/server/am/BaseAppStatePolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateTracker;Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x2

    .line 20
    new-array v0, p1, [F

    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    .line 23
    .line 24
    new-array p1, p1, [F

    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    .line 27
    .line 28
    new-instance p1, Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 34
    .line 35
    new-instance p1, Landroid/util/SparseLongArray;

    .line 36
    .line 37
    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    .line 41
    .line 42
    iget-object p1, p2, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    .line 45
    .line 46
    iget-object p1, p2, Lcom/android/server/am/BaseAppStateTracker;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const p2, 0x10700a7

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-static {p2}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const/4 v1, 0x0

    .line 68
    const/4 v2, 0x1

    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    aget p2, p2, v2

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    aget p2, p2, v1

    .line 75
    .line 76
    :goto_0
    iput p2, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainRestrictedBucket:F

    .line 77
    .line 78
    const v0, 0x10700a6

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_1

    .line 94
    .line 95
    aget v0, v0, v2

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_1
    aget v0, v0, v1

    .line 99
    .line 100
    :goto_1
    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainBgRestrictedThreshold:F

    .line 101
    .line 102
    const v3, 0x10e0048

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    mul-int/lit16 v3, v3, 0x3e8

    .line 110
    .line 111
    int-to-long v3, v3

    .line 112
    iput-wide v3, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainWindowMs:J

    .line 113
    .line 114
    iput-wide v3, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainInteractionGracePeriodMs:J

    .line 115
    .line 116
    const v5, 0x10700a5

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-static {v5}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    if-eqz v6, :cond_2

    .line 132
    .line 133
    aget v5, v5, v2

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_2
    aget v5, v5, v1

    .line 137
    .line 138
    :goto_2
    iput v5, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainRestrictedBucketHighThreshold:F

    .line 139
    .line 140
    const v6, 0x10700a4

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    invoke-static {v6}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    if-eqz v7, :cond_3

    .line 156
    .line 157
    aget v6, v6, v2

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_3
    aget v6, v6, v1

    .line 161
    .line 162
    :goto_3
    iput v6, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainBgRestrictedHighThreshold:F

    .line 163
    .line 164
    const v7, 0x10e0044

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    mul-int/lit16 v7, v7, 0x3e8

    .line 172
    .line 173
    int-to-long v7, v7

    .line 174
    iput-wide v7, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainMediaPlaybackMinDuration:J

    .line 175
    .line 176
    const v9, 0x10e0043

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getInteger(I)I

    .line 180
    .line 181
    .line 182
    move-result v9

    .line 183
    mul-int/lit16 v9, v9, 0x3e8

    .line 184
    .line 185
    int-to-long v9, v9

    .line 186
    iput-wide v9, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainLocationMinDuration:J

    .line 187
    .line 188
    const v11, 0x111005c

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 192
    .line 193
    .line 194
    move-result v11

    .line 195
    iput-boolean v11, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    .line 196
    .line 197
    const v11, 0x111005b

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 201
    .line 202
    .line 203
    move-result v11

    .line 204
    iput-boolean v11, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    .line 205
    .line 206
    const v11, 0x10e0047

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getInteger(I)I

    .line 210
    .line 211
    .line 212
    move-result v11

    .line 213
    iput v11, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultCurrentDrainTypesToRestrictedBucket:I

    .line 214
    .line 215
    const v11, 0x10e0046

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getInteger(I)I

    .line 219
    .line 220
    .line 221
    move-result v11

    .line 222
    iput v11, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainTypesToBgRestricted:I

    .line 223
    .line 224
    const v11, 0x10e0045

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getInteger(I)I

    .line 228
    .line 229
    .line 230
    move-result v11

    .line 231
    iput v11, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainPowerComponent:I

    .line 232
    .line 233
    const v11, 0x10e0042

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getInteger(I)I

    .line 237
    .line 238
    .line 239
    move-result v11

    .line 240
    iput v11, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainExemptedTypes:I

    .line 241
    .line 242
    const v11, 0x111005d

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    iput-boolean p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainHighThresholdByBgLocation:Z

    .line 250
    .line 251
    iget-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    .line 252
    .line 253
    aput p2, p1, v1

    .line 254
    .line 255
    iget-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    .line 256
    .line 257
    aput v5, p1, v2

    .line 258
    .line 259
    iget-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    .line 260
    .line 261
    aput v0, p1, v1

    .line 262
    .line 263
    iget-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    .line 264
    .line 265
    aput v6, p1, v2

    .line 266
    .line 267
    iput-wide v3, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    .line 268
    .line 269
    iput-wide v3, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    .line 270
    .line 271
    iput-wide v7, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainMediaPlaybackMinDuration:J

    .line 272
    .line 273
    iput-wide v9, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainLocationMinDuration:J

    .line 274
    .line 275
    return-void
.end method

.method public static batteryUsageTypesToString(I)Ljava/lang/String;
    .locals 4

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
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-eqz v1, :cond_6

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const/16 v2, 0x7c

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 v2, 0x1

    .line 23
    if-eq v1, v2, :cond_5

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    if-eq v1, v3, :cond_4

    .line 27
    .line 28
    const/4 v3, 0x4

    .line 29
    if-eq v1, v3, :cond_3

    .line 30
    .line 31
    const/16 v3, 0x8

    .line 32
    .line 33
    if-eq v1, v3, :cond_2

    .line 34
    .line 35
    const/16 v3, 0x10

    .line 36
    .line 37
    if-eq v1, v3, :cond_1

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v1, "[UNKNOWN("

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, ")]"

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :cond_1
    const-string v3, "CACHED"

    .line 64
    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    const-string v3, "FOREGROUND_SERVICE"

    .line 70
    .line 71
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    const-string v3, "BACKGROUND"

    .line 76
    .line 77
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    const-string v3, "FOREGROUND"

    .line 82
    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    const-string v3, "UNSPECIFIED"

    .line 88
    .line 89
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    :goto_1
    not-int v1, v1

    .line 93
    and-int/2addr p0, v1

    .line 94
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    goto :goto_0

    .line 99
    :cond_6
    const-string p0, "]"

    .line 100
    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0
.end method

.method public static formatHighBgBatteryRecord(JJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)Ljava/lang/String;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    if-eqz p4, :cond_0

    .line 8
    .line 9
    invoke-static {p0, p1, p2, p3}, Landroid/util/TimeUtils;->formatTime(JJ)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p4}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p4}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->percentageToString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    new-instance p3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p0, " "

    .line 30
    .line 31
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p0, " ("

    .line 38
    .line 39
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p0, ")"

    .line 46
    .line 47
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :cond_0
    const-string p0, "0"

    .line 56
    .line 57
    return-object p0
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
    const/high16 v3, 0x7fc00000    # Float.NaN

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


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "APP BATTERY TRACKER POLICY SETTINGS:"

    .line 9
    .line 10
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "  "

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    move-object/from16 v2, p2

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-super {v0, v7, v1}, Lcom/android/server/am/BaseAppStatePolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-boolean v2, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    .line 33
    .line 34
    if-eqz v2, :cond_9

    .line 35
    .line 36
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v2, "bg_current_drain_threshold_to_restricted_bucket"

    .line 40
    .line 41
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/16 v2, 0x3d

    .line 45
    .line 46
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 47
    .line 48
    .line 49
    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    .line 50
    .line 51
    const/4 v8, 0x0

    .line 52
    aget v3, v3, v8

    .line 53
    .line 54
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(F)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v3, "bg_current_drain_high_threshold_to_restricted_bucket"

    .line 61
    .line 62
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 66
    .line 67
    .line 68
    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    .line 69
    .line 70
    const/4 v9, 0x1

    .line 71
    aget v3, v3, v9

    .line 72
    .line 73
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(F)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string v3, "bg_current_drain_threshold_to_bg_restricted"

    .line 80
    .line 81
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 85
    .line 86
    .line 87
    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    .line 88
    .line 89
    aget v3, v3, v8

    .line 90
    .line 91
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(F)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string v3, "bg_current_drain_high_threshold_to_bg_restricted"

    .line 98
    .line 99
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 103
    .line 104
    .line 105
    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    .line 106
    .line 107
    aget v3, v3, v9

    .line 108
    .line 109
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(F)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string v3, "bg_current_drain_window"

    .line 116
    .line 117
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 121
    .line 122
    .line 123
    iget-wide v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    .line 124
    .line 125
    const-string v5, "bg_current_drain_interaction_grace_period"

    .line 126
    .line 127
    invoke-static {v3, v4, v7, v1, v5}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 131
    .line 132
    .line 133
    iget-wide v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    .line 134
    .line 135
    const-string v5, "bg_current_drain_media_playback_min_duration"

    .line 136
    .line 137
    invoke-static {v3, v4, v7, v1, v5}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 141
    .line 142
    .line 143
    iget-wide v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainMediaPlaybackMinDuration:J

    .line 144
    .line 145
    const-string v5, "bg_current_drain_location_min_duration"

    .line 146
    .line 147
    invoke-static {v3, v4, v7, v1, v5}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 151
    .line 152
    .line 153
    iget-wide v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainLocationMinDuration:J

    .line 154
    .line 155
    const-string v5, "bg_current_drain_event_duration_based_threshold_enabled"

    .line 156
    .line 157
    invoke-static {v3, v4, v7, v1, v5}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 161
    .line 162
    .line 163
    iget-boolean v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    .line 164
    .line 165
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const-string v3, "bg_current_drain_auto_restrict_abusive_apps_enabled"

    .line 172
    .line 173
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 177
    .line 178
    .line 179
    iget-boolean v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    .line 180
    .line 181
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const-string v3, "bg_current_drain_types_to_restricted_bucket"

    .line 188
    .line 189
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 193
    .line 194
    .line 195
    iget v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketTypes:I

    .line 196
    .line 197
    invoke-static {v3}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->batteryUsageTypesToString(I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    const-string v3, "bg_current_drain_types_to_bg_restricted"

    .line 208
    .line 209
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 213
    .line 214
    .line 215
    iget v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedTypes:I

    .line 216
    .line 217
    invoke-static {v3}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->batteryUsageTypesToString(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    const-string v3, "bg_current_drain_power_components"

    .line 228
    .line 229
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 233
    .line 234
    .line 235
    iget v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainPowerComponents:I

    .line 236
    .line 237
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    const-string v3, "bg_current_drain_exempted_types"

    .line 244
    .line 245
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 249
    .line 250
    .line 251
    iget v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainExemptedTypes:I

    .line 252
    .line 253
    new-instance v4, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    const-string v5, "["

    .line 256
    .line 257
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 261
    .line 262
    .line 263
    move-result v5

    .line 264
    move v6, v8

    .line 265
    :goto_0
    if-eqz v5, :cond_6

    .line 266
    .line 267
    if-eqz v6, :cond_0

    .line 268
    .line 269
    const/16 v6, 0x7c

    .line 270
    .line 271
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    :cond_0
    if-eq v5, v9, :cond_5

    .line 275
    .line 276
    const/4 v6, 0x2

    .line 277
    if-eq v5, v6, :cond_4

    .line 278
    .line 279
    const/4 v6, 0x4

    .line 280
    if-eq v5, v6, :cond_3

    .line 281
    .line 282
    const/16 v6, 0x8

    .line 283
    .line 284
    if-eq v5, v6, :cond_2

    .line 285
    .line 286
    const/16 v6, 0x10

    .line 287
    .line 288
    if-eq v5, v6, :cond_1

    .line 289
    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    const-string v5, "[UNKNOWN("

    .line 293
    .line 294
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string v3, ")]"

    .line 305
    .line 306
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    goto :goto_2

    .line 314
    :cond_1
    const-string v6, "PERMISSION"

    .line 315
    .line 316
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    goto :goto_1

    .line 320
    :cond_2
    const-string v6, "FGS_NOTIFICATION"

    .line 321
    .line 322
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    goto :goto_1

    .line 326
    :cond_3
    const-string v6, "FGS_LOCATION"

    .line 327
    .line 328
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    goto :goto_1

    .line 332
    :cond_4
    const-string v6, "FGS_MEDIA_PLAYBACK"

    .line 333
    .line 334
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    goto :goto_1

    .line 338
    :cond_5
    const-string v6, "MEDIA_SESSION"

    .line 339
    .line 340
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    :goto_1
    not-int v5, v5

    .line 344
    and-int/2addr v3, v5

    .line 345
    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 346
    .line 347
    .line 348
    move-result v5

    .line 349
    move v6, v9

    .line 350
    goto :goto_0

    .line 351
    :cond_6
    const-string v3, "]"

    .line 352
    .line 353
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    :goto_2
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    const-string v3, "bg_current_drain_high_threshold_by_bg_location"

    .line 367
    .line 368
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 372
    .line 373
    .line 374
    iget-boolean v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainHighThresholdByBgLocation:Z

    .line 375
    .line 376
    const-string v3, "Full charge capacity="

    .line 377
    .line 378
    invoke-static {v7, v1, v3, v2}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 379
    .line 380
    .line 381
    iget v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryFullChargeMah:I

    .line 382
    .line 383
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 384
    .line 385
    .line 386
    const-string v2, " mAh"

    .line 387
    .line 388
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    const-string v2, "Excessive current drain detected:"

    .line 395
    .line 396
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    iget-object v10, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    .line 400
    .line 401
    monitor-enter v10

    .line 402
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 403
    .line 404
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 405
    .line 406
    .line 407
    move-result v11

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    .line 409
    .line 410
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .line 412
    .line 413
    const-string v3, "  "

    .line 414
    .line 415
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v15

    .line 425
    if-lez v11, :cond_7

    .line 426
    .line 427
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 428
    .line 429
    .line 430
    move-result-wide v13

    .line 431
    move v12, v8

    .line 432
    :goto_3
    if-ge v12, v11, :cond_8

    .line 433
    .line 434
    iget-object v1, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 435
    .line 436
    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->keyAt(I)I

    .line 437
    .line 438
    .line 439
    move-result v16

    .line 440
    iget-object v1, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 441
    .line 442
    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    check-cast v1, Landroid/util/Pair;

    .line 447
    .line 448
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 449
    .line 450
    move-object/from16 v17, v2

    .line 451
    .line 452
    check-cast v17, [J

    .line 453
    .line 454
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 455
    .line 456
    move-object/from16 v18, v1

    .line 457
    .line 458
    check-cast v18, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 459
    .line 460
    iget-wide v5, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    .line 461
    .line 462
    move-object/from16 v1, p0

    .line 463
    .line 464
    move/from16 v2, v16

    .line 465
    .line 466
    move-wide v3, v13

    .line 467
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getCurrentDrainThresholdIndex(IJJ)I

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    const-string v2, "%s%s: (threshold=%4.2f%%/%4.2f%%) %s / %s\n"

    .line 472
    .line 473
    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    iget-object v4, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    .line 478
    .line 479
    aget v4, v4, v1

    .line 480
    .line 481
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 482
    .line 483
    .line 484
    move-result-object v4

    .line 485
    iget-object v5, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    .line 486
    .line 487
    aget v1, v5, v1

    .line 488
    .line 489
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 490
    .line 491
    .line 492
    move-result-object v1

    .line 493
    aget-wide v5, v17, v8

    .line 494
    .line 495
    aget-object v9, v18, v8

    .line 496
    .line 497
    invoke-static {v5, v6, v13, v14, v9}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->formatHighBgBatteryRecord(JJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v16

    .line 501
    const/4 v5, 0x1

    .line 502
    aget-wide v8, v17, v5

    .line 503
    .line 504
    aget-object v6, v18, v5

    .line 505
    .line 506
    invoke-static {v8, v9, v13, v14, v6}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->formatHighBgBatteryRecord(JJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v17

    .line 510
    move v8, v12

    .line 511
    move-object v12, v15

    .line 512
    move-wide/from16 v18, v13

    .line 513
    .line 514
    move-object v13, v3

    .line 515
    move-object v14, v4

    .line 516
    move-object v3, v15

    .line 517
    move-object v15, v1

    .line 518
    filled-new-array/range {v12 .. v17}, [Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    invoke-virtual {v7, v2, v1}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 523
    .line 524
    .line 525
    add-int/lit8 v12, v8, 0x1

    .line 526
    .line 527
    move-object v15, v3

    .line 528
    move v9, v5

    .line 529
    move-wide/from16 v13, v18

    .line 530
    .line 531
    const/4 v8, 0x0

    .line 532
    goto :goto_3

    .line 533
    :catchall_0
    move-exception v0

    .line 534
    goto :goto_4

    .line 535
    :cond_7
    move-object v3, v15

    .line 536
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    const-string v0, "(none)"

    .line 540
    .line 541
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    :cond_8
    monitor-exit v10

    .line 545
    goto :goto_5

    .line 546
    :goto_4
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    throw v0

    .line 548
    :cond_9
    :goto_5
    return-void
.end method

.method public final getCurrentDrainThresholdIndex(IJJ)I
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget-boolean v1, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    .line 3
    .line 4
    const-wide/16 v8, 0x0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 9
    .line 10
    check-cast v1, Lcom/android/server/am/AppBatteryTracker;

    .line 11
    .line 12
    iget-object v10, v1, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 13
    .line 14
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sub-long v1, p2, p4

    .line 18
    .line 19
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide v11

    .line 23
    iget-object v1, v10, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController$Injector;->mAppMediaSessionTracker:Lcom/android/server/am/AppMediaSessionTracker;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    move/from16 v2, p1

    .line 29
    .line 30
    move-wide v4, v11

    .line 31
    move-wide/from16 v6, p2

    .line 32
    .line 33
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(IIJJ)J

    .line 34
    .line 35
    .line 36
    move-result-wide v13

    .line 37
    iget-object v1, v10, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController$Injector;->mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

    .line 40
    .line 41
    const/4 v2, 0x2

    .line 42
    invoke-static {v2}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    move/from16 v2, p1

    .line 47
    .line 48
    move-wide v4, v11

    .line 49
    move-wide/from16 v6, p2

    .line 50
    .line 51
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(IIJJ)J

    .line 52
    .line 53
    .line 54
    move-result-wide v1

    .line 55
    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 56
    .line 57
    .line 58
    move-result-wide v1

    .line 59
    iget-wide v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainMediaPlaybackMinDuration:J

    .line 60
    .line 61
    cmp-long v1, v1, v3

    .line 62
    .line 63
    if-ltz v1, :cond_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainHighThresholdByBgLocation:Z

    .line 67
    .line 68
    if-nez v1, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    iget-object v1, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 72
    .line 73
    check-cast v1, Lcom/android/server/am/AppBatteryTracker;

    .line 74
    .line 75
    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 76
    .line 77
    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 80
    .line 81
    const/4 v3, -0x1

    .line 82
    move/from16 v4, p1

    .line 83
    .line 84
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_2

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    iget-boolean v1, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    .line 92
    .line 93
    if-nez v1, :cond_3

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    sub-long v1, p2, p4

    .line 97
    .line 98
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 99
    .line 100
    .line 101
    move-result-wide v5

    .line 102
    iget-object v1, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 103
    .line 104
    check-cast v1, Lcom/android/server/am/AppBatteryTracker;

    .line 105
    .line 106
    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 107
    .line 108
    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 109
    .line 110
    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController$Injector;->mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

    .line 111
    .line 112
    const/16 v2, 0x8

    .line 113
    .line 114
    invoke-static {v2}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    move/from16 v2, p1

    .line 119
    .line 120
    move-wide v4, v5

    .line 121
    move-wide/from16 v6, p2

    .line 122
    .line 123
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(IIJJ)J

    .line 124
    .line 125
    .line 126
    move-result-wide v1

    .line 127
    iget-wide v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainLocationMinDuration:J

    .line 128
    .line 129
    cmp-long v0, v1, v3

    .line 130
    .line 131
    if-ltz v0, :cond_4

    .line 132
    .line 133
    :goto_0
    const/4 v0, 0x1

    .line 134
    goto :goto_2

    .line 135
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 136
    :goto_2
    return v0
.end method

.method public final getProposedRestrictionLevel(IILjava/lang/String;)I
    .locals 10

    .line 1
    const/4 p3, 0x0

    .line 2
    const/16 v0, 0x1e

    .line 3
    .line 4
    if-gt p2, v0, :cond_0

    .line 5
    .line 6
    return p3

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/util/Pair;

    .line 17
    .line 18
    if-eqz v2, :cond_6

    .line 19
    .line 20
    iget-object v3, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    .line 21
    .line 22
    const-wide/16 v4, 0x0

    .line 23
    .line 24
    invoke-virtual {v3, p1, v4, v5}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 25
    .line 26
    .line 27
    move-result-wide v6

    .line 28
    iget-object p1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, [J

    .line 31
    .line 32
    aget-wide v2, p1, p3

    .line 33
    .line 34
    iget-wide v8, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    .line 35
    .line 36
    add-long/2addr v6, v8

    .line 37
    cmp-long v2, v2, v6

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    if-lez v2, :cond_1

    .line 41
    .line 42
    move v2, v3

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move v2, p3

    .line 45
    :goto_0
    iget-object v6, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 46
    .line 47
    check-cast v6, Lcom/android/server/am/AppBatteryTracker;

    .line 48
    .line 49
    iget-object v6, v6, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 50
    .line 51
    iget-object v6, v6, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    .line 52
    .line 53
    iget-boolean v6, v6, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictAbusiveApps:Z

    .line 54
    .line 55
    if-eqz v6, :cond_2

    .line 56
    .line 57
    iget-boolean p0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    .line 58
    .line 59
    if-eqz p0, :cond_2

    .line 60
    .line 61
    move p3, v3

    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_3

    .line 65
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 66
    .line 67
    if-eqz p3, :cond_3

    .line 68
    .line 69
    const/16 p0, 0x28

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    move p0, v0

    .line 73
    :goto_2
    const/16 p3, 0x32

    .line 74
    .line 75
    if-le p2, p3, :cond_5

    .line 76
    .line 77
    aget-wide p1, p1, v3

    .line 78
    .line 79
    cmp-long p1, p1, v4

    .line 80
    .line 81
    if-lez p1, :cond_4

    .line 82
    .line 83
    move p0, p3

    .line 84
    :cond_4
    monitor-exit v1

    .line 85
    return p0

    .line 86
    :cond_5
    if-ne p2, p3, :cond_6

    .line 87
    .line 88
    monitor-exit v1

    .line 89
    return p0

    .line 90
    :cond_6
    monitor-exit v1

    .line 91
    return v0

    .line 92
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    throw p0
.end method

.method public final handleUidBatteryUsage(ILcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 10
    .line 11
    invoke-virtual {v1, v7}, Lcom/android/server/am/AppRestrictionController;->getBackgroundRestrictionExemptionReason(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, -0x1

    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v1, v8, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    .line 20
    .line 21
    iget v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketTypes:I

    .line 22
    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const-wide/16 v4, 0x0

    .line 28
    .line 29
    move-wide v9, v4

    .line 30
    :goto_0
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    aget-wide v11, v1, v6

    .line 37
    .line 38
    add-double/2addr v9, v11

    .line 39
    not-int v3, v3

    .line 40
    and-int/2addr v2, v3

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v1, v8, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    .line 47
    .line 48
    iget v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedTypes:I

    .line 49
    .line 50
    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    move-wide v11, v4

    .line 55
    :goto_1
    if-eqz v3, :cond_2

    .line 56
    .line 57
    invoke-static {v3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    aget-wide v4, v1, v4

    .line 62
    .line 63
    add-double/2addr v11, v4

    .line 64
    not-int v3, v3

    .line 65
    and-int/2addr v2, v3

    .line 66
    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    iget-object v13, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    .line 72
    .line 73
    monitor-enter v13

    .line 74
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 75
    .line 76
    check-cast v1, Lcom/android/server/am/AppBatteryTracker;

    .line 77
    .line 78
    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 79
    .line 80
    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 81
    .line 82
    invoke-virtual {v1, v7}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(I)I

    .line 83
    .line 84
    .line 85
    move-result v14

    .line 86
    const/16 v1, 0x32

    .line 87
    .line 88
    if-lt v14, v1, :cond_3

    .line 89
    .line 90
    monitor-exit v13

    .line 91
    return-void

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    goto/16 :goto_7

    .line 94
    .line 95
    :cond_3
    iget-object v1, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    .line 96
    .line 97
    const-wide/16 v5, 0x0

    .line 98
    .line 99
    invoke-virtual {v1, v7, v5, v6}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 100
    .line 101
    .line 102
    move-result-wide v15

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 104
    .line 105
    .line 106
    move-result-wide v17

    .line 107
    iget-wide v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    .line 108
    .line 109
    move-object/from16 v1, p0

    .line 110
    .line 111
    move/from16 v2, p1

    .line 112
    .line 113
    move-wide/from16 v19, v3

    .line 114
    .line 115
    move-wide/from16 v3, v17

    .line 116
    .line 117
    move-wide/from16 v21, v5

    .line 118
    .line 119
    move-wide/from16 v5, v19

    .line 120
    .line 121
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getCurrentDrainThresholdIndex(IJJ)I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    iget-object v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 126
    .line 127
    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    iget-boolean v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainDecoupleThresholds:Z

    .line 132
    .line 133
    iget-object v4, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    .line 134
    .line 135
    aget v4, v4, v1

    .line 136
    .line 137
    float-to-double v4, v4

    .line 138
    iget-object v6, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    .line 139
    .line 140
    aget v1, v6, v1

    .line 141
    .line 142
    move-wide/from16 v19, v11

    .line 143
    .line 144
    float-to-double v11, v1

    .line 145
    const/4 v6, 0x2

    .line 146
    const/16 v23, 0x0

    .line 147
    .line 148
    const/4 v1, 0x1

    .line 149
    if-gez v2, :cond_7

    .line 150
    .line 151
    cmpl-double v2, v9, v4

    .line 152
    .line 153
    if-ltz v2, :cond_5

    .line 154
    .line 155
    iget-wide v4, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    .line 156
    .line 157
    add-long/2addr v15, v4

    .line 158
    cmp-long v2, v17, v15

    .line 159
    .line 160
    if-lez v2, :cond_4

    .line 161
    .line 162
    new-array v2, v6, [J

    .line 163
    .line 164
    aput-wide v17, v2, v23

    .line 165
    .line 166
    new-array v4, v6, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 167
    .line 168
    aput-object v8, v4, v23

    .line 169
    .line 170
    iget-object v5, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 171
    .line 172
    invoke-static {v2, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    invoke-virtual {v5, v7, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    move/from16 v23, v1

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_4
    const/4 v2, 0x0

    .line 183
    const/4 v4, 0x0

    .line 184
    :goto_2
    move v5, v1

    .line 185
    goto :goto_3

    .line 186
    :cond_5
    move/from16 v5, v23

    .line 187
    .line 188
    const/4 v2, 0x0

    .line 189
    const/4 v4, 0x0

    .line 190
    :goto_3
    if-eqz v3, :cond_f

    .line 191
    .line 192
    cmpl-double v3, v19, v11

    .line 193
    .line 194
    if-ltz v3, :cond_f

    .line 195
    .line 196
    if-nez v2, :cond_6

    .line 197
    .line 198
    new-array v2, v6, [J

    .line 199
    .line 200
    new-array v4, v6, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 201
    .line 202
    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 203
    .line 204
    invoke-static {v2, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    invoke-virtual {v3, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    :cond_6
    aput-wide v17, v2, v1

    .line 212
    .line 213
    aput-object v8, v4, v1

    .line 214
    .line 215
    move v5, v1

    .line 216
    move/from16 v23, v5

    .line 217
    .line 218
    goto :goto_6

    .line 219
    :cond_7
    iget-object v6, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 220
    .line 221
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    check-cast v2, Landroid/util/Pair;

    .line 226
    .line 227
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v6, [J

    .line 230
    .line 231
    aget-wide v24, v6, v23

    .line 232
    .line 233
    cmpl-double v4, v9, v4

    .line 234
    .line 235
    if-ltz v4, :cond_a

    .line 236
    .line 237
    iget-wide v4, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    .line 238
    .line 239
    add-long/2addr v15, v4

    .line 240
    cmp-long v4, v17, v15

    .line 241
    .line 242
    if-lez v4, :cond_9

    .line 243
    .line 244
    cmp-long v4, v24, v21

    .line 245
    .line 246
    if-nez v4, :cond_8

    .line 247
    .line 248
    aput-wide v17, v6, v23

    .line 249
    .line 250
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast v4, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 253
    .line 254
    aput-object v8, v4, v23

    .line 255
    .line 256
    :cond_8
    move v4, v1

    .line 257
    goto :goto_4

    .line 258
    :cond_9
    move/from16 v4, v23

    .line 259
    .line 260
    :goto_4
    move v5, v1

    .line 261
    goto :goto_5

    .line 262
    :cond_a
    move/from16 v4, v23

    .line 263
    .line 264
    move v5, v4

    .line 265
    :goto_5
    cmpl-double v9, v19, v11

    .line 266
    .line 267
    if-ltz v9, :cond_e

    .line 268
    .line 269
    if-nez v3, :cond_b

    .line 270
    .line 271
    const/16 v3, 0x28

    .line 272
    .line 273
    if-ne v14, v3, :cond_c

    .line 274
    .line 275
    iget-wide v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    .line 276
    .line 277
    add-long v24, v24, v3

    .line 278
    .line 279
    cmp-long v3, v17, v24

    .line 280
    .line 281
    if-lez v3, :cond_c

    .line 282
    .line 283
    :cond_b
    move/from16 v23, v1

    .line 284
    .line 285
    :cond_c
    if-eqz v23, :cond_d

    .line 286
    .line 287
    aput-wide v17, v6, v1

    .line 288
    .line 289
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 290
    .line 291
    check-cast v2, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 292
    .line 293
    aput-object v8, v2, v1

    .line 294
    .line 295
    :cond_d
    move v5, v1

    .line 296
    goto :goto_6

    .line 297
    :cond_e
    aput-wide v21, v6, v1

    .line 298
    .line 299
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast v2, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 302
    .line 303
    const/4 v3, 0x0

    .line 304
    aput-object v3, v2, v1

    .line 305
    .line 306
    move/from16 v23, v4

    .line 307
    .line 308
    :cond_f
    :goto_6
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    if-eqz v5, :cond_10

    .line 310
    .line 311
    if-eqz v23, :cond_10

    .line 312
    .line 313
    iget-object v0, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 314
    .line 315
    check-cast v0, Lcom/android/server/am/AppBatteryTracker;

    .line 316
    .line 317
    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 318
    .line 319
    const/16 v2, 0x600

    .line 320
    .line 321
    const/4 v3, 0x2

    .line 322
    invoke-virtual {v0, v7, v2, v3, v1}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUid(IIIZ)V

    .line 323
    .line 324
    .line 325
    :cond_10
    return-void

    .line 326
    :goto_7
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    throw v0
.end method

.method public final onPropertiesChanged(Ljava/lang/String;)V
    .locals 12

    .line 1
    const-string v0, "bg_current_drain_window"

    .line 2
    .line 3
    const-string v1, "bg_current_drain_exempted_types"

    .line 4
    .line 5
    const-string v2, "bg_current_drain_interaction_grace_period"

    .line 6
    .line 7
    const-string v3, "bg_current_drain_auto_restrict_abusive_apps_enabled"

    .line 8
    .line 9
    const-string v4, "bg_current_drain_location_min_duration"

    .line 10
    .line 11
    const-string v5, "bg_current_drain_media_playback_min_duration"

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    const-string v7, "bg_current_drain_decouple_thresholds"

    .line 15
    .line 16
    const-string v8, "bg_current_drain_event_duration_based_threshold_enabled"

    .line 17
    .line 18
    const-string v9, "activity_manager"

    .line 19
    .line 20
    const/4 v10, -0x1

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v11

    .line 25
    sparse-switch v11, :sswitch_data_0

    .line 26
    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :sswitch_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v11

    .line 34
    if-nez v11, :cond_0

    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :cond_0
    const/16 v10, 0xf

    .line 39
    .line 40
    goto/16 :goto_0

    .line 41
    .line 42
    :sswitch_1
    const-string v11, "bg_current_drain_threshold_to_restricted_bucket"

    .line 43
    .line 44
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v11

    .line 48
    if-nez v11, :cond_1

    .line 49
    .line 50
    goto/16 :goto_0

    .line 51
    .line 52
    :cond_1
    const/16 v10, 0xe

    .line 53
    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :sswitch_2
    const-string v11, "bg_current_drain_threshold_to_bg_restricted"

    .line 57
    .line 58
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    if-nez v11, :cond_2

    .line 63
    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :cond_2
    const/16 v10, 0xd

    .line 67
    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :sswitch_3
    const-string v11, "bg_current_drain_types_to_bg_restricted"

    .line 71
    .line 72
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v11

    .line 76
    if-nez v11, :cond_3

    .line 77
    .line 78
    goto/16 :goto_0

    .line 79
    .line 80
    :cond_3
    const/16 v10, 0xc

    .line 81
    .line 82
    goto/16 :goto_0

    .line 83
    .line 84
    :sswitch_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v11

    .line 88
    if-nez v11, :cond_4

    .line 89
    .line 90
    goto/16 :goto_0

    .line 91
    .line 92
    :cond_4
    const/16 v10, 0xb

    .line 93
    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :sswitch_5
    const-string v11, "bg_current_drain_types_to_restricted_bucket"

    .line 97
    .line 98
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v11

    .line 102
    if-nez v11, :cond_5

    .line 103
    .line 104
    goto/16 :goto_0

    .line 105
    .line 106
    :cond_5
    const/16 v10, 0xa

    .line 107
    .line 108
    goto/16 :goto_0

    .line 109
    .line 110
    :sswitch_6
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v11

    .line 114
    if-nez v11, :cond_6

    .line 115
    .line 116
    goto/16 :goto_0

    .line 117
    .line 118
    :cond_6
    const/16 v10, 0x9

    .line 119
    .line 120
    goto/16 :goto_0

    .line 121
    .line 122
    :sswitch_7
    const-string v11, "bg_current_drain_high_threshold_by_bg_location"

    .line 123
    .line 124
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v11

    .line 128
    if-nez v11, :cond_7

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_7
    const/16 v10, 0x8

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :sswitch_8
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v11

    .line 138
    if-nez v11, :cond_8

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_8
    const/4 v10, 0x7

    .line 142
    goto :goto_0

    .line 143
    :sswitch_9
    const-string v11, "bg_current_drain_high_threshold_to_bg_restricted"

    .line 144
    .line 145
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v11

    .line 149
    if-nez v11, :cond_9

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_9
    const/4 v10, 0x6

    .line 153
    goto :goto_0

    .line 154
    :sswitch_a
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v11

    .line 158
    if-nez v11, :cond_a

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_a
    const/4 v10, 0x5

    .line 162
    goto :goto_0

    .line 163
    :sswitch_b
    const-string v11, "bg_current_drain_high_threshold_to_restricted_bucket"

    .line 164
    .line 165
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v11

    .line 169
    if-nez v11, :cond_b

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_b
    const/4 v10, 0x4

    .line 173
    goto :goto_0

    .line 174
    :sswitch_c
    const-string v11, "bg_current_drain_power_components"

    .line 175
    .line 176
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v11

    .line 180
    if-nez v11, :cond_c

    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_c
    const/4 v10, 0x3

    .line 184
    goto :goto_0

    .line 185
    :sswitch_d
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v11

    .line 189
    if-nez v11, :cond_d

    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_d
    const/4 v10, 0x2

    .line 193
    goto :goto_0

    .line 194
    :sswitch_e
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v11

    .line 198
    if-nez v11, :cond_e

    .line 199
    .line 200
    goto :goto_0

    .line 201
    :cond_e
    move v10, v6

    .line 202
    goto :goto_0

    .line 203
    :sswitch_f
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v11

    .line 207
    if-nez v11, :cond_f

    .line 208
    .line 209
    goto :goto_0

    .line 210
    :cond_f
    const/4 v10, 0x0

    .line 211
    :goto_0
    packed-switch v10, :pswitch_data_0

    .line 212
    .line 213
    .line 214
    iget-object v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mKeyTrackerEnabled:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    if-eqz p1, :cond_10

    .line 221
    .line 222
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateTrackerEnabled()V

    .line 223
    .line 224
    .line 225
    goto :goto_1

    .line 226
    :pswitch_0
    iget-wide v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainWindowMs:J

    .line 227
    .line 228
    invoke-static {v9, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 229
    .line 230
    .line 231
    move-result-wide v0

    .line 232
    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    .line 233
    .line 234
    goto :goto_1

    .line 235
    :pswitch_1
    iget p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainExemptedTypes:I

    .line 236
    .line 237
    invoke-static {v9, v1, p1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    iput p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainExemptedTypes:I

    .line 242
    .line 243
    goto :goto_1

    .line 244
    :pswitch_2
    iget-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainInteractionGracePeriodMs:J

    .line 245
    .line 246
    invoke-static {v9, v2, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 247
    .line 248
    .line 249
    move-result-wide v0

    .line 250
    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    .line 251
    .line 252
    goto :goto_1

    .line 253
    :pswitch_3
    iget-boolean p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    .line 254
    .line 255
    invoke-static {v9, v3, p1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    iput-boolean p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    .line 260
    .line 261
    goto :goto_1

    .line 262
    :pswitch_4
    iget-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainLocationMinDuration:J

    .line 263
    .line 264
    invoke-static {v9, v4, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 265
    .line 266
    .line 267
    move-result-wide v0

    .line 268
    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainLocationMinDuration:J

    .line 269
    .line 270
    goto :goto_1

    .line 271
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainThreshold()V

    .line 272
    .line 273
    .line 274
    goto :goto_1

    .line 275
    :pswitch_6
    iget-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainMediaPlaybackMinDuration:J

    .line 276
    .line 277
    invoke-static {v9, v5, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 278
    .line 279
    .line 280
    move-result-wide v0

    .line 281
    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainMediaPlaybackMinDuration:J

    .line 282
    .line 283
    goto :goto_1

    .line 284
    :pswitch_7
    invoke-static {v9, v7, v6}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 285
    .line 286
    .line 287
    move-result p1

    .line 288
    iput-boolean p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainDecoupleThresholds:Z

    .line 289
    .line 290
    goto :goto_1

    .line 291
    :pswitch_8
    iget-boolean p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    .line 292
    .line 293
    invoke-static {v9, v8, p1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 294
    .line 295
    .line 296
    move-result p1

    .line 297
    iput-boolean p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    .line 298
    .line 299
    :cond_10
    :goto_1
    return-void

    .line 300
    nop

    .line 301
    :sswitch_data_0
    .sparse-switch
        -0x756855de -> :sswitch_f
        -0x701eaca1 -> :sswitch_e
        -0x1fb1101d -> :sswitch_d
        -0x1f35f949 -> :sswitch_c
        -0x1d805c6c -> :sswitch_b
        0x303f164 -> :sswitch_a
        0x60568db -> :sswitch_9
        0x7be7274 -> :sswitch_8
        0x17cc3411 -> :sswitch_7
        0x1edfa25c -> :sswitch_6
        0x270cf0f7 -> :sswitch_5
        0x2ad74b9f -> :sswitch_4
        0x43bedfbe -> :sswitch_3
        0x513daa8c -> :sswitch_2
        0x6f6da4c5 -> :sswitch_1
        0x74efacd7 -> :sswitch_0
    .end sparse-switch

    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public final onSystemReady()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryFullCharge()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    div-int/lit16 v0, v0, 0x3e8

    .line 10
    .line 11
    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryFullChargeMah:I

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateTrackerEnabled()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainThreshold()V

    .line 17
    .line 18
    .line 19
    const-string v0, "bg_current_drain_window"

    .line 20
    .line 21
    iget-wide v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainWindowMs:J

    .line 22
    .line 23
    const-string v3, "activity_manager"

    .line 24
    .line 25
    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    .line 30
    .line 31
    const-string v0, "bg_current_drain_interaction_grace_period"

    .line 32
    .line 33
    iget-wide v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainInteractionGracePeriodMs:J

    .line 34
    .line 35
    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    .line 40
    .line 41
    const-string v0, "bg_current_drain_media_playback_min_duration"

    .line 42
    .line 43
    iget-wide v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainMediaPlaybackMinDuration:J

    .line 44
    .line 45
    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainMediaPlaybackMinDuration:J

    .line 50
    .line 51
    const-string v0, "bg_current_drain_location_min_duration"

    .line 52
    .line 53
    iget-wide v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainLocationMinDuration:J

    .line 54
    .line 55
    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainLocationMinDuration:J

    .line 60
    .line 61
    const-string v0, "bg_current_drain_event_duration_based_threshold_enabled"

    .line 62
    .line 63
    iget-boolean v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    .line 64
    .line 65
    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iput-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    .line 70
    .line 71
    const-string v0, "bg_current_drain_exempted_types"

    .line 72
    .line 73
    iget v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainExemptedTypes:I

    .line 74
    .line 75
    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainExemptedTypes:I

    .line 80
    .line 81
    const-string v0, "bg_current_drain_decouple_thresholds"

    .line 82
    .line 83
    const/4 v1, 0x1

    .line 84
    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iput-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainDecoupleThresholds:Z

    .line 89
    .line 90
    const-string v0, "bg_current_drain_auto_restrict_abusive_apps_enabled"

    .line 91
    .line 92
    iget-boolean v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    .line 93
    .line 94
    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    iput-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    .line 99
    .line 100
    return-void
.end method

.method public final onTrackerEnabled(Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/am/AppBatteryTracker;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_2

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    iget-wide v1, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingIntervalMs:J

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter p1

    .line 37
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsUpdatePending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_2

    .line 49
    :catch_0
    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsage:Landroid/util/SparseArray;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 62
    .line 63
    .line 64
    const-wide/16 v0, 0x0

    .line 65
    .line 66
    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker;->mLastBatteryUsageSamplingTs:J

    .line 67
    .line 68
    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsageStartTs:J

    .line 69
    .line 70
    monitor-exit p1

    .line 71
    :cond_2
    :goto_1
    return-void

    .line 72
    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    throw p0
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 12
    .line 13
    check-cast p0, Lcom/android/server/am/AppBatteryTracker;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker;->reset()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final updateCurrentDrainThreshold()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    .line 2
    .line 3
    const-string v1, "bg_current_drain_threshold_to_restricted_bucket"

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainRestrictedBucket:F

    .line 6
    .line 7
    const-string v3, "activity_manager"

    .line 8
    .line 9
    invoke-static {v3, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    aput v1, v0, v2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    .line 17
    .line 18
    const-string v1, "bg_current_drain_high_threshold_to_restricted_bucket"

    .line 19
    .line 20
    iget v4, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainRestrictedBucketHighThreshold:F

    .line 21
    .line 22
    invoke-static {v3, v1, v4}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v4, 0x1

    .line 27
    aput v1, v0, v4

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    .line 30
    .line 31
    const-string v1, "bg_current_drain_threshold_to_bg_restricted"

    .line 32
    .line 33
    iget v5, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainBgRestrictedThreshold:F

    .line 34
    .line 35
    invoke-static {v3, v1, v5}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    aput v1, v0, v2

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    .line 42
    .line 43
    const-string v1, "bg_current_drain_high_threshold_to_bg_restricted"

    .line 44
    .line 45
    iget v5, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainBgRestrictedHighThreshold:F

    .line 46
    .line 47
    invoke-static {v3, v1, v5}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    aput v1, v0, v4

    .line 52
    .line 53
    const-string v0, "bg_current_drain_types_to_restricted_bucket"

    .line 54
    .line 55
    iget v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultCurrentDrainTypesToRestrictedBucket:I

    .line 56
    .line 57
    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketTypes:I

    .line 62
    .line 63
    const-string v0, "bg_current_drain_types_to_bg_restricted"

    .line 64
    .line 65
    iget v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainTypesToBgRestricted:I

    .line 66
    .line 67
    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedTypes:I

    .line 72
    .line 73
    const-string v0, "bg_current_drain_power_components"

    .line 74
    .line 75
    iget v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainPowerComponent:I

    .line 76
    .line 77
    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainPowerComponents:I

    .line 82
    .line 83
    iget v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainPowerComponents:I

    .line 84
    .line 85
    const/4 v1, -0x1

    .line 86
    if-ne v0, v1, :cond_0

    .line 87
    .line 88
    sget-object v0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->BATT_DIMENS:[Landroid/os/BatteryConsumer$Dimensions;

    .line 89
    .line 90
    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryDimensions:[Landroid/os/BatteryConsumer$Dimensions;

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_0
    const/4 v0, 0x5

    .line 94
    new-array v1, v0, [Landroid/os/BatteryConsumer$Dimensions;

    .line 95
    .line 96
    iput-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryDimensions:[Landroid/os/BatteryConsumer$Dimensions;

    .line 97
    .line 98
    :goto_0
    if-ge v2, v0, :cond_1

    .line 99
    .line 100
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryDimensions:[Landroid/os/BatteryConsumer$Dimensions;

    .line 101
    .line 102
    new-instance v4, Landroid/os/BatteryConsumer$Dimensions;

    .line 103
    .line 104
    iget v5, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainPowerComponents:I

    .line 105
    .line 106
    invoke-direct {v4, v5, v2}, Landroid/os/BatteryConsumer$Dimensions;-><init>(II)V

    .line 107
    .line 108
    .line 109
    aput-object v4, v1, v2

    .line 110
    .line 111
    add-int/lit8 v2, v2, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    :goto_1
    const-string v0, "bg_current_drain_high_threshold_by_bg_location"

    .line 115
    .line 116
    iget-boolean v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainHighThresholdByBgLocation:Z

    .line 117
    .line 118
    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    iput-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainHighThresholdByBgLocation:Z

    .line 123
    .line 124
    return-void
.end method

.method public final updateTrackerEnabled()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryFullChargeMah:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Lcom/android/server/am/BaseAppStatePolicy;->updateTrackerEnabled()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->onTrackerEnabled(Z)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method
