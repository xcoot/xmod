.class public final Lcom/android/server/display/mode/SkinThermalStatusObserver;
.super Landroid/os/IThermalEventListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

.field public mLoggingEnabled:Z

.field public mStatus:I

.field public final mThermalObserverLock:Ljava/lang/Object;

.field public final mThermalThrottlingByDisplay:Landroid/util/SparseArray;

.field public final mVotesStorage:Lcom/android/server/display/mode/VotesStorage;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/mode/VotesStorage;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mThermalObserverLock:Ljava/lang/Object;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mStatus:I

    .line 14
    new-instance v0, Landroid/util/SparseArray;

    .line 16
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mThermalThrottlingByDisplay:Landroid/util/SparseArray;

    .line 21
    iput-object p1, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 23
    iput-object p2, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 25
    iput-object p3, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mHandler:Landroid/os/Handler;

    .line 27
    return-void
.end method

.method public static findBestMatchingRefreshRateRange(ILandroid/util/SparseArray;)Landroid/view/SurfaceControl$RefreshRateRange;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ltz p0, :cond_1

    .line 4
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    add-int/lit8 p0, p0, -0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mThermalObserverLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mStatus:I

    .line 6
    iget-object p0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mThermalThrottlingByDisplay:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {p0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 11
    move-result-object p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    const-string v0, "  SkinThermalStatusObserver:"

    .line 15
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    const-string v2, "    mStatus: "

    .line 22
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    const-string v1, "    mThermalThrottlingByDisplay: "

    .line 39
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    throw p0
.end method

.method public final notifyThrottling(Landroid/os/Temperature;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mThermalObserverLock:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget v1, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mStatus:I

    .line 10
    if-ne v1, p1, :cond_0

    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iput p1, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mStatus:I

    .line 18
    iget-object v1, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mHandler:Landroid/os/Handler;

    .line 20
    new-instance v2, Lcom/android/server/display/mode/SkinThermalStatusObserver$$ExternalSyntheticLambda1;

    .line 22
    invoke-direct {v2, p0}, Lcom/android/server/display/mode/SkinThermalStatusObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/mode/SkinThermalStatusObserver;)V

    .line 25
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-boolean p0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mLoggingEnabled:Z

    .line 31
    if-eqz p0, :cond_1

    .line 33
    const-string p0, "SkinThermalStatusObserver"

    .line 35
    const-string v0, "New thermal throttling status , current thermal status = "

    .line 37
    invoke-static {p1, v0, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_1
    return-void

    .line 41
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw p0
.end method

.method public final observe()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 3
    check-cast v0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string/jumbo v0, "thermalservice"

    .line 11
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    .line 18
    move-result-object v0

    .line 19
    const-string v1, "DisplayModeDirector"

    .line 21
    if-nez v0, :cond_0

    .line 23
    const-string p0, "Could not observe thermal status. Service not available"

    .line 25
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    goto/16 :goto_3

    .line 30
    :cond_0
    const/4 v2, 0x3

    .line 31
    :try_start_0
    invoke-interface {v0, p0, v2}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    iget-object v0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 36
    iget-object v1, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mHandler:Landroid/os/Handler;

    .line 38
    check-cast v0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 40
    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    .line 43
    move-result-object v0

    .line 44
    const-wide/16 v2, 0x7

    .line 46
    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    .line 49
    new-instance v0, Landroid/view/DisplayInfo;

    .line 51
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 54
    iget-object v1, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 56
    check-cast v1, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 58
    invoke-virtual {v1}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    .line 61
    move-result-object v1

    .line 62
    const-string v2, "android.hardware.display.category.ALL_INCLUDING_DISABLED"

    .line 64
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 67
    move-result-object v1

    .line 68
    array-length v2, v1

    .line 69
    new-instance v3, Landroid/util/SparseArray;

    .line 71
    invoke-direct {v3, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 74
    array-length v4, v1

    .line 75
    const/4 v5, 0x0

    .line 76
    move v6, v5

    .line 77
    :goto_0
    if-ge v6, v4, :cond_1

    .line 79
    aget-object v7, v1, v6

    .line 81
    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    .line 84
    move-result v8

    .line 85
    invoke-virtual {v7, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 88
    iget-object v7, v0, Landroid/view/DisplayInfo;->thermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 90
    invoke-virtual {v3, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    add-int/lit8 v6, v6, 0x1

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mThermalObserverLock:Ljava/lang/Object;

    .line 98
    monitor-enter v0

    .line 99
    :goto_1
    if-ge v5, v2, :cond_2

    .line 101
    :try_start_1
    iget-object v1, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mThermalThrottlingByDisplay:Landroid/util/SparseArray;

    .line 103
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 106
    move-result v4

    .line 107
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 110
    move-result-object v6

    .line 111
    check-cast v6, Landroid/util/SparseArray;

    .line 113
    invoke-virtual {v1, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    add-int/lit8 v5, v5, 0x1

    .line 118
    goto :goto_1

    .line 119
    :catchall_0
    move-exception p0

    .line 120
    goto :goto_2

    .line 121
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    iget-boolean p0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mLoggingEnabled:Z

    .line 124
    if-eqz p0, :cond_3

    .line 126
    const-string p0, "SkinThermalStatusObserver"

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    const-string v1, "Display initial info:"

    .line 132
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v0

    .line 142
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_3
    return-void

    .line 146
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    throw p0

    .line 148
    :catch_0
    move-exception p0

    .line 149
    const-string v0, "Failed to register thermal status listener"

    .line 151
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    :goto_3
    return-void
.end method

.method public final onDisplayAdded(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->updateThermalRefreshRateThrottling(I)V

    .line 4
    iget-boolean p0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mLoggingEnabled:Z

    .line 6
    if-eqz p0, :cond_0

    .line 8
    const-string p0, "Display added:"

    .line 10
    const-string v0, "SkinThermalStatusObserver"

    .line 12
    invoke-static {p1, p0, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_0
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->updateThermalRefreshRateThrottling(I)V

    .line 4
    iget-boolean p0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mLoggingEnabled:Z

    .line 6
    if-eqz p0, :cond_0

    .line 8
    const-string p0, "Display changed:"

    .line 10
    const-string v0, "SkinThermalStatusObserver"

    .line 12
    invoke-static {p1, p0, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mThermalObserverLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mThermalThrottlingByDisplay:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 9
    iget-object v1, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mHandler:Landroid/os/Handler;

    .line 11
    new-instance v2, Lcom/android/server/display/mode/SkinThermalStatusObserver$$ExternalSyntheticLambda0;

    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/display/mode/SkinThermalStatusObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/SkinThermalStatusObserver;II)V

    .line 17
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-boolean p0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mLoggingEnabled:Z

    .line 23
    if-eqz p0, :cond_0

    .line 25
    const-string p0, "SkinThermalStatusObserver"

    .line 27
    const-string v0, "Display removed and voted: displayId="

    .line 29
    invoke-static {p1, v0, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p0
.end method

.method public final reportThrottlingIfNeeded(IILandroid/util/SparseArray;)V
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p2, v0, :cond_0

    .line 4
    return-void

    .line 5
    :cond_0
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    .line 8
    move-result v0

    .line 9
    const-string v1, "SkinThermalStatusObserver"

    .line 11
    const-string v2, ", display ="

    .line 13
    const/16 v3, 0x16

    .line 15
    const/4 v4, 0x0

    .line 16
    if-nez v0, :cond_3

    .line 18
    const/4 p3, 0x4

    .line 19
    if-lt p2, p3, :cond_1

    .line 21
    new-instance v4, Lcom/android/server/display/mode/RefreshRateVote$RenderVote;

    .line 23
    const/4 p2, 0x0

    .line 24
    const/high16 p3, 0x42700000    # 60.0f

    .line 26
    invoke-direct {v4, p2, p3}, Lcom/android/server/display/mode/RefreshRateVote;-><init>(FF)V

    .line 29
    :cond_1
    iget-object p2, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 31
    invoke-virtual {p2, p1, v3, v4}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 34
    iget-boolean p0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mLoggingEnabled:Z

    .line 36
    if-eqz p0, :cond_2

    .line 38
    new-instance p0, Ljava/lang/StringBuilder;

    .line 40
    const-string p2, "Voted(fallback): vote="

    .line 42
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_2
    return-void

    .line 62
    :cond_3
    invoke-static {p2, p3}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->findBestMatchingRefreshRateRange(ILandroid/util/SparseArray;)Landroid/view/SurfaceControl$RefreshRateRange;

    .line 65
    move-result-object p2

    .line 66
    if-eqz p2, :cond_4

    .line 68
    iget p3, p2, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    .line 70
    iget p2, p2, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    .line 72
    new-instance v4, Lcom/android/server/display/mode/RefreshRateVote$RenderVote;

    .line 74
    invoke-direct {v4, p3, p2}, Lcom/android/server/display/mode/RefreshRateVote;-><init>(FF)V

    .line 77
    :cond_4
    iget-object p2, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 79
    invoke-virtual {p2, p1, v3, v4}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 82
    iget-boolean p0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mLoggingEnabled:Z

    .line 84
    if-eqz p0, :cond_5

    .line 86
    new-instance p0, Ljava/lang/StringBuilder;

    .line 88
    const-string p2, "Voted: vote="

    .line 90
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 106
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_5
    return-void
.end method

.method public final updateThermalRefreshRateThrottling(I)V
    .locals 5

    .line 1
    new-instance v0, Landroid/view/DisplayInfo;

    .line 3
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 8
    check-cast v1, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 10
    invoke-virtual {v1}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 24
    :goto_0
    iget-object v0, v0, Landroid/view/DisplayInfo;->thermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 26
    iget-object v1, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mThermalObserverLock:Ljava/lang/Object;

    .line 28
    monitor-enter v1

    .line 29
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mThermalThrottlingByDisplay:Landroid/util/SparseArray;

    .line 31
    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    iget-object v2, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mHandler:Landroid/os/Handler;

    .line 36
    new-instance v3, Lcom/android/server/display/mode/SkinThermalStatusObserver$$ExternalSyntheticLambda0;

    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-direct {v3, p0, p1, v4}, Lcom/android/server/display/mode/SkinThermalStatusObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/SkinThermalStatusObserver;II)V

    .line 42
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    iget-boolean p0, p0, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mLoggingEnabled:Z

    .line 48
    if-eqz p0, :cond_1

    .line 50
    const-string p0, "SkinThermalStatusObserver"

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    const-string v2, "Thermal throttling updated: display="

    .line 56
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    const-string p1, ", map="

    .line 64
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_1
    return-void

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    throw p0
.end method
