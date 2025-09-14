.class public final Lcom/samsung/android/camera/CameraServiceWorker;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final DEBUG:Z

.field public static final DEVICE_INJECTOR_TEST_PACKAGES:[Ljava/lang/String;

.field public static final DEVICE_INJECTOR_TEST_PACKAGES_FOR_BLOCK:[Ljava/lang/String;

.field public static final SAMSUNG_CAMERA_PACKAGES:[Ljava/lang/String;


# instance fields
.field public final mActiveCameraUsage:Landroid/util/ArrayMap;

.field public mBootCompleted:Z

.field public mCameraServiceRaw:Landroid/hardware/ICameraService;

.field public final mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker$3;

.field public final mContext:Landroid/content/Context;

.field public mDeviceState:J

.field public final mDisplayId:I

.field public final mDisplayWindowListener:Lcom/samsung/android/camera/CameraServiceWorker$DisplayWindowListener;

.field public final mEnableSurveyMode:Z

.field public final mFoldStateLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mHandler:Landroid/os/Handler;

.field public mIsCameraOpened:Z

.field public final mLock:Ljava/lang/Object;

.field public final mOpenCameraUsage:Landroid/util/ArrayMap;

.field public mOrientationEventListener:Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;

.field public final mOrientationLock:Ljava/lang/Object;

.field public final mRequestInjectorService:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

.field public final mScpmReceiver:Lcom/samsung/android/camera/scpm/ScpmReceiver;

.field public final mServiceLock:Ljava/lang/Object;

.field public final mShakeEventListener:Lcom/samsung/android/camera/ShakeEventListener;

.field public final mVtCameraProviderObserver:Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "user"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 22
    :goto_1
    sput-boolean v0, Lcom/samsung/android/camera/CameraServiceWorker;->DEBUG:Z

    .line 23
    .line 24
    const-string v0, "com.samsung.android.sead"

    .line 25
    .line 26
    const-string v1, "com.samsung.sightcare"

    .line 27
    .line 28
    const-string v2, "com.sec.android.app.camera"

    .line 29
    .line 30
    const-string v3, "com.samsung.android.smartface"

    .line 31
    .line 32
    const-string v4, "com.samsung.adaptivebrightnessgo"

    .line 33
    .line 34
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lcom/samsung/android/camera/CameraServiceWorker;->SAMSUNG_CAMERA_PACKAGES:[Ljava/lang/String;

    .line 39
    .line 40
    const-string v0, "com.samsung.android.camera.test"

    .line 41
    .line 42
    const-string v1, "injector.test"

    .line 43
    .line 44
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Lcom/samsung/android/camera/CameraServiceWorker;->DEVICE_INJECTOR_TEST_PACKAGES:[Ljava/lang/String;

    .line 49
    .line 50
    const-string v0, "injector.test.phone"

    .line 51
    .line 52
    filled-new-array {v0}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sput-object v0, Lcom/samsung/android/camera/CameraServiceWorker;->DEVICE_INJECTOR_TEST_PACKAGES_FOR_BLOCK:[Ljava/lang/String;

    .line 57
    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

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
    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mActiveCameraUsage:Landroid/util/ArrayMap;

    .line 17
    .line 18
    new-instance v0, Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOpenCameraUsage:Landroid/util/ArrayMap;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mIsCameraOpened:Z

    .line 27
    .line 28
    new-instance v1, Ljava/lang/Object;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mServiceLock:Ljava/lang/Object;

    .line 34
    .line 35
    iput v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mDisplayId:I

    .line 36
    .line 37
    const-wide/16 v1, 0x0

    .line 38
    .line 39
    iput-wide v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mDeviceState:J

    .line 40
    .line 41
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mFoldStateLatch:Ljava/util/concurrent/CountDownLatch;

    .line 47
    .line 48
    iput-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mBootCompleted:Z

    .line 49
    .line 50
    new-instance v1, Lcom/samsung/android/camera/CameraServiceWorker$DisplayWindowListener;

    .line 51
    .line 52
    invoke-direct {v1, p0}, Lcom/samsung/android/camera/CameraServiceWorker$DisplayWindowListener;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;)V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mDisplayWindowListener:Lcom/samsung/android/camera/CameraServiceWorker$DisplayWindowListener;

    .line 56
    .line 57
    new-instance v1, Ljava/lang/Object;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOrientationLock:Ljava/lang/Object;

    .line 63
    .line 64
    new-instance v1, Lcom/samsung/android/camera/CameraServiceWorker$3;

    .line 65
    .line 66
    invoke-direct {v1, p0}, Lcom/samsung/android/camera/CameraServiceWorker$3;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;)V

    .line 67
    .line 68
    .line 69
    iput-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker$3;

    .line 70
    .line 71
    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    const-string v1, "CameraService_worker"

    .line 74
    .line 75
    const/4 v2, -0x4

    .line 76
    invoke-static {v2, v1, v0}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    new-instance v2, Landroid/os/Handler;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-direct {v2, v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 87
    .line 88
    .line 89
    iput-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mHandler:Landroid/os/Handler;

    .line 90
    .line 91
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    const-string v4, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 96
    .line 97
    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    iput-boolean v3, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mEnableSurveyMode:Z

    .line 102
    .line 103
    sget-boolean v4, Lcom/samsung/android/camera/CameraServiceWorker;->DEBUG:Z

    .line 104
    .line 105
    if-eqz v4, :cond_0

    .line 106
    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v5, "enable survey mode is "

    .line 110
    .line 111
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    :cond_0
    new-instance v1, Lcom/samsung/android/camera/ShakeEventListener;

    .line 125
    .line 126
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/camera/ShakeEventListener;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/content/Context;Landroid/os/Handler;)V

    .line 127
    .line 128
    .line 129
    iput-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mShakeEventListener:Lcom/samsung/android/camera/ShakeEventListener;

    .line 130
    .line 131
    new-instance v1, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    .line 132
    .line 133
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/content/Context;Landroid/os/Handler;)V

    .line 134
    .line 135
    .line 136
    iput-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mRequestInjectorService:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    .line 137
    .line 138
    new-instance v1, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;

    .line 139
    .line 140
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/content/Context;Landroid/os/Handler;)V

    .line 141
    .line 142
    .line 143
    iput-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mVtCameraProviderObserver:Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;

    .line 144
    .line 145
    new-instance v1, Lcom/samsung/android/camera/scpm/ScpmReceiver;

    .line 146
    .line 147
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/camera/scpm/ScpmReceiver;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/content/Context;Landroid/os/Looper;)V

    .line 152
    .line 153
    .line 154
    iput-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mScpmReceiver:Lcom/samsung/android/camera/scpm/ScpmReceiver;

    .line 155
    .line 156
    new-instance p1, Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;

    .line 157
    .line 158
    invoke-direct {p1, p0}, Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;)V

    .line 159
    .line 160
    .line 161
    new-instance p1, Lcom/samsung/android/camera/CameraServiceWorker$CPRCommandReceiver;

    .line 162
    .line 163
    invoke-direct {p1, p0}, Lcom/samsung/android/camera/CameraServiceWorker$CPRCommandReceiver;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;)V

    .line 164
    .line 165
    .line 166
    return-void
