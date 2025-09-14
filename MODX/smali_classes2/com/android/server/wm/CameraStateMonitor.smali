.class public final Lcom/android/server/wm/CameraStateMonitor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAvailabilityCallback:Lcom/android/server/wm/CameraStateMonitor$1;

.field public final mCameraIdPackageBiMapping:Lcom/android/server/wm/CameraIdPackageNameBiMapping;

.field public final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field public final mCameraStateListeners:Ljava/util/ArrayList;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mHandler:Landroid/os/Handler;

.field public mIsRunning:Z

.field public final mScheduledCompatModeUpdateCameraIdSet:Ljava/util/Set;

.field public final mScheduledToBeRemovedCameraIdSet:Ljava/util/Set;

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static -$$Nest$mnotifyCameraClosedWithDelay(Lcom/android/server/wm/CameraStateMonitor;Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_STATES_enabled:[Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget-boolean v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 9
    .line 10
    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 11
    .line 12
    int-to-long v0, v0

    .line 13
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    const/4 v7, 0x0

    .line 28
    const-wide v4, -0x346191b45817c013L    # -1.8654051817180032E56

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    const/4 v6, 0x1

    .line 34
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mScheduledToBeRemovedCameraIdSet:Ljava/util/Set;

    .line 38
    .line 39
    check-cast v0, Landroid/util/ArraySet;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mScheduledCompatModeUpdateCameraIdSet:Ljava/util/Set;

    .line 45
    .line 46
    check-cast v0, Landroid/util/ArraySet;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    new-instance v0, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda1;

    .line 52
    .line 53
    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/CameraStateMonitor;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-wide/16 v1, 0x7d0

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/wm/CameraStateMonitor;->mHandler:Landroid/os/Handler;

    .line 59
    .line 60
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public static -$$Nest$mnotifyCameraOpenedWithDelay(Lcom/android/server/wm/CameraStateMonitor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mScheduledToBeRemovedCameraIdSet:Ljava/util/Set;

    .line 2
    .line 3
    check-cast v0, Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_STATES_enabled:[Z

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    aget-boolean v0, v0, v1

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 16
    .line 17
    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 18
    .line 19
    int-to-long v0, v0

    .line 20
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 29
    .line 30
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v9

    .line 38
    const/4 v7, 0x1

    .line 39
    const/4 v8, 0x0

    .line 40
    const-wide v5, 0x70a1ee89665f30c5L    # 3.5634456542814795E234

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mScheduledCompatModeUpdateCameraIdSet:Ljava/util/Set;

    .line 49
    .line 50
    check-cast v0, Landroid/util/ArraySet;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    new-instance v0, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda0;

    .line 56
    .line 57
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/CameraStateMonitor;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-wide/16 p1, 0x3e8

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/wm/CameraStateMonitor;->mHandler:Landroid/os/Handler;

    .line 63
    .line 64
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/wm/CameraIdPackageNameBiMapping;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/server/wm/CameraIdPackageNameBiMapping;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mCameraIdPackageBiMapping:Lcom/android/server/wm/CameraIdPackageNameBiMapping;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mScheduledToBeRemovedCameraIdSet:Ljava/util/Set;

    .line 17
    .line 18
    new-instance v0, Landroid/util/ArraySet;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mScheduledCompatModeUpdateCameraIdSet:Ljava/util/Set;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mCameraStateListeners:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance v0, Lcom/android/server/wm/CameraStateMonitor$1;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/android/server/wm/CameraStateMonitor$1;-><init>(Lcom/android/server/wm/CameraStateMonitor;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mAvailabilityCallback:Lcom/android/server/wm/CameraStateMonitor$1;

    .line 38
    .line 39
    iput-object p2, p0, Lcom/android/server/wm/CameraStateMonitor;->mHandler:Landroid/os/Handler;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/android/server/wm/CameraStateMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/android/server/wm/CameraStateMonitor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    const-class p2, Landroid/hardware/camera2/CameraManager;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Landroid/hardware/camera2/CameraManager;

    .line 56
    .line 57
    iput-object p1, p0, Lcom/android/server/wm/CameraStateMonitor;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final findUniqueActivityWithPackageName(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/CameraStateMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v2, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda2;

    .line 25
    .line 26
    invoke-direct {v2, p1, v1}, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    const/4 p1, 0x0

    .line 37
    const-string v2, "WindowManager"

    .line 38
    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    const-string p0, "Cannot find camera activity."

    .line 42
    .line 43
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return-object p1

    .line 47
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-ne p0, v0, :cond_2

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->getFirst()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    .line 58
    .line 59
    return-object p0

    .line 60
    :cond_2
    const-string p0, "Cannot determine which activity opened camera."

    .line 61
    .line 62
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    return-object p1
.end method

.method public final getCameraIdForActivity(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/CameraStateMonitor;->mCameraIdPackageBiMapping:Lcom/android/server/wm/CameraIdPackageNameBiMapping;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/CameraIdPackageNameBiMapping;->mPackageToCameraIdMap:Ljava/util/Map;

    .line 6
    .line 7
    check-cast p0, Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/lang/String;

    .line 14
    .line 15
    return-object p0
.end method

.method public isRunning()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/wm/CameraStateMonitor;->mIsRunning:Z

    .line 2
    .line 3
    return p0
.end method
