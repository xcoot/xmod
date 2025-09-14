.class public final Lcom/android/server/wm/CoverPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

.field public mCoverManager:Lcom/samsung/android/cover/ICoverManager;

.field public mCoverWindow:Lcom/android/server/wm/WindowState;

.field public mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mDisplayPolicyExt:Lcom/android/server/wm/DisplayPolicyExt;

.field public mHandler:Lcom/android/server/wm/CoverPolicy$CoverPolicyHandler;

.field public mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

.field public mLastClearCoverState:Z

.field public mLastCoverAppCovered:Z

.field public mViewCoverDisplay:Lcom/android/server/wm/DisplayContent;

.field public mWallpaperTargetMayChange:Z

.field public mWindowPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field public mWmService:Lcom/android/server/wm/WindowManagerService;


# virtual methods
.method public final declared-synchronized getCoverManager()Lcom/samsung/android/cover/ICoverManager;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "cover"

    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const-string v0, "CoverPolicy"

    .line 21
    .line 22
    const-string/jumbo v1, "warning: no COVER_MANAGER_SERVICE"

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-object v0

    .line 35
    :goto_1
    monitor-exit p0

    .line 36
    throw v0
.end method

.method public shouldApplyAodPolicy()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/CoverPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 4
    .line 5
    return p0
.end method

.method public final updateCoverStateLocked(Lcom/samsung/android/cover/CoverState;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 6
    .line 7
    xor-int/lit8 v2, v1, 0x1

    .line 8
    .line 9
    iget v3, p1, Lcom/samsung/android/cover/CoverState;->type:I

    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    if-ne v3, v4, :cond_0

    .line 13
    .line 14
    iget-boolean v3, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 15
    .line 16
    if-eq v3, v1, :cond_1

    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/cover/CoverState;->copyFrom(Lcom/samsung/android/cover/CoverState;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget p1, v0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    packed-switch p1, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_0
    iget-boolean p1, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 29
    .line 30
    xor-int/2addr p1, v1

    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mDisableHideSViewOnce:Z

    .line 38
    .line 39
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/wm/CoverPolicy;->mViewCoverDisplay:Lcom/android/server/wm/DisplayContent;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/android/server/wm/CoverPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    if-nez p1, :cond_3

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_3
    iget-object p1, v3, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 48
    .line 49
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    iget-boolean v5, v5, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 54
    .line 55
    xor-int/2addr v5, v1

    .line 56
    if-eqz v5, :cond_4

    .line 57
    .line 58
    const/4 v5, 0x4

    .line 59
    goto :goto_1

    .line 60
    :cond_4
    move v5, v4

    .line 61
    :goto_1
    invoke-virtual {p1, v5}, Lcom/android/server/wm/WindowManagerServiceExt;->moveDisplayToTop(I)V

    .line 62
    .line 63
    .line 64
    :goto_2
    if-nez v2, :cond_5

    .line 65
    .line 66
    iget-boolean p1, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 67
    .line 68
    xor-int/2addr p1, v1

    .line 69
    if-eqz p1, :cond_5

    .line 70
    .line 71
    iget-object p1, v3, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 72
    .line 73
    invoke-virtual {p1, v4}, Lcom/android/server/wm/TaskSnapshotController;->snapshotForSleeping(I)V

    .line 74
    .line 75
    .line 76
    :cond_5
    iget-object p1, p0, Lcom/android/server/wm/CoverPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 77
    .line 78
    invoke-virtual {p1, v4}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Z)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_6

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()Z

    .line 85
    .line 86
    .line 87
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 88
    .line 89
    .line 90
    iget-object p1, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 91
    .line 92
    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/android/server/wm/CoverPolicy;->mHandler:Lcom/android/server/wm/CoverPolicy$CoverPolicyHandler;

    .line 96
    .line 97
    new-instance v0, Lcom/android/server/wm/CoverPolicy$$ExternalSyntheticLambda0;

    .line 98
    .line 99
    invoke-direct {v0, p0}, Lcom/android/server/wm/CoverPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/CoverPolicy;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
