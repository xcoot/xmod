.class public final synthetic Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AsyncRotationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AsyncRotationController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/AsyncRotationController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/AsyncRotationController;

    .line 2
    .line 3
    const-string v0, "Async rotation timeout: "

    .line 4
    .line 5
    const-string/jumbo v1, "unfinished windows "

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 11
    .line 12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 13
    .line 14
    .line 15
    monitor-enter v2

    .line 16
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    .line 17
    .line 18
    if-nez v3, :cond_1

    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionPrepared:Z

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    const-string/jumbo v1, "setupStartTransaction is not called"

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_2

    .line 30
    :cond_0
    const-string/jumbo v1, "start transaction is not committed"

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 40
    .line 41
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :goto_0
    const-string v3, "AsyncRotation_WindowManager"

    .line 49
    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    .line 66
    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionPrepared:Z

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotationIfPossible()V

    .line 81
    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 86
    .line 87
    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V

    .line 89
    .line 90
    .line 91
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 93
    .line 94
    .line 95
    :goto_1
    return-void

    .line 96
    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 98
    .line 99
    .line 100
    throw p0
.end method
