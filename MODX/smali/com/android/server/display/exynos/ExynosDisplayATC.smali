.class public final Lcom/android/server/display/exynos/ExynosDisplayATC;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static TUNE_MODE:Z


# instance fields
.field public final ATC_BL_FILE_PATH:Ljava/lang/String;

.field public final ATC_CAL_FILE_PATH:Ljava/lang/String;

.field public final DEBUG:Z

.field public mAmbientLight:[I

.field public mApsDelayedOffRequired:Z

.field public mApsDelayedOffTable:[I

.field public final mApsInit:Ljava/lang/String;

.field public mApsTable:[Ljava/lang/String;

.field public final mBrightnessInit:[I

.field public mBrightnessLux:[I

.field public mBrightnessSetting:[I

.field public final mContext:Landroid/content/Context;

.field public mCountDownTimerCount:I

.field public mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayATC$2;

.field public final mDataCollectionLock:Ljava/lang/Object;

.field public mDimOperating:I

.field public mEventCount:I

.field public final mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

.field public final mHandler:Lcom/android/server/display/exynos/ExynosDisplayATC$1;

.field public mHsvLcgTable:[[Ljava/lang/String;

.field public mHsvTable:[Ljava/lang/String;

.field public mIntervalMs:I

.field public mItem:[Ljava/lang/String;

.field public mLastAps:Ljava/lang/String;

.field public mLastApsDelayedOff:I

.field public mLastHsv:Ljava/lang/String;

.field public mLastHsvLcg:[Ljava/lang/String;

.field public mLastLuminance:I

.field public final mLastSensorReadings:Ljava/util/Deque;

.field public final mLightSensor:Landroid/hardware/Sensor;

.field public mLightSensorEnabled:Z

.field public final mLocalHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public mMaxCountDownTimerCount:I

.field public mPreOnOff:Z

.field public mPrevAps:Ljava/lang/String;

.field public mPrevHsv:Ljava/lang/String;

.field public mPrevHsvLcg:[Ljava/lang/String;

.field public mPrevLuminance:I

.field public mPrevPos:I

.field public mQalcoeff:Ljava/lang/String;

.field public mQcoeff:Ljava/lang/String;

.field public mQdelay:Ljava/lang/String;

.field public mQsize:Ljava/lang/String;

.field public mQueAlCoeffTable:[Ljava/lang/String;

.field public mQueCoeffTable:[Ljava/lang/String;

.field public mQueDelayTable:[Ljava/lang/String;

.field public mQueSizeTable:[Ljava/lang/String;

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public mTimeoutMs:I

.field public final sensorListener:Lcom/android/server/display/exynos/ExynosDisplayATC$3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    const-wide/16 v1, 0xa

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/exynos/ExynosDisplayAdapter;)V
    .locals 6

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
    iput-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->DEBUG:Z

    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLightSensor:Landroid/hardware/Sensor;

    .line 18
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mSensorManager:Landroid/hardware/SensorManager;

    .line 20
    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLightSensorEnabled:Z

    .line 23
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsInit:Ljava/lang/String;

    .line 25
    const-string v2, "8"

    .line 27
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQsize:Ljava/lang/String;

    .line 29
    const-string v2, "10,5,4,3,2,1,1,1"

    .line 31
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQcoeff:Ljava/lang/String;

    .line 33
    const-string v2, "4"

    .line 35
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQalcoeff:Ljava/lang/String;

    .line 37
    const-string v2, "0"

    .line 39
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQdelay:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mItem:[Ljava/lang/String;

    .line 43
    const-string v2, "/data/dqe/calib_data_atc.xml"

    .line 45
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_CAL_FILE_PATH:Ljava/lang/String;

    .line 47
    const-string v2, "/data/dqe/calib_data_atc_bl.xml"

    .line 49
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_BL_FILE_PATH:Ljava/lang/String;

    .line 51
    new-instance v2, Ljava/lang/Object;

    .line 53
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mDataCollectionLock:Ljava/lang/Object;

    .line 58
    new-instance v2, Ljava/util/ArrayDeque;

    .line 60
    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 63
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    .line 65
    const/16 v2, 0xd

    .line 67
    new-array v2, v2, [I

    .line 69
    fill-array-data v2, :array_0

    .line 72
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    .line 74
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueSizeTable:[Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueCoeffTable:[Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueDelayTable:[Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueAlCoeffTable:[Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvTable:[Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvLcgTable:[[Ljava/lang/String;

    .line 88
    filled-new-array {v1}, [I

    .line 91
    move-result-object v2

    .line 92
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffTable:[I

    .line 94
    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastLuminance:I

    .line 96
    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevLuminance:I

    .line 98
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastAps:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevAps:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsv:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevHsv:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsvLcg:[Ljava/lang/String;

    .line 108
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevHsvLcg:[Ljava/lang/String;

    .line 110
    iput-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPreOnOff:Z

    .line 112
    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastApsDelayedOff:I

    .line 114
    iput-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffRequired:Z

    .line 116
    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mEventCount:I

    .line 118
    const/4 v2, -0x1

    .line 119
    iput v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    .line 121
    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mDimOperating:I

    .line 123
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayATC$2;

    .line 125
    const/16 v2, 0x5dc

    .line 127
    iput v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mTimeoutMs:I

    .line 129
    const/16 v2, 0x1f4

    .line 131
    iput v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mIntervalMs:I

    .line 133
    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountDownTimerCount:I

    .line 135
    const/16 v2, 0x44

    .line 137
    iput v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mMaxCountDownTimerCount:I

    .line 139
    filled-new-array {v1}, [I

    .line 142
    move-result-object v2

    .line 143
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessInit:[I

    .line 145
    filled-new-array {v1}, [I

    .line 148
    move-result-object v2

    .line 149
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    .line 151
    filled-new-array {v1}, [I

    .line 154
    move-result-object v2

    .line 155
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessSetting:[I

    .line 157
    new-instance v2, Ljava/lang/Object;

    .line 159
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLock:Ljava/lang/Object;

    .line 164
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 166
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayATC$1;

    .line 168
    invoke-direct {v0, p0}, Lcom/android/server/display/exynos/ExynosDisplayATC$1;-><init>(Lcom/android/server/display/exynos/ExynosDisplayATC;)V

    .line 171
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHandler:Lcom/android/server/display/exynos/ExynosDisplayATC$1;

    .line 173
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayATC$3;

    .line 175
    invoke-direct {v0, p0}, Lcom/android/server/display/exynos/ExynosDisplayATC$3;-><init>(Lcom/android/server/display/exynos/ExynosDisplayATC;)V

    .line 178
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->sensorListener:Lcom/android/server/display/exynos/ExynosDisplayATC$3;

    .line 180
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mContext:Landroid/content/Context;

    .line 182
    iput-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 184
    const-class v0, Landroid/hardware/SensorManager;

    .line 186
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 189
    move-result-object v0

    .line 190
    check-cast v0, Landroid/hardware/SensorManager;

    .line 192
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mSensorManager:Landroid/hardware/SensorManager;

    .line 194
    const/4 v2, 0x5

    .line 195
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 198
    move-result-object v0

    .line 199
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLightSensor:Landroid/hardware/Sensor;

    .line 201
    new-instance v0, Landroid/os/Handler;

    .line 203
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 206
    move-result-object p1

    .line 207
    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 210
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLocalHandler:Landroid/os/Handler;

    .line 212
    const-string/jumbo p1, "calib_data_bypass.xml"

    .line 215
    invoke-virtual {p2, p1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 218
    move-result-object p1

    .line 219
    const-string p2, "aps"

    .line 221
    invoke-static {v1, p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXMLALText(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 224
    move-result-object p1

    .line 225
    if-eqz p1, :cond_1

    .line 227
    array-length p2, p1

    .line 228
    if-gtz p2, :cond_0

    .line 230
    goto :goto_0

    .line 231
    :cond_0
    aget-object p1, p1, v1

    .line 233
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsInit:Ljava/lang/String;

    .line 235
    goto :goto_1

    .line 236
    :cond_1
    :goto_0
    const-string p1, "ExynosDisplayATC"

    .line 238
    const-string/jumbo p2, "xml aps not found"

    .line 241
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string p1, "0,0,128,128,128,0,10,14,2,0,25,230,140,250,0,3,3,2,3,128,1"

    .line 246
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsInit:Ljava/lang/String;

    .line 248
    :goto_1
    new-instance p1, Lcom/android/server/display/exynos/ExynosDisplayATC$2;

    .line 250
    iget p2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mTimeoutMs:I

    .line 252
    int-to-long v2, p2

    .line 253
    iget p2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mIntervalMs:I

    .line 255
    int-to-long v4, p2

    .line 256
    move-object v0, p1

    .line 257
    move-object v1, p0

    .line 258
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/exynos/ExynosDisplayATC$2;-><init>(Lcom/android/server/display/exynos/ExynosDisplayATC;JJ)V

    .line 261
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayATC$2;

    .line 263
    return-void

    .line 264
    nop

    .line 265
    :array_0
    .array-data 4
        0x0
        0xbb8
        0xfa0
        0x1388
        0x1770
        0x1f40
        0x2710
        0x3a98
        0x4e20
        0x61a8
        0x7530
        0x9c40
        0xc350
    .end array-data
.end method

.method public static enableATCTuneMode(Z)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    .line 3
    if-eq p0, v0, :cond_0

    .line 5
    const-string/jumbo v0, "enableATCTuneMode: TUNE_MODE="

    .line 8
    const-string v1, "ExynosDisplayATC"

    .line 10
    invoke-static {v0, v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 13
    :cond_0
    sput-boolean p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    .line 15
    return-void
.end method


# virtual methods
.method public final caculateLuminance()V
    .locals 12

    .line 1
    const-string v0, "\\s*,\\s*"

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    .line 5
    check-cast v1, Ljava/util/ArrayDeque;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    .line 10
    move-result v1

    .line 11
    new-array v2, v1, [F

    .line 13
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    .line 15
    check-cast v3, Ljava/util/ArrayDeque;

    .line 17
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v3

    .line 21
    const/4 v4, 0x0

    .line 22
    move v5, v4

    .line 23
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v6

    .line 27
    if-eqz v6, :cond_0

    .line 29
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v6

    .line 33
    check-cast v6, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;

    .line 35
    add-int/lit8 v7, v5, 0x1

    .line 37
    iget v6, v6, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;->lux:F

    .line 39
    aput v6, v2, v5

    .line 41
    move v5, v7

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    goto/16 :goto_6

    .line 46
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQsize:Ljava/lang/String;

    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 51
    move-result-object v3

    .line 52
    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mItem:[Ljava/lang/String;

    .line 54
    aget-object v3, v3, v4

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 59
    move-result v3

    .line 60
    new-array v5, v3, [I

    .line 62
    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQcoeff:Ljava/lang/String;

    .line 64
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 67
    move-result-object v6

    .line 68
    iput-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mItem:[Ljava/lang/String;

    .line 70
    move v6, v4

    .line 71
    :goto_1
    if-ge v6, v3, :cond_1

    .line 73
    aput v4, v5, v6

    .line 75
    add-int/lit8 v6, v6, 0x1

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    move v6, v4

    .line 79
    :goto_2
    iget-object v7, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mItem:[Ljava/lang/String;

    .line 81
    array-length v8, v7

    .line 82
    if-ge v6, v8, :cond_2

    .line 84
    aget-object v7, v7, v6

    .line 86
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 89
    move-result v7

    .line 90
    aput v7, v5, v6

    .line 92
    add-int/lit8 v6, v6, 0x1

    .line 94
    goto :goto_2

    .line 95
    :cond_2
    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQalcoeff:Ljava/lang/String;

    .line 97
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 101
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mItem:[Ljava/lang/String;

    .line 103
    aget-object v0, v0, v4

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 108
    move-result v0

    .line 109
    sget-boolean v6, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    .line 111
    if-eqz v6, :cond_4

    .line 113
    const-string/jumbo v6, "qcoef: "

    .line 116
    move v7, v4

    .line 117
    :goto_3
    if-ge v7, v3, :cond_3

    .line 119
    new-instance v8, Ljava/lang/StringBuilder;

    .line 121
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    aget v6, v5, v7

    .line 129
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 132
    move-result-object v6

    .line 133
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v6, ","

    .line 138
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    move-result-object v6

    .line 145
    add-int/lit8 v7, v7, 0x1

    .line 147
    goto :goto_3

    .line 148
    :cond_3
    const-string v7, "ExynosDisplayATC"

    .line 150
    new-instance v8, Ljava/lang/StringBuilder;

    .line 152
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v6, " qalcoeff: "

    .line 160
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object v6

    .line 170
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_4
    add-int/lit8 v6, v1, -0x1

    .line 175
    move v7, v4

    .line 176
    move v8, v6

    .line 177
    move v6, v7

    .line 178
    :goto_4
    if-ltz v8, :cond_6

    .line 180
    if-ge v1, v3, :cond_5

    .line 182
    aget v9, v2, v8

    .line 184
    float-to-int v9, v9

    .line 185
    aget v10, v5, v7

    .line 187
    mul-int/2addr v9, v10

    .line 188
    add-int/2addr v9, v4

    .line 189
    add-int/2addr v6, v10

    .line 190
    add-int/lit8 v7, v7, 0x1

    .line 192
    move v4, v9

    .line 193
    goto :goto_5

    .line 194
    :cond_5
    aget v9, v2, v8

    .line 196
    float-to-int v9, v9

    .line 197
    aget v10, v5, v7

    .line 199
    mul-int/2addr v9, v10

    .line 200
    iget v11, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastLuminance:I

    .line 202
    mul-int/2addr v11, v0

    .line 203
    add-int/2addr v11, v9

    .line 204
    add-int/2addr v11, v4

    .line 205
    add-int/2addr v6, v10

    .line 206
    add-int/2addr v6, v0

    .line 207
    add-int/lit8 v7, v7, 0x1

    .line 209
    move v4, v11

    .line 210
    :goto_5
    add-int/lit8 v8, v8, -0x1

    .line 212
    goto :goto_4

    .line 213
    :cond_6
    div-int/2addr v4, v6

    .line 214
    iput v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastLuminance:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    goto :goto_7

    .line 217
    :goto_6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 220
    :goto_7
    return-void
.end method

.method public final enableATC(Z)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->resetATC()V

    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz p1, :cond_10

    .line 8
    sget-boolean p1, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    .line 10
    if-nez p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 14
    const-string/jumbo v2, "calib_data_atc.xml"

    .line 17
    invoke-virtual {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 23
    const-string/jumbo v3, "xml"

    .line 26
    invoke-virtual {v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getPathWithPanel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_CAL_FILE_PATH:Ljava/lang/String;

    .line 37
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 39
    const-string/jumbo v3, "xml"

    .line 42
    invoke-virtual {v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getPathWithPanel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    :goto_0
    if-eqz p1, :cond_f

    .line 52
    const-string/jumbo v2, "tune"

    .line 55
    const-string v3, "array_length: "

    .line 57
    const-string/jumbo v4, "xml array size wrong: "

    .line 60
    :try_start_0
    const-string v5, "atc"

    .line 62
    const-string v6, "al"

    .line 64
    invoke-static {p1, v2, v5, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    if-nez v2, :cond_1

    .line 70
    goto/16 :goto_a

    .line 72
    :cond_1
    array-length v5, v2

    .line 73
    if-gtz v5, :cond_2

    .line 75
    const-string p1, "ExynosDisplayATC"

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    array-length v2, v2

    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 90
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    goto/16 :goto_a

    .line 95
    :catch_0
    move-exception p1

    .line 96
    goto/16 :goto_9

    .line 98
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLock:Ljava/lang/Object;

    .line 100
    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :try_start_1
    const-string v5, "ExynosDisplayATC"

    .line 103
    new-instance v6, Ljava/lang/StringBuilder;

    .line 105
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    array-length v3, v2

    .line 109
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object v3

    .line 116
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    array-length v3, v2

    .line 120
    new-array v3, v3, [I

    .line 122
    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    .line 124
    move v3, v0

    .line 125
    :goto_1
    array-length v5, v2

    .line 126
    if-ge v3, v5, :cond_3

    .line 128
    iget-object v5, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    .line 130
    aget-object v6, v2, v3

    .line 132
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 135
    move-result v6

    .line 136
    aput v6, v5, v3

    .line 138
    const-string v5, "ExynosDisplayATC"

    .line 140
    new-instance v6, Ljava/lang/StringBuilder;

    .line 142
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    const-string v7, "al: "

    .line 147
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v7, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    .line 152
    aget v7, v7, v3

    .line 154
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object v6

    .line 161
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    add-int/lit8 v3, v3, 0x1

    .line 166
    goto :goto_1

    .line 167
    :catchall_0
    move-exception p1

    .line 168
    goto/16 :goto_8

    .line 170
    :cond_3
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    .line 172
    array-length v3, v2

    .line 173
    new-array v3, v3, [Ljava/lang/String;

    .line 175
    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    .line 177
    array-length v3, v2

    .line 178
    new-array v3, v3, [I

    .line 180
    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffTable:[I

    .line 182
    array-length v3, v2

    .line 183
    new-array v3, v3, [Ljava/lang/String;

    .line 185
    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueSizeTable:[Ljava/lang/String;

    .line 187
    array-length v3, v2

    .line 188
    new-array v3, v3, [Ljava/lang/String;

    .line 190
    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueCoeffTable:[Ljava/lang/String;

    .line 192
    array-length v3, v2

    .line 193
    new-array v3, v3, [Ljava/lang/String;

    .line 195
    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueDelayTable:[Ljava/lang/String;

    .line 197
    array-length v3, v2

    .line 198
    new-array v3, v3, [Ljava/lang/String;

    .line 200
    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueAlCoeffTable:[Ljava/lang/String;

    .line 202
    array-length v3, v2

    .line 203
    new-array v3, v3, [Ljava/lang/String;

    .line 205
    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvTable:[Ljava/lang/String;

    .line 207
    array-length v2, v2

    .line 208
    const/4 v3, 0x2

    .line 209
    new-array v3, v3, [I

    .line 211
    const/4 v5, 0x3

    .line 212
    aput v5, v3, v1

    .line 214
    aput v2, v3, v0

    .line 216
    const-class v2, Ljava/lang/String;

    .line 218
    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 221
    move-result-object v2

    .line 222
    check-cast v2, [[Ljava/lang/String;

    .line 224
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvLcgTable:[[Ljava/lang/String;

    .line 226
    move v2, v0

    .line 227
    :goto_2
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    .line 229
    array-length v6, v3

    .line 230
    if-ge v2, v6, :cond_d

    .line 232
    aget v3, v3, v2

    .line 234
    const-string v6, "aps"

    .line 236
    invoke-static {v3, v0, p1, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLALText(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 239
    move-result-object v3

    .line 240
    if-eqz v3, :cond_4

    .line 242
    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    .line 244
    aget-object v3, v3, v0

    .line 246
    aput-object v3, v6, v2

    .line 248
    :cond_4
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    .line 250
    aget v3, v3, v2

    .line 252
    const-string v6, "apsdoff"

    .line 254
    invoke-static {v3, v0, p1, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLALText(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 257
    move-result-object v3

    .line 258
    if-eqz v3, :cond_5

    .line 260
    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffTable:[I

    .line 262
    aget-object v3, v3, v0

    .line 264
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 267
    move-result v3

    .line 268
    aput v3, v6, v2

    .line 270
    goto :goto_3

    .line 271
    :cond_5
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffTable:[I

    .line 273
    aput v0, v3, v2

    .line 275
    :goto_3
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    .line 277
    aget v3, v3, v2

    .line 279
    const-string/jumbo v6, "qsize"

    .line 282
    invoke-static {v3, v0, p1, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLALText(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 285
    move-result-object v3

    .line 286
    if-eqz v3, :cond_6

    .line 288
    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueSizeTable:[Ljava/lang/String;

    .line 290
    aget-object v3, v3, v0

    .line 292
    aput-object v3, v6, v2

    .line 294
    :cond_6
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    .line 296
    aget v3, v3, v2

    .line 298
    const-string/jumbo v6, "qcoeff"

    .line 301
    invoke-static {v3, v0, p1, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLALText(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 304
    move-result-object v3

    .line 305
    if-eqz v3, :cond_7

    .line 307
    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueCoeffTable:[Ljava/lang/String;

    .line 309
    aget-object v3, v3, v0

    .line 311
    aput-object v3, v6, v2

    .line 313
    :cond_7
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    .line 315
    aget v3, v3, v2

    .line 317
    const-string/jumbo v6, "qdelay"

    .line 320
    invoke-static {v3, v0, p1, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLALText(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 323
    move-result-object v3

    .line 324
    if-eqz v3, :cond_8

    .line 326
    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueDelayTable:[Ljava/lang/String;

    .line 328
    aget-object v3, v3, v0

    .line 330
    aput-object v3, v6, v2

    .line 332
    :cond_8
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    .line 334
    aget v3, v3, v2

    .line 336
    const-string/jumbo v6, "qalcoeff"

    .line 339
    invoke-static {v3, v0, p1, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLALText(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 342
    move-result-object v3

    .line 343
    if-eqz v3, :cond_9

    .line 345
    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueAlCoeffTable:[Ljava/lang/String;

    .line 347
    aget-object v3, v3, v0

    .line 349
    aput-object v3, v6, v2

    .line 351
    :cond_9
    move v3, v0

    .line 352
    :goto_4
    const/4 v6, 0x0

    .line 353
    if-ge v3, v5, :cond_b

    .line 355
    iget-object v7, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    .line 357
    aget v7, v7, v2

    .line 359
    const-string/jumbo v8, "hsc48_lcg"

    .line 362
    invoke-static {v7, v3, p1, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLALText(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 365
    move-result-object v7

    .line 366
    if-eqz v7, :cond_a

    .line 368
    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvLcgTable:[[Ljava/lang/String;

    .line 370
    aget-object v6, v6, v2

    .line 372
    aget-object v7, v7, v0

    .line 374
    aput-object v7, v6, v3

    .line 376
    goto :goto_5

    .line 377
    :cond_a
    iget-object v7, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvLcgTable:[[Ljava/lang/String;

    .line 379
    aget-object v7, v7, v2

    .line 381
    aput-object v6, v7, v3

    .line 383
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 385
    goto :goto_4

    .line 386
    :cond_b
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    .line 388
    aget v3, v3, v2

    .line 390
    const-string/jumbo v7, "hsc"

    .line 393
    invoke-static {v3, v0, p1, v7}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLALText(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 396
    move-result-object v3

    .line 397
    if-eqz v3, :cond_c

    .line 399
    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvTable:[Ljava/lang/String;

    .line 401
    aget-object v3, v3, v0

    .line 403
    aput-object v3, v6, v2

    .line 405
    goto :goto_6

    .line 406
    :cond_c
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvTable:[Ljava/lang/String;

    .line 408
    aput-object v6, v3, v2

    .line 410
    :goto_6
    add-int/lit8 v2, v2, 0x1

    .line 412
    goto/16 :goto_2

    .line 414
    :cond_d
    :goto_7
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    .line 416
    array-length p1, p1

    .line 417
    if-ge v0, p1, :cond_e

    .line 419
    const-string p1, "ExynosDisplayATC"

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    .line 423
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    const-string v3, "<aps>"

    .line 428
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    .line 433
    aget-object v3, v3, v0

    .line 435
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 441
    move-result-object v2

    .line 442
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string p1, "ExynosDisplayATC"

    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    .line 449
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 452
    const-string v3, "<apsdoff>"

    .line 454
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffTable:[I

    .line 459
    aget v3, v3, v0

    .line 461
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    move-result-object v2

    .line 468
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const-string p1, "ExynosDisplayATC"

    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    .line 475
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    const-string v3, "<qsize>"

    .line 480
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueSizeTable:[Ljava/lang/String;

    .line 485
    aget-object v3, v3, v0

    .line 487
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 493
    move-result-object v2

    .line 494
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const-string p1, "ExynosDisplayATC"

    .line 499
    new-instance v2, Ljava/lang/StringBuilder;

    .line 501
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    const-string v3, "<qcoeff>"

    .line 506
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueCoeffTable:[Ljava/lang/String;

    .line 511
    aget-object v3, v3, v0

    .line 513
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 519
    move-result-object v2

    .line 520
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const-string p1, "ExynosDisplayATC"

    .line 525
    new-instance v2, Ljava/lang/StringBuilder;

    .line 527
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    const-string v3, "<qdelay>"

    .line 532
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueDelayTable:[Ljava/lang/String;

    .line 537
    aget-object v3, v3, v0

    .line 539
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 545
    move-result-object v2

    .line 546
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const-string p1, "ExynosDisplayATC"

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    .line 553
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 556
    const-string v3, "<qalcoeff>"

    .line 558
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueAlCoeffTable:[Ljava/lang/String;

    .line 563
    aget-object v3, v3, v0

    .line 565
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 571
    move-result-object v2

    .line 572
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const-string p1, "ExynosDisplayATC"

    .line 577
    new-instance v2, Ljava/lang/StringBuilder;

    .line 579
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 582
    const-string v3, "<hsc>"

    .line 584
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvTable:[Ljava/lang/String;

    .line 589
    aget-object v3, v3, v0

    .line 591
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 597
    move-result-object v2

    .line 598
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    add-int/lit8 v0, v0, 0x1

    .line 603
    goto/16 :goto_7

    .line 605
    :cond_e
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 606
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->loadLuminanceATCTable()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 609
    goto :goto_a

    .line 610
    :goto_8
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 611
    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 612
    :goto_9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 615
    :cond_f
    :goto_a
    sget-boolean p1, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    .line 617
    if-eqz p1, :cond_11

    .line 619
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_BL_FILE_PATH:Ljava/lang/String;

    .line 621
    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->existFile(Ljava/lang/String;)Z

    .line 624
    move-result p1

    .line 625
    if-eqz p1, :cond_11

    .line 627
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->parserTuneATCBLXML()V

    .line 630
    goto :goto_b

    .line 631
    :cond_10
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->sysfsWriteOnOff(Z)V

    .line 634
    :cond_11
    :goto_b
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHandler:Lcom/android/server/display/exynos/ExynosDisplayATC$1;

    .line 636
    if-eqz p0, :cond_12

    .line 638
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 641
    :cond_12
    return-void
.end method

.method public final enableLightSensor(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    const v1, 0x10e006c

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eq v0, v1, :cond_5

    .line 17
    const/4 v1, 0x3

    .line 18
    if-ne v0, v1, :cond_0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const-string/jumbo v0, "enableLightSensor: enable="

    .line 24
    const-string v2, "ExynosDisplayATC"

    .line 26
    invoke-static {v0, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 29
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHandler:Lcom/android/server/display/exynos/ExynosDisplayATC$1;

    .line 31
    const/4 v2, 0x2

    .line 32
    if-eqz p1, :cond_2

    .line 34
    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mSensorManager:Landroid/hardware/SensorManager;

    .line 41
    if-eqz v0, :cond_4

    .line 43
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->sensorListener:Lcom/android/server/display/exynos/ExynosDisplayATC$3;

    .line 45
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLightSensor:Landroid/hardware/Sensor;

    .line 47
    invoke-virtual {v0, v2, v3, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mSensorManager:Landroid/hardware/SensorManager;

    .line 53
    if-eqz v1, :cond_3

    .line 55
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->sensorListener:Lcom/android/server/display/exynos/ExynosDisplayATC$3;

    .line 57
    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 60
    :cond_3
    if-eqz v0, :cond_4

    .line 62
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 65
    :cond_4
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLightSensorEnabled:Z

    .line 67
    :cond_5
    :goto_1
    return-void
.end method

.method public final findBestATCTable()I
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    .line 5
    array-length v3, v2

    .line 6
    if-ge v1, v3, :cond_1

    .line 8
    iget v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastLuminance:I

    .line 10
    aget v2, v2, v1

    .line 12
    if-ge v3, v2, :cond_0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    :goto_1
    sub-int/2addr v1, v0

    .line 19
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    .line 21
    aget-object v2, v2, v1

    .line 23
    if-eqz v2, :cond_2

    .line 25
    return v1

    .line 26
    :cond_2
    move v2, v1

    .line 27
    :goto_2
    add-int/lit8 v2, v2, -0x1

    .line 29
    if-ltz v2, :cond_3

    .line 31
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    .line 33
    aget-object v3, v3, v2

    .line 35
    if-nez v3, :cond_3

    .line 37
    goto :goto_2

    .line 38
    :cond_3
    :goto_3
    add-int/2addr v1, v0

    .line 39
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    .line 41
    array-length v4, v3

    .line 42
    if-ge v1, v4, :cond_4

    .line 44
    aget-object v4, v3, v1

    .line 46
    if-nez v4, :cond_4

    .line 48
    goto :goto_3

    .line 49
    :cond_4
    const-string v0, "ExynosDisplayATC"

    .line 51
    if-ltz v2, :cond_a

    .line 53
    array-length v4, v3

    .line 54
    if-lt v1, v4, :cond_5

    .line 56
    goto :goto_5

    .line 57
    :cond_5
    iget v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    .line 59
    if-eq v4, v2, :cond_7

    .line 61
    if-ne v4, v1, :cond_6

    .line 63
    goto :goto_4

    .line 64
    :cond_6
    move v4, v2

    .line 65
    :cond_7
    :goto_4
    aget-object v3, v3, v4

    .line 67
    if-nez v3, :cond_8

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    const-string/jumbo v2, "unable to find proper ATC table, return prev pos: "

    .line 74
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    iget v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    .line 91
    return p0

    .line 92
    :cond_8
    sget-boolean p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    .line 94
    if-eqz p0, :cond_9

    .line 96
    const-string p0, "adjusted pos: "

    .line 98
    const-string v3, " at ("

    .line 100
    const-string/jumbo v5, "~"

    .line 103
    invoke-static {v4, v2, p0, v3, v5}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    move-result-object p0

    .line 107
    const-string v2, ")"

    .line 109
    invoke-static {p0, v1, v2, v0}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_9
    return v4

    .line 113
    :cond_a
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 115
    const-string/jumbo v2, "invalid ATC table, return prev pos: "

    .line 118
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    iget v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v1

    .line 130
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    .line 135
    return p0
.end method

.method public final loadLuminanceATCTable()V
    .locals 5

    .line 1
    const-string/jumbo v0, "mLastLuminance: "

    .line 4
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    .line 9
    if-nez v2, :cond_0

    .line 11
    monitor-exit v1

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto/16 :goto_1

    .line 16
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueSizeTable:[Ljava/lang/String;

    .line 18
    if-nez v2, :cond_1

    .line 20
    monitor-exit v1

    .line 21
    return-void

    .line 22
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueCoeffTable:[Ljava/lang/String;

    .line 24
    if-nez v2, :cond_2

    .line 26
    monitor-exit v1

    .line 27
    return-void

    .line 28
    :cond_2
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueDelayTable:[Ljava/lang/String;

    .line 30
    if-nez v2, :cond_3

    .line 32
    monitor-exit v1

    .line 33
    return-void

    .line 34
    :cond_3
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueAlCoeffTable:[Ljava/lang/String;

    .line 36
    if-nez v2, :cond_4

    .line 38
    monitor-exit v1

    .line 39
    return-void

    .line 40
    :cond_4
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvTable:[Ljava/lang/String;

    .line 42
    if-nez v2, :cond_5

    .line 44
    monitor-exit v1

    .line 45
    return-void

    .line 46
    :cond_5
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvLcgTable:[[Ljava/lang/String;

    .line 48
    if-nez v2, :cond_6

    .line 50
    monitor-exit v1

    .line 51
    return-void

    .line 52
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->findBestATCTable()I

    .line 55
    move-result v2

    .line 56
    const/4 v3, -0x1

    .line 57
    if-ne v2, v3, :cond_7

    .line 59
    monitor-exit v1

    .line 60
    return-void

    .line 61
    :cond_7
    sget-boolean v3, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    .line 63
    if-nez v3, :cond_8

    .line 65
    iget v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    .line 67
    if-eq v3, v2, :cond_9

    .line 69
    :cond_8
    const-string v3, "ExynosDisplayATC"

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    iget v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastLuminance:I

    .line 78
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const-string v0, ", mAmbientLight: "

    .line 83
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    .line 88
    aget v0, v0, v2

    .line 90
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 97
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_9
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    .line 102
    aget-object v0, v0, v2

    .line 104
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastAps:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffTable:[I

    .line 108
    aget v0, v0, v2

    .line 110
    iput v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastApsDelayedOff:I

    .line 112
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueSizeTable:[Ljava/lang/String;

    .line 114
    aget-object v0, v0, v2

    .line 116
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQsize:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueCoeffTable:[Ljava/lang/String;

    .line 120
    aget-object v0, v0, v2

    .line 122
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQcoeff:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueAlCoeffTable:[Ljava/lang/String;

    .line 126
    aget-object v0, v0, v2

    .line 128
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQalcoeff:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueDelayTable:[Ljava/lang/String;

    .line 132
    aget-object v0, v0, v2

    .line 134
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQdelay:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvTable:[Ljava/lang/String;

    .line 138
    aget-object v0, v0, v2

    .line 140
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsv:Ljava/lang/String;

    .line 142
    const/4 v0, 0x0

    .line 143
    :goto_0
    const/4 v3, 0x3

    .line 144
    if-ge v0, v3, :cond_a

    .line 146
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsvLcg:[Ljava/lang/String;

    .line 148
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvLcgTable:[[Ljava/lang/String;

    .line 150
    aget-object v4, v4, v2

    .line 152
    aget-object v4, v4, v0

    .line 154
    aput-object v4, v3, v0

    .line 156
    add-int/lit8 v0, v0, 0x1

    .line 158
    goto :goto_0

    .line 159
    :cond_a
    iput v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    .line 161
    monitor-exit v1

    .line 162
    return-void

    .line 163
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    throw p0
.end method

.method public final parserTuneATCBLXML()V
    .locals 7

    .line 1
    const-string v0, "atc"

    .line 3
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_BL_FILE_PATH:Ljava/lang/String;

    .line 5
    const-string v2, "array_length: "

    .line 7
    const-string/jumbo v3, "xml array size wrong: "

    .line 10
    :try_start_0
    const-string v4, "al"

    .line 12
    invoke-static {v1, v0, v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXMLAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 18
    return-void

    .line 19
    :cond_0
    array-length v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    const-string v5, "ExynosDisplayATC"

    .line 22
    if-gtz v4, :cond_1

    .line 24
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    array-length v0, v0

    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void

    .line 41
    :catch_0
    move-exception p0

    .line 42
    goto/16 :goto_3

    .line 44
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    array-length v2, v0

    .line 50
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    array-length v2, v0

    .line 61
    new-array v2, v2, [I

    .line 63
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    .line 65
    array-length v2, v0

    .line 66
    new-array v2, v2, [I

    .line 68
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessSetting:[I

    .line 70
    const/4 v2, 0x0

    .line 71
    move v3, v2

    .line 72
    :goto_0
    array-length v4, v0

    .line 73
    if-ge v3, v4, :cond_2

    .line 75
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    .line 77
    aget-object v6, v0, v3

    .line 79
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 82
    move-result v6

    .line 83
    aput v6, v4, v3

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    .line 87
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    const-string v6, "al: "

    .line 92
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    .line 97
    aget v6, v6, v3

    .line 99
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v4

    .line 106
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    add-int/lit8 v3, v3, 0x1

    .line 111
    goto :goto_0

    .line 112
    :cond_2
    move v0, v2

    .line 113
    :goto_1
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    .line 115
    array-length v4, v3

    .line 116
    if-ge v0, v4, :cond_3

    .line 118
    aget v3, v3, v0

    .line 120
    const-string/jumbo v4, "bl"

    .line 123
    invoke-static {v3, v1, v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXMLALText(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 126
    move-result-object v3

    .line 127
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessSetting:[I

    .line 129
    aget-object v3, v3, v2

    .line 131
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 134
    move-result v3

    .line 135
    aput v3, v4, v0

    .line 137
    add-int/lit8 v0, v0, 0x1

    .line 139
    goto :goto_1

    .line 140
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    .line 142
    array-length v0, v0

    .line 143
    if-ge v2, v0, :cond_4

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    .line 147
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    const-string v1, "<bl>"

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessSetting:[I

    .line 157
    aget v1, v1, v2

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    move-result-object v0

    .line 166
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 169
    add-int/lit8 v2, v2, 0x1

    .line 171
    goto :goto_2

    .line 172
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    :cond_4
    return-void
.end method

.method public final printSensorDeque()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    .line 3
    check-cast v0, Ljava/util/ArrayDeque;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    new-array v1, v0, [F

    .line 14
    new-array v0, v0, [J

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 22
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    .line 24
    check-cast p0, Ljava/util/ArrayDeque;

    .line 26
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object p0

    .line 30
    const/4 v0, 0x0

    .line 31
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    iget v1, v1, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;->lux:F

    .line 50
    float-to-int v1, v1

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, ", "

    .line 60
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    if-nez v0, :cond_1

    .line 69
    move-object v0, v1

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    sget-boolean p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    .line 78
    if-eqz p0, :cond_3

    .line 80
    const-string/jumbo p0, "que: "

    .line 83
    const-string v1, "ExynosDisplayATC"

    .line 85
    invoke-static {p0, v0, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_3
    return-void
.end method

.method public final resetATC()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsInit:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastAps:Ljava/lang/String;

    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevAps:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessInit:[I

    .line 10
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    .line 12
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsv:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevHsv:Ljava/lang/String;

    .line 16
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsvLcg:[Ljava/lang/String;

    .line 18
    const/4 v2, 0x3

    .line 19
    if-nez v1, :cond_0

    .line 21
    new-array v1, v2, [Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsvLcg:[Ljava/lang/String;

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    move v3, v1

    .line 27
    :goto_0
    if-ge v3, v2, :cond_1

    .line 29
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsvLcg:[Ljava/lang/String;

    .line 31
    aput-object v0, v4, v3

    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevHsvLcg:[Ljava/lang/String;

    .line 38
    if-nez v3, :cond_2

    .line 40
    new-array v3, v2, [Ljava/lang/String;

    .line 42
    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevHsvLcg:[Ljava/lang/String;

    .line 44
    :cond_2
    move v3, v1

    .line 45
    :goto_1
    if-ge v3, v2, :cond_3

    .line 47
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevHsvLcg:[Ljava/lang/String;

    .line 49
    aput-object v0, v4, v3

    .line 51
    add-int/lit8 v3, v3, 0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    .line 57
    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastApsDelayedOff:I

    .line 59
    return-void
.end method

.method public final sendMessage()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHandler:Lcom/android/server/display/exynos/ExynosDisplayATC$1;

    .line 3
    if-eqz v0, :cond_2

    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 9
    move-result-object v2

    .line 10
    iget v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastApsDelayedOff:I

    .line 12
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 14
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastAps:Ljava/lang/String;

    .line 16
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 25
    move-result-object v2

    .line 26
    iget v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastLuminance:I

    .line 28
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 30
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 33
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsvLcg:[Ljava/lang/String;

    .line 35
    if-eqz v2, :cond_1

    .line 37
    const/4 v2, 0x0

    .line 38
    :goto_0
    if-ge v2, v1, :cond_1

    .line 40
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsvLcg:[Ljava/lang/String;

    .line 42
    aget-object v3, v3, v2

    .line 44
    if-eqz v3, :cond_0

    .line 46
    const/4 v3, 0x5

    .line 47
    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 50
    move-result-object v3

    .line 51
    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 53
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsvLcg:[Ljava/lang/String;

    .line 55
    aget-object v4, v4, v2

    .line 57
    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 59
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 62
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsv:Ljava/lang/String;

    .line 67
    if-eqz v1, :cond_2

    .line 69
    const/4 v1, 0x4

    .line 70
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 73
    move-result-object v1

    .line 74
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsv:Ljava/lang/String;

    .line 76
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 78
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 81
    :cond_2
    return-void
.end method

.method public final setBrightnessAdjustment(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-le v1, v2, :cond_4

    .line 7
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessSetting:[I

    .line 9
    array-length v3, v1

    .line 10
    if-gt v3, v2, :cond_0

    .line 12
    goto :goto_2

    .line 13
    :cond_0
    array-length v0, v0

    .line 14
    array-length v1, v1

    .line 15
    if-eq v0, v1, :cond_1

    .line 17
    return-void

    .line 18
    :cond_1
    move v0, v2

    .line 19
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    .line 21
    array-length v3, v1

    .line 22
    if-ge v0, v3, :cond_3

    .line 24
    aget v1, v1, v0

    .line 26
    if-ge p1, v1, :cond_2

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_3
    :goto_1
    sub-int/2addr v0, v2

    .line 33
    const-string/jumbo v1, "lux: "

    .line 36
    const-string v2, ", mBrightnessLux: "

    .line 38
    invoke-static {p1, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    move-result-object p1

    .line 42
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    .line 44
    aget v1, v1, v0

    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, ", mBrightnessSetting: "

    .line 51
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessSetting:[I

    .line 56
    aget v1, v1, v0

    .line 58
    const-string v2, "ExynosDisplayATC"

    .line 60
    invoke-static {p1, v1, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessSetting:[I

    .line 65
    aget p1, p1, v0

    .line 67
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 72
    move-result-object p0

    .line 73
    const-string/jumbo v0, "screen_brightness"

    .line 76
    const/4 v1, -0x2

    .line 77
    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 80
    :cond_4
    :goto_2
    return-void
.end method

.method public final setCountDownTimer(II)V
    .locals 2

    .line 1
    const/16 v0, 0x11

    .line 3
    if-lt p1, v0, :cond_2

    .line 5
    if-gez p2, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    mul-int/2addr p2, p1

    .line 9
    iput p2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mTimeoutMs:I

    .line 11
    iput p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mIntervalMs:I

    .line 13
    const p2, 0x8555

    .line 16
    div-int/2addr p2, p1

    .line 17
    iput p2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mMaxCountDownTimerCount:I

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    const-string/jumbo p2, "mTimeoutMs: "

    .line 24
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    iget p2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mTimeoutMs:I

    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string p2, ", mIntervalMs: "

    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget p2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mIntervalMs:I

    .line 39
    const-string v0, "ExynosDisplayATC"

    .line 41
    invoke-static {p1, p2, v0}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 44
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayATC$2;

    .line 46
    if-eqz p1, :cond_1

    .line 48
    const/4 p2, 0x0

    .line 49
    iput p2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountDownTimerCount:I

    .line 51
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLocalHandler:Landroid/os/Handler;

    .line 56
    new-instance p2, Lcom/android/server/display/exynos/ExynosDisplayATC$4;

    .line 58
    invoke-direct {p2, p0}, Lcom/android/server/display/exynos/ExynosDisplayATC$4;-><init>(Lcom/android/server/display/exynos/ExynosDisplayATC;)V

    .line 61
    const-wide/16 v0, 0x0

    .line 63
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    :cond_2
    :goto_0
    return-void
.end method

.method public final setLastLuminance(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsInit:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastAps:Ljava/lang/String;

    .line 5
    iput p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastLuminance:I

    .line 7
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->loadLuminanceATCTable()V

    .line 10
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQsize:Ljava/lang/String;

    .line 12
    const-string v1, "\\s*,\\s*"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mItem:[Ljava/lang/String;

    .line 20
    const/4 v1, 0x0

    .line 21
    aget-object v0, v0, v1

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 26
    move-result v0

    .line 27
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    .line 29
    check-cast v1, Ljava/util/ArrayDeque;

    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    .line 39
    check-cast v1, Ljava/util/ArrayDeque;

    .line 41
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    .line 44
    move-result v1

    .line 45
    if-lt v1, v0, :cond_0

    .line 47
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    .line 49
    check-cast v1, Ljava/util/ArrayDeque;

    .line 51
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;

    .line 60
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 66
    move-result-wide v1

    .line 67
    const-wide/16 v3, 0x3e8

    .line 69
    div-long/2addr v1, v3

    .line 70
    iput-wide v1, v0, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;->timestamp:J

    .line 72
    int-to-float v1, p1

    .line 73
    iput v1, v0, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;->lux:F

    .line 75
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    .line 77
    check-cast v1, Ljava/util/ArrayDeque;

    .line 79
    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->printSensorDeque()V

    .line 85
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->caculateLuminance()V

    .line 88
    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLightSensorEnabled:Z

    .line 91
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->sendMessage()V

    .line 94
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    .line 96
    array-length v1, v1

    .line 97
    if-le v1, v0, :cond_1

    .line 99
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessSetting:[I

    .line 101
    array-length v1, v1

    .line 102
    if-gt v1, v0, :cond_2

    .line 104
    :cond_1
    sget-boolean v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    .line 106
    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_BL_FILE_PATH:Ljava/lang/String;

    .line 110
    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->existFile(Ljava/lang/String;)Z

    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_2

    .line 116
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->parserTuneATCBLXML()V

    .line 119
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->setBrightnessAdjustment(I)V

    .line 122
    return-void
.end method

.method public final startCountDownTimer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayATC$2;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountDownTimerCount:I

    .line 8
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 11
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayATC$2;

    .line 13
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 16
    :cond_0
    return-void
.end method

.method public final sysfsWriteOnOff(Z)V
    .locals 4

    .line 1
    const-string v0, "aps_onoff"

    .line 3
    const-string/jumbo v1, "onoff : "

    .line 6
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPreOnOff:Z

    .line 8
    if-ne v2, p1, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->DEBUG:Z

    .line 13
    if-eqz v2, :cond_1

    .line 15
    const-string v2, "ExynosDisplayATC"

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, " aps: "

    .line 27
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsInit:Ljava/lang/String;

    .line 32
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 47
    invoke-virtual {v1, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    invoke-static {v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 57
    if-eqz v1, :cond_2

    .line 59
    :try_start_1
    const-string v3, "0"

    .line 61
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_2

    .line 67
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 69
    invoke-virtual {v1, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 83
    move-result-object v1

    .line 84
    invoke-static {v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;[B)Z

    .line 87
    :cond_2
    if-eqz p1, :cond_3

    .line 89
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 91
    const-string v1, "aps"

    .line 93
    invoke-virtual {v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsInit:Ljava/lang/String;

    .line 99
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    invoke-static {v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 105
    invoke-static {}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->sendEmptyUpdate()V

    .line 108
    const-wide/16 v0, 0x64

    .line 110
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 113
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->startCountDownTimer()V

    .line 116
    iput-boolean p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPreOnOff:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    goto :goto_2

    .line 119
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    :goto_2
    return-void
.end method
