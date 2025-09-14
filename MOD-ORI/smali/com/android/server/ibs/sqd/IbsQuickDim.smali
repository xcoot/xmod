.class public final Lcom/android/server/ibs/sqd/IbsQuickDim;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final SQDGainMap:Ljava/util/Map;

.field public mAllowDimUidSet:Landroid/util/ArraySet;

.field public mBlockUnDimUidSet:Landroid/util/ArraySet;

.field public mBrightness:I

.field public mCharging:Z

.field public mChargingFinishTime:J

.field public final mContext:Landroid/content/Context;

.field public mDimStartTime:J

.field public mFilter:Landroid/content/IntentFilter;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mLastFPS:I

.field public mLastPagecount:J

.field public mLastTime:J

.field public final mLock:Ljava/lang/Object;

.field public mPkgFilter:Landroid/content/IntentFilter;

.field public final mPointerEventListener:Lcom/android/server/ibs/sqd/IbsQuickDim$2;

.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public final mProcessObserver:Lcom/android/server/ibs/sqd/IbsQuickDim$3;

.field public mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

.field public mQuickDimMode:I

.field public mQuickdimEnable:Z

.field public mResolver:Landroid/content/ContentResolver;

.field public mSFSevices:Landroid/os/IBinder;

.field public mSQDPowerSave:F

.field public mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

.field public mScreenOffTimeoutSetting:J

.field public mScreenOn:Z

.field public mSettingsObserver:Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;

.field public mSmartStayEnabledSetting:Z

.field public mUiControlEnabled:Z

.field public receiver:Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;


