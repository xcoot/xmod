.class public final Lcom/android/server/power/HqmDataDispatcher;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field public final mClock:Lcom/android/server/power/HqmDataDispatcher$Clock;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayStats:Landroid/util/SparseArray;

.field public mGlobalBrightness:F

.field public final mHandler:Lcom/android/server/power/HqmDataDispatcher$DispatchHandler;

.field public final mHqmManager:Landroid/os/SemHqmManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/HqmDataDispatcher$Clock;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    .line 10
    .line 11
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 12
    .line 13
    iput v0, p0, Lcom/android/server/power/HqmDataDispatcher;->mGlobalBrightness:F

    .line 14
    .line 15
    const-string v0, "HqmDataDispatcher"

    .line 16
    .line 17
    const-string v1, "HqmDataDispatcher()"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/server/power/HqmDataDispatcher;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    new-instance v0, Lcom/android/server/power/HqmDataDispatcher$DispatchHandler;

    .line 25
    .line 26
    invoke-direct {v0, p0, p2}, Lcom/android/server/power/HqmDataDispatcher$DispatchHandler;-><init>(Lcom/android/server/power/HqmDataDispatcher;Landroid/os/Looper;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/server/power/HqmDataDispatcher;->mHandler:Lcom/android/server/power/HqmDataDispatcher$DispatchHandler;

    .line 30
    .line 31
    iput-object p3, p0, Lcom/android/server/power/HqmDataDispatcher;->mClock:Lcom/android/server/power/HqmDataDispatcher$Clock;

    .line 32
    .line 33
    const-string p2, "HqmManagerService"

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Landroid/os/SemHqmManager;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/android/server/power/HqmDataDispatcher;->mHqmManager:Landroid/os/SemHqmManager;

    .line 42
    .line 43
    const-class p1, Landroid/os/BatteryManagerInternal;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Landroid/os/BatteryManagerInternal;

    .line 50
    .line 51
    iput-object p1, p0, Lcom/android/server/power/HqmDataDispatcher;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 52
    .line 53
    new-instance p1, Lcom/android/server/power/HqmDataDispatcher$$ExternalSyntheticLambda1;

    .line 54
    .line 55
    invoke-direct {p1, p0}, Lcom/android/server/power/HqmDataDispatcher$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/HqmDataDispatcher;)V

    .line 56
    .line 57
    .line 58
    check-cast p3, Lcom/android/server/power/HqmDataDispatcher$$ExternalSyntheticLambda0;

    .line 59
    .line 60
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide p2

    .line 67
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public static init(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/HqmDataDispatcher$Clock;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/power/HqmDataDispatcher;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/power/HqmDataDispatcher;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/HqmDataDispatcher$Clock;)V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/power/HqmDataDispatcher$HqmDataDispatcherHolder;->INSTANCE:Lcom/android/server/power/HqmDataDispatcher;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getDisplayStat(I)Lcom/android/server/power/HqmDataDispatcher$DisplayStat;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-gez p1, :cond_2

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    .line 19
    .line 20
    new-instance v0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/power/HqmDataDispatcher;->mClock:Lcom/android/server/power/HqmDataDispatcher$Clock;

    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;-><init>(ILcom/android/server/power/HqmDataDispatcher$Clock;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_2
    iget-object p0, p0, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    .line 37
    .line 38
    return-object p0
.end method

.method public final noteScreenBrightness(FI)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    .line 6
    .line 7
    if-eqz v1, :cond_8

    .line 8
    .line 9
    if-ne p2, v0, :cond_8

    .line 10
    .line 11
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/power/HqmDataDispatcher;->getDisplayStat(I)Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget v2, p2, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenState:I

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    if-ne v2, v3, :cond_7

    .line 26
    .line 27
    sget v2, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->BRIGHTNESS_DIM:I

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, -0x1

    .line 31
    if-gt v1, v2, :cond_1

    .line 32
    .line 33
    move v3, v4

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/16 v2, 0xe6

    .line 36
    .line 37
    const/16 v6, 0xff

    .line 38
    .line 39
    if-lt v1, v2, :cond_2

    .line 40
    .line 41
    if-gt v1, v6, :cond_2

    .line 42
    .line 43
    move v3, v0

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    if-le v1, v6, :cond_3

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    move v3, v5

    .line 49
    :goto_1
    iget v2, p2, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mCurrentBrightnessRange:I

    .line 50
    .line 51
    if-eq v3, v2, :cond_5

    .line 52
    .line 53
    if-eq v2, v5, :cond_4

    .line 54
    .line 55
    iget-object v6, p2, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mBrightnessDuration:[J

    .line 56
    .line 57
    aget-wide v7, v6, v2

    .line 58
    .line 59
    long-to-float v7, v7

    .line 60
    iget-object v8, p2, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessTimers:[Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 61
    .line 62
    aget-object v8, v8, v2

    .line 63
    .line 64
    invoke-virtual {v8}, Lcom/android/server/power/HqmDataDispatcher$Timer;->stop()F

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    add-float/2addr v8, v7

    .line 69
    float-to-long v7, v8

    .line 70
    aput-wide v7, v6, v2

    .line 71
    .line 72
    iput v5, p2, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mCurrentBrightnessRange:I

    .line 73
    .line 74
    :cond_4
    iput v3, p2, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mCurrentBrightnessRange:I

    .line 75
    .line 76
    if-eq v3, v5, :cond_5

    .line 77
    .line 78
    iget-object v2, p2, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessTimers:[Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 79
    .line 80
    aget-object v2, v2, v3

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/android/server/power/HqmDataDispatcher$Timer;->start()V

    .line 83
    .line 84
    .line 85
    :cond_5
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_HQM_SEND_LBHD_HIGHEST:Z

    .line 86
    .line 87
    if-eqz v2, :cond_7

    .line 88
    .line 89
    iget-boolean v2, p2, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestStarted:Z

    .line 90
    .line 91
    sget v3, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->BRIGHTNESS_HIGHEST:I

    .line 92
    .line 93
    if-nez v2, :cond_6

    .line 94
    .line 95
    if-ne v1, v3, :cond_6

    .line 96
    .line 97
    iget-object v1, p2, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/android/server/power/HqmDataDispatcher$Timer;->start()V

    .line 100
    .line 101
    .line 102
    iput-boolean v0, p2, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestStarted:Z

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_6
    if-eqz v2, :cond_7

    .line 106
    .line 107
    if-eq v1, v3, :cond_7

    .line 108
    .line 109
    if-eqz v2, :cond_7

    .line 110
    .line 111
    iget-wide v0, p2, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestDuration:J

    .line 112
    .line 113
    long-to-float v0, v0

    .line 114
    iget-object v1, p2, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 115
    .line 116
    invoke-virtual {v1}, Lcom/android/server/power/HqmDataDispatcher$Timer;->stop()F

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    add-float/2addr v1, v0

    .line 121
    float-to-long v0, v1

    .line 122
    iput-wide v0, p2, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestDuration:J

    .line 123
    .line 124
    iput-boolean v4, p2, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestStarted:Z

    .line 125
    .line 126
    :cond_7
    :goto_2
    iput p1, p0, Lcom/android/server/power/HqmDataDispatcher;->mGlobalBrightness:F

    .line 127
    .line 128
    :cond_8
    return-void
.end method

.method public final sendDataSetToHqm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "sendDataSetToHqm: feature="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ", dataSet="

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "HqmDataDispatcher"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/server/power/HqmDataDispatcher;->mHqmManager:Landroid/os/SemHqmManager;

    .line 30
    .line 31
    const-string v7, "0.0"

    .line 32
    .line 33
    const-string/jumbo v8, "sec"

    .line 34
    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    const-string v4, "Display"

    .line 38
    .line 39
    const-string/jumbo v6, "sm"

    .line 40
    .line 41
    .line 42
    const-string v9, ""

    .line 43
    .line 44
    const-string v11, ""

    .line 45
    .line 46
    move-object v5, p1

    .line 47
    move-object v10, p2

    .line 48
    invoke-virtual/range {v2 .. v11}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    return-void
.end method
