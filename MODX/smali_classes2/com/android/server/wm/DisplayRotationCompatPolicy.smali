.class public final Lcom/android/server/wm/DisplayRotationCompatPolicy;
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

.field public mIsRunning:Z

.field public mLastReportedOrientation:I

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/CameraStateMonitor;Lcom/android/server/wm/ActivityRefresher;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x2

    .line 5
    iput v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mLastReportedOrientation:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final isCameraActive(ZLcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lcom/android/server/wm/CameraStateMonitor;->getCameraIdForActivity(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public isRunning()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mIsRunning:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isTreatmentEnabledForActivity(ZLcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_3

    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isCameraActive(ZLcom/android/server/wm/ActivityRecord;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-eqz p0, :cond_3

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-nez p0, :cond_2

    .line 15
    .line 16
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CAMERA_POLICY:Z

    .line 17
    .line 18
    if-eqz p0, :cond_3

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-nez p0, :cond_1

    .line 25
    .line 26
    iget-object p0, p2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 27
    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    :goto_0
    if-eqz p0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move p0, v0

    .line 44
    :goto_1
    if-eqz p0, :cond_3

    .line 45
    .line 46
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    const/4 p1, 0x5

    .line 51
    if-eq p0, p1, :cond_3

    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    const/16 p1, 0xe

    .line 58
    .line 59
    if-eq p0, p1, :cond_3

    .line 60
    .line 61
    iget-object p0, p2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldForceRotateForCameraCompat()Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_3

    .line 72
    .line 73
    const/4 v0, 0x1

    .line 74
    :cond_3
    return v0
.end method

.method public final isTreatmentEnabledForDisplay()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    .line 6
    .line 7
    const-string v1, "enable_compat_camera_treatment"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getIgnoreOrientationRequest()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/Display;->getType()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    const/4 v0, 0x1

    .line 30
    if-ne p0, v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0
.end method

.method public final onCameraClosed(Ljava/lang/String;)Z
    .locals 12

    .line 1
    invoke-static {}, Lcom/android/window/flags/Flags;->cameraCompatFullscreenPickSameTaskActivity()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_0
    iput-object v1, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    return v3

    .line 32
    :cond_2
    monitor-enter p0

    .line 33
    :try_start_0
    invoke-virtual {p0, v3, v0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForActivity(ZLcom/android/server/wm/ActivityRecord;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Lcom/android/server/wm/CameraStateMonitor;->getCameraIdForActivity(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_3

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget-object p1, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 60
    .line 61
    iget-object p1, p1, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/android/server/wm/AppCompatCameraOverrides;->mAppCompatCameraOverridesState:Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;

    .line 64
    .line 65
    iget-boolean p1, p1, Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;->mIsRefreshRequested:Z

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    :goto_1
    move p1, v2

    .line 69
    :goto_2
    if-eqz p1, :cond_6

    .line 70
    .line 71
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 72
    .line 73
    aget-boolean p1, p1, v3

    .line 74
    .line 75
    if-eqz p1, :cond_5

    .line 76
    .line 77
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 78
    .line 79
    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 80
    .line 81
    int-to-long v0, p1

    .line 82
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 83
    .line 84
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    const/4 v6, 0x1

    .line 93
    const/4 v7, 0x0

    .line 94
    const-wide v4, -0x471416ad2fffcf8bL    # -1.6798574785979571E-34

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :catchall_0
    move-exception p1

    .line 104
    goto :goto_4

    .line 105
    :cond_5
    :goto_3
    monitor-exit p0

    .line 106
    return v2

    .line 107
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 109
    .line 110
    aget-boolean p1, p1, v3

    .line 111
    .line 112
    if-eqz p1, :cond_7

    .line 113
    .line 114
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 115
    .line 116
    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 117
    .line 118
    int-to-long v4, p1

    .line 119
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 120
    .line 121
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    const/4 v9, 0x1

    .line 130
    const/4 v10, 0x0

    .line 131
    const-wide v7, 0x188f6cf132e4334dL    # 2.204122436059243E-190

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-eq p1, v3, :cond_8

    .line 144
    .line 145
    return v3

    .line 146
    :cond_8
    iget-object p1, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 147
    .line 148
    iget-object p1, p1, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 149
    .line 150
    iget-object p1, p1, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    .line 151
    .line 152
    iget-object v1, p1, Lcom/android/server/wm/AppCompatCameraOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 153
    .line 154
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 155
    .line 156
    const-wide/32 v4, 0xfd28b98

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v4, v5}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-nez v1, :cond_9

    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatCameraOverrides;->isCameraCompatSplitScreenAspectRatioAllowed()Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-nez v1, :cond_9

    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldOverrideMinAspectRatioForCamera()Z

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-eqz p1, :cond_a

    .line 176
    .line 177
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    .line 178
    .line 179
    .line 180
    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 181
    .line 182
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Z)Z

    .line 183
    .line 184
    .line 185
    return v3

    .line 186
    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    throw p1
.end method

.method public final onCameraOpened(Lcom/android/server/wm/ActivityRecord;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-ne v0, v1, :cond_2

    .line 12
    .line 13
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/android/server/wm/AppCompatCameraOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 22
    .line 23
    const-wide/32 v3, 0xfd28b98

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraOverrides;->isCameraCompatSplitScreenAspectRatioAllowed()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldOverrideMinAspectRatioForCamera()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 48
    .line 49
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Z)Z

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/4 v1, 0x6

    .line 62
    if-ne v0, v1, :cond_3

    .line 63
    .line 64
    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForActivity(ZLcom/android/server/wm/ActivityRecord;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    :try_start_0
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Ljava/lang/String;

    .line 89
    .line 90
    const v1, 0x104048c

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->showToast(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catch_0
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 98
    .line 99
    const/4 v0, 0x4

    .line 100
    aget-boolean p0, p0, v0

    .line 101
    .line 102
    if-eqz p0, :cond_3

    .line 103
    .line 104
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 111
    .line 112
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    const-wide v1, -0x154ca637dcf0c023L    # -9.7071995644044E205

    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    const/4 v3, 0x0

    .line 122
    const/4 v4, 0x0

    .line 123
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_3
    :goto_0
    return-void
.end method

.method public final shouldRefreshActivity(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 4

    .line 1
    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    iget-object p3, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 8
    .line 9
    invoke-virtual {p3}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    const/4 v0, 0x0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eq p2, p3, :cond_0

    .line 16
    .line 17
    move p2, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p2, v0

    .line 20
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForDisplay()Z

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    if-eqz p3, :cond_3

    .line 25
    .line 26
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForActivity(ZLcom/android/server/wm/ActivityRecord;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_3

    .line 31
    .line 32
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    .line 37
    .line 38
    iget-object p3, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 39
    .line 40
    iget-object p3, p3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 41
    .line 42
    const-wide/32 v2, 0xfc0f74b

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mCameraCompatAllowRefreshOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mCondition:Ljava/util/function/BooleanSupplier;

    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->getValue()I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-eqz p0, :cond_3

    .line 65
    .line 66
    if-nez p3, :cond_3

    .line 67
    .line 68
    if-nez p2, :cond_2

    .line 69
    .line 70
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraOverrides;->isCameraCompatSplitScreenAspectRatioAllowed()Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-eqz p0, :cond_3

    .line 81
    .line 82
    :cond_2
    move v0, v1

    .line 83
    :cond_3
    :goto_1
    return v0
.end method

.method public showToast(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/DisplayRotationCompatPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/DisplayRotationCompatPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayRotationCompatPolicy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showToast(ILjava/lang/String;)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/DisplayRotationCompatPolicy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/DisplayRotationCompatPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayRotationCompatPolicy;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