# direct methods
.method public static -$$Nest$misSqdCanWork(Lcom/android/server/ibs/sqd/IbsQuickDim;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mUiControlEnabled:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mAllowDimUidSet:Landroid/util/ArraySet;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    move v0, v1

    .line 19
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickdimEnable:Z

    .line 20
    .line 21
    if-eqz v3, :cond_2

    .line 22
    .line 23
    iget-boolean v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mScreenOn:Z

    .line 24
    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-boolean p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mCharging:Z

    .line 30
    .line 31
    if-nez p0, :cond_2

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    move v1, v2

    .line 35
    :goto_2
    return v1
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "eng"

    .line 2
    .line 3
    .line 4
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sput-boolean v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->DEBUG:Z

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQDPowerSave:F

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBrightness:I

    .line 16
    .line 17
    new-instance v1, Lcom/android/server/ibs/sqd/IbsQuickDim$1;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/android/server/ibs/sqd/IbsQuickDim$1;-><init>(Lcom/android/server/ibs/sqd/IbsQuickDim;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->SQDGainMap:Ljava/util/Map;

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mCharging:Z

    .line 25
    .line 26
    const-wide/16 v1, 0x0

    .line 27
    .line 28
    iput-wide v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mChargingFinishTime:J

    .line 29
    .line 30
    iput-wide v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mDimStartTime:J

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    iput-object v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    .line 34
    .line 35
    iput-object v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSettingsObserver:Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;

    .line 36
    .line 37
    iput-wide v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastPagecount:J

    .line 38
    .line 39
    iput-wide v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastTime:J

    .line 40
    .line 41
    iput-boolean v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mUiControlEnabled:Z

    .line 42
    .line 43
    const/4 v1, 0x2

    .line 44
    iput v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    .line 45
    .line 46
    iput-object v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    .line 47
    .line 48
    new-instance v1, Lcom/android/server/ibs/sqd/IbsQuickDim$2;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/android/server/ibs/sqd/IbsQuickDim$2;-><init>(Lcom/android/server/ibs/sqd/IbsQuickDim;)V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPointerEventListener:Lcom/android/server/ibs/sqd/IbsQuickDim$2;

    .line 54
    .line 55
    const/4 v1, -0x1

    .line 56
    iput v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastFPS:I

    .line 57
    .line 58
    iput-boolean v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mScreenOn:Z

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickdimEnable:Z

    .line 62
    .line 63
    new-instance v0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;

    .line 64
    .line 65
    invoke-direct {v0, p0}, Lcom/android/server/ibs/sqd/IbsQuickDim$3;-><init>(Lcom/android/server/ibs/sqd/IbsQuickDim;)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mProcessObserver:Lcom/android/server/ibs/sqd/IbsQuickDim$3;

    .line 69
    .line 70
    iput-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public final getFpsFromSurfaceFlinger()I
    .locals 13

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    const-string v2, "SurfaceFlinger"

    .line 16
    .line 17
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iput-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    .line 22
    .line 23
    :cond_0
    iget-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    const-string v2, "android.ui.ISurfaceComposer"

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    .line 34
    .line 35
    const/16 v4, 0x3f5

    .line 36
    .line 37
    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    iget-wide v6, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastTime:J

    .line 52
    .line 53
    const-wide/16 v8, 0x0

    .line 54
    .line 55
    cmp-long v8, v6, v8

    .line 56
    .line 57
    if-eqz v8, :cond_1

    .line 58
    .line 59
    iget-wide v8, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastPagecount:J

    .line 60
    .line 61
    int-to-long v10, v2

    .line 62
    cmp-long v12, v8, v10

    .line 63
    .line 64
    if-gez v12, :cond_1

    .line 65
    .line 66
    cmp-long v12, v6, v4

    .line 67
    .line 68
    if-gez v12, :cond_1

    .line 69
    .line 70
    sub-long v6, v4, v6

    .line 71
    .line 72
    long-to-float v3, v6

    .line 73
    const/high16 v6, 0x447a0000    # 1000.0f

    .line 74
    .line 75
    div-float/2addr v3, v6

    .line 76
    sub-long/2addr v10, v8

    .line 77
    long-to-float v6, v10

    .line 78
    div-float/2addr v6, v3

    .line 79
    float-to-int v3, v6

    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_3

    .line 83
    :catch_0
    move-exception p0

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    :goto_0
    int-to-long v6, v2

    .line 86
    iput-wide v6, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastPagecount:J

    .line 87
    .line 88
    iput-wide v4, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 104
    .line 105
    .line 106
    const/4 v3, -0x2

    .line 107
    :goto_2
    return v3

    .line 108
    :goto_3
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 112
    .line 113
    .line 114
    throw p0
.end method

.method public final quitDimMode()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_3

    .line 5
    .line 6
    sget-boolean v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->DEBUG:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, " quit dim mode mQuickDimMode = "

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    .line 18
    .line 19
    const-string v2, "IbsQuickDim"

    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setScreenDimDurationOverrideFromSqd(Z)V

    .line 28
    .line 29
    .line 30
    iget-wide v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mDimStartTime:J

    .line 31
    .line 32
    const-wide/16 v4, -0x1

    .line 33
    .line 34
    cmp-long v0, v2, v4

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->SQDGainMap:Ljava/util/Map;

    .line 44
    .line 45
    check-cast v0, Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_2

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    check-cast v6, Ljava/util/Map$Entry;

    .line 66
    .line 67
    iget v7, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBrightness:I

    .line 68
    .line 69
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    check-cast v8, Ljava/lang/Integer;

    .line 74
    .line 75
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    if-le v7, v8, :cond_2

    .line 80
    .line 81
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Ljava/lang/Integer;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    iget-wide v6, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mDimStartTime:J

    .line 93
    .line 94
    sub-long/2addr v2, v6

    .line 95
    long-to-float v0, v2

    .line 96
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 97
    .line 98
    div-float/2addr v0, v2

    .line 99
    const/high16 v2, 0x45610000    # 3600.0f

    .line 100
    .line 101
    div-float/2addr v0, v2

    .line 102
    int-to-float v1, v1

    .line 103
    mul-float/2addr v0, v1

    .line 104
    iget v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQDPowerSave:F

    .line 105
    .line 106
    add-float/2addr v1, v0

    .line 107
    iput v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQDPowerSave:F

    .line 108
    .line 109
    iput-wide v4, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mDimStartTime:J

    .line 110
    .line 111
    :cond_3
    :goto_1
    return-void
.end method

.method public final removeAllmessage()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final setUicontrolEnable(Z)V
    .locals 2

    .line 1
    const-string v0, "IbsQuickDim"

    .line 2
    .line 3
    const-string v1, "UI set SQD switch"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mUiControlEnabled:Z

    .line 9
    .line 10
    if-eq v0, p1, :cond_2

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iput v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickdimEnable:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mScreenOn:Z

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    .line 33
    .line 34
    if-ne v0, v1, :cond_1

    .line 35
    .line 36
    iget-boolean v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mCharging:Z

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    const-string/jumbo v1, "pref_sqd_enabled_key"

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1, p1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mUiControlEnabled:Z

    .line 55
    .line 56
    return-void
.end method
