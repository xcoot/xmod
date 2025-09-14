.class public final synthetic Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/CameraStateMonitor;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/CameraStateMonitor;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/CameraStateMonitor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/CameraStateMonitor;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/wm/CameraStateMonitor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget-object v2, v0, Lcom/android/server/wm/CameraStateMonitor;->mScheduledToBeRemovedCameraIdSet:Ljava/util/Set;

    .line 14
    .line 15
    check-cast v2, Landroid/util/ArraySet;

    .line 16
    .line 17
    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 25
    .line 26
    .line 27
    goto :goto_2

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_3

    .line 30
    :cond_0
    const/4 v2, 0x1

    .line 31
    const/4 v3, 0x0

    .line 32
    :goto_0
    :try_start_1
    iget-object v4, v0, Lcom/android/server/wm/CameraStateMonitor;->mCameraStateListeners:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-ge v3, v4, :cond_1

    .line 39
    .line 40
    iget-object v4, v0, Lcom/android/server/wm/CameraStateMonitor;->mCameraStateListeners:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Lcom/android/server/wm/CameraStateMonitor$CameraCompatStateListener;

    .line 47
    .line 48
    invoke-interface {v4, p0}, Lcom/android/server/wm/CameraStateMonitor$CameraCompatStateListener;->onCameraClosed(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    and-int/2addr v2, v4

    .line 53
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    if-eqz v2, :cond_3

    .line 57
    .line 58
    iget-object v0, v0, Lcom/android/server/wm/CameraStateMonitor;->mCameraIdPackageBiMapping:Lcom/android/server/wm/CameraIdPackageNameBiMapping;

    .line 59
    .line 60
    iget-object v2, v0, Lcom/android/server/wm/CameraIdPackageNameBiMapping;->mCameraIdToPackageMap:Ljava/util/Map;

    .line 61
    .line 62
    check-cast v2, Landroid/util/ArrayMap;

    .line 63
    .line 64
    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Ljava/lang/String;

    .line 69
    .line 70
    if-nez v2, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    iget-object v3, v0, Lcom/android/server/wm/CameraIdPackageNameBiMapping;->mPackageToCameraIdMap:Ljava/util/Map;

    .line 74
    .line 75
    invoke-interface {v3, v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    iget-object v0, v0, Lcom/android/server/wm/CameraIdPackageNameBiMapping;->mCameraIdToPackageMap:Ljava/util/Map;

    .line 79
    .line 80
    invoke-interface {v0, p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    iget-object v2, v0, Lcom/android/server/wm/CameraStateMonitor;->mScheduledToBeRemovedCameraIdSet:Ljava/util/Set;

    .line 85
    .line 86
    check-cast v2, Landroid/util/ArraySet;

    .line 87
    .line 88
    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    new-instance v2, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda1;

    .line 92
    .line 93
    invoke-direct {v2, v0, p0}, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/CameraStateMonitor;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object p0, v0, Lcom/android/server/wm/CameraStateMonitor;->mHandler:Landroid/os/Handler;

    .line 97
    .line 98
    const-wide/16 v3, 0x7d0

    .line 99
    .line 100
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 101
    .line 102
    .line 103
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 105
    .line 106
    .line 107
    :goto_2
    return-void

    .line 108
    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 110
    .line 111
    .line 112
    throw p0
.end method