.end method

.method public static getTaskInfo(ILjava/lang/String;)Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;
    .locals 12

    .line 1
    const-string v0, "CameraService_worker"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-interface {v2, v3, v4, p0}, Landroid/app/IActivityTaskManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    if-eqz p0, :cond_4

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_4

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 45
    .line 46
    iget-object v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 47
    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_0

    .line 57
    .line 58
    new-instance p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;

    .line 59
    .line 60
    iget v6, v2, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    .line 61
    .line 62
    iget-object v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 63
    .line 64
    iget v5, v3, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 65
    .line 66
    if-eqz v5, :cond_1

    .line 67
    .line 68
    const/4 v4, 0x1

    .line 69
    :cond_1
    move v9, v4

    .line 70
    iget v3, v3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 71
    .line 72
    invoke-static {v3}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    iget-object v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 77
    .line 78
    iget v3, v3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 79
    .line 80
    invoke-static {v3}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    .line 81
    .line 82
    .line 83
    move-result v11

    .line 84
    iget v7, v2, Landroid/app/ActivityManager$RecentTaskInfo;->displayId:I

    .line 85
    .line 86
    iget v8, v2, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    .line 87
    .line 88
    move-object v5, p0

    .line 89
    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;-><init>(IIIZZZ)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    move-object p0, v1

    .line 94
    :goto_0
    if-nez p0, :cond_3

    .line 95
    .line 96
    const-string p0, "Recent tasks don\'t include camera client package name: "

    .line 97
    .line 98
    invoke-static {p0, p1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-object v1

    .line 102
    :cond_3
    return-object p0

    .line 103
    :cond_4
    const-string p0, "Recent task list is empty!"

    .line 104
    .line 105
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    return-object v1

    .line 109
    :catch_0
    const-string p0, "Failed to query recent tasks!"

    .line 110
    .line 111
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    return-object v1
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    const-string v0, "CameraService_worker"

    .line 2
    .line 3
    const-string v1, "Native camera service has died"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mServiceLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    const/4 v2, 0x0

    .line 15
    :try_start_1
    iput-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    .line 16
    .line 17
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 18
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mActiveCameraUsage:Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOpenCameraUsage:Landroid/util/ArrayMap;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-boolean v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mIsCameraOpened:Z

    .line 30
    .line 31
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOrientationLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 34
    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOrientationEventListener:Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->disable()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    :try_start_4
    sget-object v1, Lcom/samsung/android/camera/Logger$ID;->CAMERA_EVENT:Lcom/samsung/android/camera/Logger$ID;

    .line 46
    .line 47
    const-string v2, "Close all camera, camera service died"

    .line 48
    .line 49
    invoke-static {v1, v2}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mFoldStateLatch:Ljava/util/concurrent/CountDownLatch;

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 55
    .line 56
    .line 57
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 58
    return-void

    .line 59
    :catchall_1
    move-exception p0

    .line 60
    goto :goto_2

    .line 61
    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 62
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 63
    :catchall_2
    move-exception p0

    .line 64
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 65
    :try_start_8
    throw p0

    .line 66
    :goto_2
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 67
    throw p0
.end method

.method public final getCameraService()Landroid/hardware/ICameraService;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mServiceLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    const-string/jumbo v1, "media.camera"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lcom/android/server/SystemService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const-string p0, "CameraService_worker"

    .line 19
    .line 20
    const-string v1, "Could not notify mediaserver, camera service not available."

    .line 21
    .line 22
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    return-object v2

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/4 v3, 0x0

    .line 30
    :try_start_1
    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    .line 33
    :try_start_2
    invoke-static {v1}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iput-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    const-string p0, "CameraService_worker"

    .line 41
    .line 42
    const-string v1, "Could not link to death of native camera service"

    .line 43
    .line 44
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    monitor-exit v0

    .line 48
    return-object v2

    .line 49
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    .line 50
    .line 51
    monitor-exit v0

    .line 52
    return-object p0

    .line 53
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    throw p0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const-string p0, "CameraService_worker"

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "CameraServiceWorker error, invalid message: "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget p1, p1, Landroid/os/Message;->what:I

    .line 16
    .line 17
    invoke-static {v0, p1, p0}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChangeRetryLocked(I)V

    .line 27
    .line 28
    .line 29
    monitor-exit v0

    .line 30
    :goto_0
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final insertDMALog(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/samsung/android/camera/CameraServiceWorker;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "insertDMALog: trackingId=4K3-399-1014897, feature="

    .line 6
    .line 7
    const-string v1, ", extra="

    .line 8
    .line 9
    const-string v2, ", value="

    .line 10
    .line 11
    invoke-static {v0, p2, v1, p3, v2}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "CameraService_worker"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 28
    .line 29
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string/jumbo v1, "tracking_id"

    .line 33
    .line 34
    .line 35
    const-string v2, "4K3-399-1014897"

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v1, "feature"

    .line 41
    .line 42
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    if-eqz p3, :cond_1

    .line 46
    .line 47
    const-string v1, "extra"

    .line 48
    .line 49
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    if-eqz p1, :cond_2

    .line 53
    .line 54
    const-string/jumbo v1, "value"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 58
    .line 59
    .line 60
    move-result-wide v2

    .line 61
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 62
    .line 63
    .line 64
    :cond_2
    const-string/jumbo v1, "type"

    .line 65
    .line 66
    .line 67
    const-string v2, "ev"

    .line 68
    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string/jumbo v1, "pkg_name"

    .line 73
    .line 74
    .line 75
    const-string v2, "com.samsung.android.camera"

    .line 76
    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v1, "7501"

    .line 81
    .line 82
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-eqz p2, :cond_7

    .line 87
    .line 88
    if-eqz p1, :cond_7

    .line 89
    .line 90
    new-instance p2, Ljava/util/HashMap;

    .line 91
    .line 92
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 93
    .line 94
    .line 95
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    const/4 v1, 0x1

    .line 102
    if-eqz p1, :cond_5

    .line 103
    .line 104
    if-eq p1, v1, :cond_4

    .line 105
    .line 106
    const/4 v2, 0x2

    .line 107
    if-eq p1, v2, :cond_3

    .line 108
    .line 109
    const-string p1, "UnknownCamera"

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    const-string p1, "ExternalCamera"

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_4
    const-string p1, "FrontCamera"

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_5
    const-string p1, "BackCamera"

    .line 119
    .line 120
    :goto_0
    iget v2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mDisplayId:I

    .line 121
    .line 122
    if-ne v2, v1, :cond_6

    .line 123
    .line 124
    const-string v1, "SubDisplay"

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_6
    const-string v1, "MainDisplay"

    .line 128
    .line 129
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string p3, "_"

    .line 138
    .line 139
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    const-string p3, "3PApp_Camera_Display"

    .line 156
    .line 157
    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    const-string p1, "dimension"

    .line 161
    .line 162
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 163
    .line 164
    .line 165
    :cond_7
    new-instance p1, Landroid/content/Intent;

    .line 166
    .line 167
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 168
    .line 169
    .line 170
    const-string p2, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    .line 171
    .line 172
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 176
    .line 177
    .line 178
    const-string p2, "com.sec.android.diagmonagent"

    .line 179
    .line 180
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    .line 182
    .line 183
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 184
    .line 185
    .line 186
    move-result-wide p2

    .line 187
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    .line 188
    .line 189
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 190
    .line 191
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 192
    .line 193
    .line 194
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 195
    .line 196
    .line 197
    return-void
.end method

.method public final notifyDeviceChange(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mDeviceState:J

    .line 5
    .line 6
    cmp-long v1, v1, p1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iput-wide p1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mDeviceState:J

    .line 11
    .line 12
    const/16 p1, 0x1e

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChangeRetryLocked(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const-string p0, "CameraService_worker"

    .line 21
    .line 22
    const-string p1, "Same device state has coming. skip"

    .line 23
    .line 24
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :goto_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final notifyDeviceChangeLocked(JZ)Landroid/util/Pair;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->getCameraService()Landroid/hardware/ICameraService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "CameraService_worker"

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    new-instance p0, Landroid/util/Pair;

    .line 10
    .line 11
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    .line 13
    const-string p2, "Could not notify mediaserver, camera service not available."

    .line 14
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "NotifyDeviceStateChange 0x%X, sync(%b)"

    .line 39
    .line 40
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    if-eqz p3, :cond_1

    .line 48
    .line 49
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/hardware/ICameraService;->notifyDeviceStateChangeSync(J)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-interface {p0, p1, p2}, Landroid/hardware/ICameraService;->notifyDeviceStateChange(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    :goto_0
    new-instance p0, Landroid/util/Pair;

    .line 59
    .line 60
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string p2, "NotifyDeviceStateChange success: 0x%X"

    .line 71
    .line 72
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-direct {p0, p3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-object p0

    .line 80
    :goto_1
    new-instance p1, Landroid/util/Pair;

    .line 81
    .line 82
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 83
    .line 84
    new-instance p3, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v1, "Could not notify device state change, remote exception: "

    .line 87
    .line 88
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p0, Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    return-object p1
.end method

.method public final notifyDeviceChangeRetryLocked(I)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mDeviceState:J

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChangeLocked(JZ)Landroid/util/Pair;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    move p1, v2

    .line 19
    :cond_0
    if-gtz p1, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    const-string v0, "CameraService_worker"

    .line 23
    .line 24
    const-string v1, "Could not notify camera service of device state change, retrying..."

    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mHandler:Landroid/os/Handler;

    .line 30
    .line 31
    add-int/lit8 p1, p1, -0x1

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    const/4 v1, 0x3

    .line 35
    invoke-virtual {p0, v1, p1, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-wide/16 v0, 0x14

    .line 40
    .line 41
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 5

    .line 1
    const/16 v0, 0x1f4

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo p1, "window"

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/android/server/wm/WindowManagerService;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/hardware/devicestate/DeviceStateManager;

    .line 27
    .line 28
    new-instance v0, Landroid/os/HandlerExecutor;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mHandler:Landroid/os/Handler;

    .line 31
    .line 32
    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Lcom/samsung/android/camera/CameraServiceWorker$DeviceStateListener;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/samsung/android/camera/CameraServiceWorker$DeviceStateListener;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_4

    .line 44
    .line 45
    :cond_0
    const/16 v0, 0x3e8

    .line 46
    .line 47
    if-ne p1, v0, :cond_2

    .line 48
    .line 49
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mDisplayWindowListener:Lcom/samsung/android/camera/CameraServiceWorker$DisplayWindowListener;

    .line 54
    .line 55
    invoke-interface {p1, v0}, Landroid/view/IWindowManager;->registerDisplayWindowListener(Landroid/view/IDisplayWindowListener;)[I

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const/4 v0, 0x0

    .line 60
    :goto_0
    array-length v1, p1

    .line 61
    if-ge v0, v1, :cond_1

    .line 62
    .line 63
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mDisplayWindowListener:Lcom/samsung/android/camera/CameraServiceWorker$DisplayWindowListener;

    .line 64
    .line 65
    aget v2, p1, v0

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    add-int/lit8 v0, v0, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_0
    const-string p1, "CameraService_worker"

    .line 74
    .line 75
    const-string v0, "Failed to register display window listener!"

    .line 76
    .line 77
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOrientationLock:Ljava/lang/Object;

    .line 81
    .line 82
    monitor-enter v0

    .line 83
    :try_start_1
    new-instance p1, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    invoke-direct {p1, p0, v1}, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/content/Context;)V

    .line 88
    .line 89
    .line 90
    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOrientationEventListener:Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;

    .line 91
    .line 92
    monitor-exit v0

    .line 93
    goto/16 :goto_4

    .line 94
    .line 95
    :catchall_0
    move-exception p0

    .line 96
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    throw p0

    .line 98
    :cond_2
    const/16 v0, 0x258

    .line 99
    .line 100
    if-ne p1, v0, :cond_5

    .line 101
    .line 102
    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mShakeEventListener:Lcom/samsung/android/camera/ShakeEventListener;

    .line 103
    .line 104
    monitor-enter p1

    .line 105
    monitor-exit p1

    .line 106
    const-string p1, "CameraService_worker"

    .line 107
    .line 108
    const-string v0, "Shake event is not supported."

    .line 109
    .line 110
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mRequestInjectorService:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    .line 114
    .line 115
    sget-object v0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    .line 116
    .line 117
    const-string v1, "RequestInjectorService"

    .line 118
    .line 119
    const-string v2, "com.samsung.android.vtcamerasettings"

    .line 120
    .line 121
    iget-object v3, p1, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mContext:Landroid/content/Context;

    .line 122
    .line 123
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    const/4 v4, 0x4

    .line 128
    :try_start_2
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 133
    .line 134
    if-eqz v2, :cond_4

    .line 135
    .line 136
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-nez v3, :cond_3

    .line 141
    .line 142
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    .line 143
    .line 144
    .line 145
    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 146
    if-eqz v2, :cond_4

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :catch_1
    move-exception p1

    .line 150
    goto :goto_2

    .line 151
    :cond_3
    :goto_1
    const-string v2, "VT Camera Setting exists. Register camera listener."

    .line 152
    .line 153
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    invoke-static {v0, v2}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p1, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mContext:Landroid/content/Context;

    .line 160
    .line 161
    const-string v1, "camera"

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 168
    .line 169
    new-instance v1, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$1;

    .line 170
    .line 171
    invoke-direct {v1, p1}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$1;-><init>(Lcom/samsung/android/camera/requestinjector/RequestInjectorService;)V

    .line 172
    .line 173
    .line 174
    iget-object p1, p1, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mHandler:Landroid/os/Handler;

    .line 175
    .line 176
    const/4 v2, 0x1

    .line 177
    invoke-virtual {v0, v1, p1, v2}, Landroid/hardware/camera2/CameraManager;->registerSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Landroid/os/Handler;Z)V

    .line 178
    .line 179
    .line 180
    goto :goto_3

    .line 181
    :goto_2
    const-string/jumbo v2, "pkgInstalledOrNot "

    .line 182
    .line 183
    .line 184
    invoke-static {p1, v2, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :cond_4
    const-string p1, "VT Camera Setting does not exist. Skip register camera listener."

    .line 188
    .line 189
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    invoke-static {v0, p1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mScpmReceiver:Lcom/samsung/android/camera/scpm/ScpmReceiver;

    .line 196
    .line 197
    iget-object v0, p1, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mContext:Landroid/content/Context;

    .line 198
    .line 199
    const-string v1, "camera"

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 206
    .line 207
    new-instance v1, Lcom/samsung/android/camera/scpm/ScpmReceiver$2;

    .line 208
    .line 209
    invoke-direct {v1, p1}, Lcom/samsung/android/camera/scpm/ScpmReceiver$2;-><init>(Lcom/samsung/android/camera/scpm/ScpmReceiver;)V

    .line 210
    .line 211
    .line 212
    iget-object p1, p1, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mHandler:Landroid/os/Handler;

    .line 213
    .line 214
    invoke-virtual {v0, v1, p1}, Landroid/hardware/camera2/CameraManager;->registerSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Landroid/os/Handler;)V

    .line 215
    .line 216
    .line 217
    new-instance p1, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;

    .line 218
    .line 219
    invoke-direct {p1, p0}, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;)V

    .line 220
    .line 221
    .line 222
    :cond_5
    :goto_4
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    const-string v0, "CameraService_worker"

    .line 2
    .line 3
    const-string v1, "CameraServiceWorker is started."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker$3;

    .line 9
    .line 10
    const-string/jumbo v1, "media.camera.worker"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 14
    .line 15
    .line 16
    const-class v0, Lcom/samsung/android/camera/CameraServiceWorker;

    .line 17
    .line 18
    invoke-virtual {p0, v0, p0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
