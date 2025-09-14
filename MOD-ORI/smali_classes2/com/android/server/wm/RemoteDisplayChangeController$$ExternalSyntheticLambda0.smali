.class public final synthetic Lcom/android/server/wm/RemoteDisplayChangeController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RemoteDisplayChangeController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RemoteDisplayChangeController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/RemoteDisplayChangeController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/RemoteDisplayChangeController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/RemoteDisplayChangeController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/RemoteDisplayChangeController;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "RemoteDisplayChangeController"

    .line 7
    .line 8
    const-string v1, "RemoteDisplayChange timed-out, UI might get messed-up after this."

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/wm/RemoteDisplayChangeController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 16
    .line 17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 18
    .line 19
    .line 20
    monitor-enter v0

    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/RemoteDisplayChangeController;->mCallbacks:Ljava/util/List;

    .line 23
    .line 24
    check-cast v2, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-ge v1, v2, :cond_2

    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/server/wm/RemoteDisplayChangeController;->mCallbacks:Ljava/util/List;

    .line 33
    .line 34
    check-cast v2, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;

    .line 41
    .line 42
    iget-object v3, p0, Lcom/android/server/wm/RemoteDisplayChangeController;->mCallbacks:Ljava/util/List;

    .line 43
    .line 44
    check-cast v3, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    add-int/lit8 v3, v3, -0x1

    .line 51
    .line 52
    if-ne v1, v3, :cond_0

    .line 53
    .line 54
    iget-object v3, p0, Lcom/android/server/wm/RemoteDisplayChangeController;->mCallbacks:Ljava/util/List;

    .line 55
    .line 56
    check-cast v3, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_2

    .line 64
    :cond_0
    :goto_1
    const/4 v3, 0x0

    .line 65
    invoke-interface {v2, v3}, Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;->onContinueRemoteDisplayChange(Landroid/window/WindowContainerTransaction;)V

    .line 66
    .line 67
    .line 68
    const-wide/16 v3, 0x20

    .line 69
    .line 70
    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_1

    .line 75
    .line 76
    const-string v3, "RemoteDisplayChange"

    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-static {v3, v2}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/RemoteDisplayChangeController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 89
    .line 90
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 91
    .line 92
    if-eqz v1, :cond_3

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()Z

    .line 95
    .line 96
    .line 97
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 104
    .line 105
    .line 106
    throw p0
.end method
