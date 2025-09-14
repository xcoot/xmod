.class public final Lcom/android/server/wm/TransitionController$RemotePlayer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mDelegateProcesses:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    sub-int/2addr v1, v2

    .line 12
    :goto_0
    if-ltz v1, :cond_0

    .line 13
    .line 14
    iget-object v3, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;

    .line 21
    .line 22
    iget-object v3, v3, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;->mProc:Lcom/android/server/wm/WindowProcessController;

    .line 23
    .line 24
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowProcessController;->removeAnimatingReason(I)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v1, v1, -0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 35
    .line 36
    .line 37
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method public final update(Lcom/android/server/wm/WindowProcessController;ZZ)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p2, :cond_2

    .line 3
    .line 4
    iget-object p2, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    .line 5
    .line 6
    monitor-enter p2

    .line 7
    :try_start_0
    iget-object p3, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    sub-int/2addr p3, v0

    .line 14
    :goto_0
    if-ltz p3, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;->mProc:Lcom/android/server/wm/WindowProcessController;

    .line 25
    .line 26
    if-ne v1, p1, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowProcessController;->removeAnimatingReason(I)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    add-int/lit8 p3, p3, -0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    :try_start_1
    monitor-exit p2

    .line 44
    return-void

    .line 45
    :goto_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw p0

    .line 47
    :cond_2
    iget p2, p1, Lcom/android/server/wm/WindowProcessController;->mAnimatingReasons:I

    .line 48
    .line 49
    and-int/2addr p2, v0

    .line 50
    if-eqz p2, :cond_3

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-nez p2, :cond_4

    .line 58
    .line 59
    :goto_2
    return-void

    .line 60
    :cond_4
    iget p2, p1, Lcom/android/server/wm/WindowProcessController;->mAnimatingReasons:I

    .line 61
    .line 62
    or-int/lit8 v1, p2, 0x1

    .line 63
    .line 64
    iput v1, p1, Lcom/android/server/wm/WindowProcessController;->mAnimatingReasons:I

    .line 65
    .line 66
    if-nez p2, :cond_5

    .line 67
    .line 68
    iget-object p2, p1, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 69
    .line 70
    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 71
    .line 72
    new-instance v1, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda1;

    .line 73
    .line 74
    invoke-direct {v1, p1, v0}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowProcessController;Z)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    .line 79
    .line 80
    :cond_5
    new-instance p2, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;

    .line 81
    .line 82
    invoke-direct {p2, p0, p1}, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;-><init>(Lcom/android/server/wm/TransitionController$RemotePlayer;Lcom/android/server/wm/WindowProcessController;)V

    .line 83
    .line 84
    .line 85
    if-eqz p3, :cond_6

    .line 86
    .line 87
    iput-boolean v0, p2, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;->mNeedReport:Z

    .line 88
    .line 89
    iget-object p3, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 90
    .line 91
    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 92
    .line 93
    const-wide/16 v0, 0xc8

    .line 94
    .line 95
    invoke-virtual {p3, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    .line 97
    .line 98
    :cond_6
    iget-object p3, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    .line 99
    .line 100
    monitor-enter p3

    .line 101
    :try_start_2
    iget-object p0, p0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mDelegateProcesses:Landroid/util/ArrayMap;

    .line 102
    .line 103
    iget-object p1, p1, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 104
    .line 105
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    monitor-exit p3

    .line 113
    return-void

    .line 114
    :catchall_1
    move-exception p0

    .line 115
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 116
    throw p0
.end method
