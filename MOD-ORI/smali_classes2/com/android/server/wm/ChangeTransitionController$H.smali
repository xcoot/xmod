.class public final Lcom/android/server/wm/ChangeTransitionController$H;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ChangeTransitionController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ChangeTransitionController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/ChangeTransitionController$H;->this$0:Lcom/android/server/wm/ChangeTransitionController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    const-string v0, "SYNC_ACTIVITY_TIMEOUT!! "

    .line 2
    .line 3
    const-string v1, "SYNC_ACTIVITY_TIMEOUT_FOR_TRAMPOLINE!! "

    .line 4
    .line 5
    iget p1, p1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq p1, v2, :cond_3

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/ChangeTransitionController$H;->this$0:Lcom/android/server/wm/ChangeTransitionController;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/android/server/wm/ChangeTransitionController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 18
    .line 19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 20
    .line 21
    .line 22
    monitor-enter p1

    .line 23
    :try_start_0
    const-string v0, "ChangeTransitionController"

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/wm/ChangeTransitionController$H;->this$0:Lcom/android/server/wm/ChangeTransitionController;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredTrampolineApps:Landroid/util/ArraySet;

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController$H;->this$0:Lcom/android/server/wm/ChangeTransitionController;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredTrampolineApps:Landroid/util/ArraySet;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 63
    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 67
    .line 68
    if-eqz v2, :cond_1

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    iput-boolean v3, v1, Lcom/android/server/wm/ActivityRecord;->mIsAiKeyAppTarget:Z

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAiKeyAppLaunch(Z)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController$H;->this$0:Lcom/android/server/wm/ChangeTransitionController;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredTrampolineApps:Landroid/util/ArraySet;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController$H;->this$0:Lcom/android/server/wm/ChangeTransitionController;

    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 91
    .line 92
    .line 93
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 100
    .line 101
    .line 102
    throw p0

    .line 103
    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/ChangeTransitionController$H;->this$0:Lcom/android/server/wm/ChangeTransitionController;

    .line 104
    .line 105
    iget-object p1, p1, Lcom/android/server/wm/ChangeTransitionController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 106
    .line 107
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 108
    .line 109
    .line 110
    monitor-enter p1

    .line 111
    :try_start_2
    const-string v1, "ChangeTransitionController"

    .line 112
    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController$H;->this$0:Lcom/android/server/wm/ChangeTransitionController;

    .line 119
    .line 120
    iget-object v0, v0, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredAllDrawnApps:Landroid/util/ArraySet;

    .line 121
    .line 122
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController$H;->this$0:Lcom/android/server/wm/ChangeTransitionController;

    .line 133
    .line 134
    iget-object v0, v0, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredAllDrawnApps:Landroid/util/ArraySet;

    .line 135
    .line 136
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 137
    .line 138
    .line 139
    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController$H;->this$0:Lcom/android/server/wm/ChangeTransitionController;

    .line 140
    .line 141
    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 144
    .line 145
    .line 146
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 147
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 148
    .line 149
    .line 150
    :goto_2
    return-void

    .line 151
    :catchall_1
    move-exception p0

    .line 152
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 153
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 154
    .line 155
    .line 156
    throw p0
.end method
