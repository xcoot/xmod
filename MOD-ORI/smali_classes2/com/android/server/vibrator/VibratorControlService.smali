.class public final Lcom/android/server/vibrator/VibratorControlService;
.super Landroid/frameworks/vibrator/IVibratorControlService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG_DATE_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mRequestVibrationParamsForUsages:[I

.field public final mStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

.field public mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

.field public final mVibrationParamsRecords:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;

.field public final mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

.field public final mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "MM-dd HH:mm:ss.SSS"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/vibrator/VibratorControlService;->DEBUG_DATE_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/vibrator/VibratorControllerHolder;Lcom/android/server/vibrator/VibrationScaler;Lcom/android/server/vibrator/VibrationSettings;Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 5
    .line 6
    .line 7
    sget-object v0, Landroid/frameworks/vibrator/IVibratorControlService;->DESCRIPTOR:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    .line 18
    .line 19
    iput-object p5, p0, Lcom/android/server/vibrator/VibratorControlService;->mStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    .line 20
    .line 21
    iput-object p6, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object p2, p4, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/os/vibrator/VibrationConfig;->getRequestVibrationParamsForUsages()[I

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iput-object p2, p0, Lcom/android/server/vibrator/VibratorControlService;->mRequestVibrationParamsForUsages:[I

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    const p3, 0x10e0118

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const p3, 0x10e0117

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    new-instance p3, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;

    .line 54
    .line 55
    invoke-direct {p3, p2, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;-><init>(II)V

    .line 56
    .line 57
    .line 58
    iput-object p3, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamsRecords:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;

    .line 59
    .line 60
    return-void
.end method

.method public static mapFromAdaptiveVibrationTypeToVibrationUsages(I)[I
    .locals 2

    .line 1
    new-instance v0, Landroid/util/IntArray;

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    .line 6
    .line 7
    .line 8
    and-int/lit8 v1, p0, 0x1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/16 v1, 0x11

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    and-int/lit8 v1, p0, 0x2

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const/16 v1, 0x31

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x41

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 29
    .line 30
    .line 31
    :cond_1
    and-int/lit8 v1, p0, 0x4

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    const/16 v1, 0x21

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 38
    .line 39
    .line 40
    :cond_2
    and-int/lit8 v1, p0, 0x10

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    const/16 v1, 0x13

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 47
    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 51
    .line 52
    .line 53
    :cond_3
    and-int/lit8 p0, p0, 0x8

    .line 54
    .line 55
    if-eqz p0, :cond_4

    .line 56
    .line 57
    const/16 p0, 0x12

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Landroid/util/IntArray;->add(I)V

    .line 60
    .line 61
    .line 62
    const/16 p0, 0x32

    .line 63
    .line 64
    invoke-virtual {v0, p0}, Landroid/util/IntArray;->add(I)V

    .line 65
    .line 66
    .line 67
    :cond_4
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0
.end method


# virtual methods
.method public final clearVibrationParams(ILandroid/frameworks/vibrator/IVibratorController;)V
    .locals 9

    .line 1
    const-string v0, "Failed to clear VibrationParams. The provided controller doesn\'t match the registered one. "

    .line 2
    .line 3
    const-string v1, "Received request to clear VibrationParams for IVibratorController = "

    .line 4
    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v2

    .line 11
    :try_start_0
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    .line 12
    .line 13
    iget-object v3, v3, Lcom/android/server/vibrator/VibratorControllerHolder;->mVibratorController:Landroid/frameworks/vibrator/IVibratorController;

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    const-string p0, "VibratorControlService"

    .line 18
    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p2, ", but no controller was previously registered. Request Ignored."

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    monitor-exit v2

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    check-cast v3, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;

    .line 44
    .line 45
    iget-object v1, v3, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 46
    .line 47
    check-cast p2, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;

    .line 48
    .line 49
    iget-object p2, p2, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 50
    .line 51
    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-nez p2, :cond_1

    .line 56
    .line 57
    const-string p1, "VibratorControlService"

    .line 58
    .line 59
    new-instance p2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    monitor-exit v2

    .line 75
    return-void

    .line 76
    :cond_1
    const/high16 p2, -0x40800000    # -1.0f

    .line 77
    .line 78
    invoke-virtual {p0, p2, p1}, Lcom/android/server/vibrator/VibratorControlService;->updateAdaptiveHapticsScales(FI)V

    .line 79
    .line 80
    .line 81
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 82
    .line 83
    .line 84
    move-result-wide v5

    .line 85
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamsRecords:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;

    .line 86
    .line 87
    new-instance p2, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;

    .line 88
    .line 89
    sget-object v4, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;->CLEAR:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    .line 90
    .line 91
    const/high16 v8, -0x40800000    # -1.0f

    .line 92
    .line 93
    move-object v3, p2

    .line 94
    move v7, p1

    .line 95
    invoke-direct/range {v3 .. v8}, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;-><init>(Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;JIF)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->add(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;

    .line 99
    .line 100
    .line 101
    monitor-exit v2

    .line 102
    return-void

    .line 103
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    throw p0
.end method

.method public final endOngoingRequestVibrationParamsLocked(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, v0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->future:Ljava/util/concurrent/CompletableFuture;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, v0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->future:Ljava/util/concurrent/CompletableFuture;

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    .line 21
    .line 22
    return-void
.end method

.method public getRequestVibrationParamsToken()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->token:Landroid/os/IBinder;

    .line 11
    .line 12
    :goto_0
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final recordUpdateVibrationParams([Landroid/frameworks/vibrator/VibrationParam;Z)V
    .locals 12

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    sget-object p2, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;->PULL:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object p2, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;->PUSH:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    .line 7
    .line 8
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v6

    .line 12
    array-length v8, p1

    .line 13
    const/4 v0, 0x0

    .line 14
    move v9, v0

    .line 15
    :goto_1
    if-ge v9, v8, :cond_2

    .line 16
    .line 17
    aget-object v0, p1, v9

    .line 18
    .line 19
    iget v1, v0, Landroid/frameworks/vibrator/VibrationParam;->_tag:I

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "Unsupported vibration param ignored from dumpsys records: "

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "VibratorControlService"

    .line 38
    .line 39
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    invoke-virtual {v0}, Landroid/frameworks/vibrator/VibrationParam;->getScale()Landroid/frameworks/vibrator/ScaleParam;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v10, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamsRecords:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;

    .line 48
    .line 49
    new-instance v11, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;

    .line 50
    .line 51
    iget v4, v0, Landroid/frameworks/vibrator/ScaleParam;->typesMask:I

    .line 52
    .line 53
    iget v5, v0, Landroid/frameworks/vibrator/ScaleParam;->scale:F

    .line 54
    .line 55
    move-object v0, v11

    .line 56
    move-object v1, p2

    .line 57
    move-wide v2, v6

    .line 58
    invoke-direct/range {v0 .. v5}, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;-><init>(Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;JIF)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v10, v11}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->add(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;

    .line 62
    .line 63
    .line 64
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    return-void
.end method

.method public final updateAdaptiveHapticsScales(FI)V
    .locals 5

    .line 6
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    sget-object v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sVibrationParamScaleHistogram:Lcom/android/modules/expresslog/Histogram;

    invoke-virtual {v0, p1}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    .line 8
    invoke-static {p2}, Lcom/android/server/vibrator/VibratorControlService;->mapFromAdaptiveVibrationTypeToVibrationUsages(I)[I

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p2, v1

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, p1, v3

    if-nez v3, :cond_0

    .line 9
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    .line 10
    iget-object v3, v3, Lcom/android/server/vibrator/VibrationScaler;->mAdaptiveHapticsScales:Landroid/util/SparseArray;

    .line 11
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    .line 12
    :cond_0
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    .line 13
    iget-object v3, v3, Lcom/android/server/vibrator/VibrationScaler;->mAdaptiveHapticsScales:Landroid/util/SparseArray;

    .line 14
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateAdaptiveHapticsScales([Landroid/frameworks/vibrator/VibrationParam;)V
    .locals 5

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 2
    iget v3, v2, Landroid/frameworks/vibrator/VibrationParam;->_tag:I

    if-eqz v3, :cond_0

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported vibration param: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VibratorControlService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v2}, Landroid/frameworks/vibrator/VibrationParam;->getScale()Landroid/frameworks/vibrator/ScaleParam;

    move-result-object v2

    .line 5
    iget v3, v2, Landroid/frameworks/vibrator/ScaleParam;->typesMask:I

    iget v2, v2, Landroid/frameworks/vibrator/ScaleParam;->scale:F

    invoke-virtual {p0, v2, v3}, Lcom/android/server/vibrator/VibratorControlService;->updateAdaptiveHapticsScales(FI)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
