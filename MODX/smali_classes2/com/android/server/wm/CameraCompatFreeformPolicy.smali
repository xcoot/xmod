.class public final Lcom/android/server/wm/CameraCompatFreeformPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/CameraStateMonitor$CameraCompatStateListener;
.implements Lcom/android/server/wm/ActivityRefresher$Evaluator;


# instance fields
.field public final mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

.field public final mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

.field public mCameraTask:Lcom/android/server/wm/Task;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mIsCameraCompatTreatmentPending:Z

.field public mIsRunning:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/CameraStateMonitor;Lcom/android/server/wm/ActivityRefresher;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mIsCameraCompatTreatmentPending:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mIsRunning:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->shouldApplyFreeformTreatmentForCameraCompat(Lcom/android/server/wm/ActivityRecord;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraStateMonitor;->getCameraIdForActivity(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    const/4 v0, 0x5

    .line 32
    if-eq p0, v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    const/16 v0, 0xe

    .line 39
    .line 40
    if-eq p0, v0, :cond_0

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-nez p0, :cond_0

    .line 47
    .line 48
    const/4 p0, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 p0, 0x0

    .line 51
    :goto_0
    return p0
.end method

.method public final onCameraClosed(Ljava/lang/String;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, v2, v2}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v0, v1

    .line 13
    :goto_0
    const/4 v3, 0x1

    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_2

    .line 21
    .line 22
    iget-object v4, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 23
    .line 24
    invoke-virtual {v4, v0}, Lcom/android/server/wm/CameraStateMonitor;->getCameraIdForActivity(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/server/wm/AppCompatCameraOverrides;->mAppCompatCameraOverridesState:Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;

    .line 42
    .line 43
    iget-boolean v0, v0, Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;->mIsRefreshRequested:Z

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    :goto_1
    move v0, v2

    .line 47
    :goto_2
    if-eqz v0, :cond_4

    .line 48
    .line 49
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_STATES_enabled:[Z

    .line 50
    .line 51
    aget-boolean v0, v0, v3

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 56
    .line 57
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 58
    .line 59
    int-to-long v0, p0

    .line 60
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 65
    .line 66
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    const/4 v6, 0x1

    .line 75
    const/4 v7, 0x0

    .line 76
    const-wide v4, -0x1faf14ed0744c1d7L    # -9.073470276292075E155

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    return v2

    .line 85
    :cond_4
    iput-object v1, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    .line 86
    .line 87
    iput-boolean v2, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mIsCameraCompatTreatmentPending:Z

    .line 88
    .line 89
    return v3
.end method

.method public final onCameraOpened(Lcom/android/server/wm/ActivityRecord;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/wm/AppCompatCameraOverrides;->mAppCompatCameraOverridesState:Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;

    .line 15
    .line 16
    iget v0, v0, Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;->mFreeformCameraCompatMode:I

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x1

    .line 24
    if-eq v1, v3, :cond_1

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    if-eq v1, v4, :cond_2

    .line 28
    .line 29
    move v4, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v4, v3

    .line 32
    :cond_2
    :goto_0
    if-eq v4, v0, :cond_3

    .line 33
    .line 34
    iput-boolean v3, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mIsCameraCompatTreatmentPending:Z

    .line 35
    .line 36
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    .line 39
    .line 40
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mAppCompatCameraOverridesState:Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;

    .line 47
    .line 48
    iput v4, p0, Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;->mFreeformCameraCompatMode:I

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->updateReportedConfigurationAndSend()Z

    .line 54
    .line 55
    .line 56
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 57
    .line 58
    if-eqz p0, :cond_4

    .line 59
    .line 60
    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    iput-boolean v2, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mIsCameraCompatTreatmentPending:Z

    .line 65
    .line 66
    :cond_4
    :goto_1
    return-void
.end method

.method public shouldApplyFreeformTreatmentForCameraCompat(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/window/flags/Flags;->cameraCompatForFreeform()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 8
    .line 9
    const-wide/32 v0, 0x12c5ed24

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    return p0
.end method

.method public final shouldRefreshActivity(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mIsCameraCompatTreatmentPending:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method
