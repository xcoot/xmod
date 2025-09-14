.class public final Lcom/android/server/wm/RemoteDisplayChangeController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallbacks:Ljava/util/List;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTimeoutRunnable:Lcom/android/server/wm/RemoteDisplayChangeController$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/wm/RemoteDisplayChangeController$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/wm/RemoteDisplayChangeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/RemoteDisplayChangeController;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/RemoteDisplayChangeController;->mTimeoutRunnable:Lcom/android/server/wm/RemoteDisplayChangeController$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/RemoteDisplayChangeController;->mCallbacks:Ljava/util/List;

    .line 17
    .line 18
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/wm/RemoteDisplayChangeController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/server/wm/RemoteDisplayChangeController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public continueDisplayChange(Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;Landroid/window/WindowContainerTransaction;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RemoteDisplayChangeController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/RemoteDisplayChangeController;->mCallbacks:Ljava/util/List;

    .line 10
    .line 11
    check-cast v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-gez v1, :cond_0

    .line 18
    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const/4 v2, 0x0

    .line 27
    move v3, v2

    .line 28
    :goto_0
    const-wide/16 v4, 0x20

    .line 29
    .line 30
    if-ge v3, v1, :cond_2

    .line 31
    .line 32
    :try_start_1
    iget-object v6, p0, Lcom/android/server/wm/RemoteDisplayChangeController;->mCallbacks:Ljava/util/List;

    .line 33
    .line 34
    check-cast v6, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    check-cast v6, Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    invoke-interface {v6, v7}, Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;->onContinueRemoteDisplayChange(Landroid/window/WindowContainerTransaction;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    const-string v4, "RemoteDisplayChange"

    .line 53
    .line 54
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    invoke-static {v4, v5}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/RemoteDisplayChangeController;->mCallbacks:Ljava/util/List;

    .line 65
    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    check-cast v3, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v3, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/android/server/wm/RemoteDisplayChangeController;->mCallbacks:Ljava/util/List;

    .line 78
    .line 79
    check-cast v1, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    iget-object v2, p0, Lcom/android/server/wm/RemoteDisplayChangeController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 88
    .line 89
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 90
    .line 91
    iget-object v3, p0, Lcom/android/server/wm/RemoteDisplayChangeController;->mTimeoutRunnable:Lcom/android/server/wm/RemoteDisplayChangeController$$ExternalSyntheticLambda0;

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    invoke-interface {p1, p2}, Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;->onContinueRemoteDisplayChange(Landroid/window/WindowContainerTransaction;)V

    .line 97
    .line 98
    .line 99
    if-eqz v1, :cond_4

    .line 100
    .line 101
    iget-object p0, p0, Lcom/android/server/wm/RemoteDisplayChangeController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 102
    .line 103
    iget-boolean p2, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 104
    .line 105
    if-eqz p2, :cond_4

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()Z

    .line 108
    .line 109
    .line 110
    :cond_4
    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    if-eqz p0, :cond_5

    .line 115
    .line 116
    const-string p0, "RemoteDisplayChange"

    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    invoke-static {p0, p1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 123
    .line 124
    .line 125
    :cond_5
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 132
    .line 133
    .line 134
    throw p0
.end method

.method public final isWaitingForRemoteDisplayChange()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/RemoteDisplayChangeController;->mCallbacks:Ljava/util/List;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    xor-int/lit8 p0, p0, 0x1

    .line 10
    .line 11
    return p0
.end method

.method public final performRemoteDisplayChange(IILandroid/window/DisplayAreaInfo;Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;)Z
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    move-object/from16 v8, p4

    .line 6
    .line 7
    iget-object v2, v1, Lcom/android/server/wm/RemoteDisplayChangeController;->mTimeoutRunnable:Lcom/android/server/wm/RemoteDisplayChangeController$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    iget-object v3, v1, Lcom/android/server/wm/RemoteDisplayChangeController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayChangeController:Landroid/view/IDisplayChangeWindowController;

    .line 12
    .line 13
    const/4 v9, 0x0

    .line 14
    if-nez v4, :cond_0

    .line 15
    .line 16
    return v9

    .line 17
    :cond_0
    iget-object v4, v1, Lcom/android/server/wm/RemoteDisplayChangeController;->mCallbacks:Ljava/util/List;

    .line 18
    .line 19
    check-cast v4, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    const-wide/16 v4, 0x20

    .line 25
    .line 26
    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    const-string v4, "RemoteDisplayChange"

    .line 33
    .line 34
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    invoke-static {v4, v5}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    :cond_1
    const/4 v10, 0x1

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    .line 45
    .line 46
    aget-boolean v4, v4, v10

    .line 47
    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    move/from16 v4, p1

    .line 51
    .line 52
    int-to-long v5, v4

    .line 53
    iget-object v7, v0, Landroid/window/DisplayAreaInfo;->configuration:Landroid/content/res/Configuration;

    .line 54
    .line 55
    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 56
    .line 57
    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    int-to-long v11, v7

    .line 66
    iget-object v7, v0, Landroid/window/DisplayAreaInfo;->configuration:Landroid/content/res/Configuration;

    .line 67
    .line 68
    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 69
    .line 70
    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    int-to-long v13, v7

    .line 79
    move/from16 v7, p2

    .line 80
    .line 81
    int-to-long v9, v7

    .line 82
    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 83
    .line 84
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 93
    .line 94
    .line 95
    move-result-object v11

    .line 96
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    filled-new-array {v5, v6, v11, v9}, [Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v20

    .line 104
    const/16 v18, 0x55

    .line 105
    .line 106
    const/16 v19, 0x0

    .line 107
    .line 108
    const-wide v16, 0x1817cfb686c531ceL

    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    invoke-static/range {v15 .. v20}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_2
    move/from16 v4, p1

    .line 118
    .line 119
    move/from16 v7, p2

    .line 120
    .line 121
    :goto_0
    new-instance v9, Lcom/android/server/wm/RemoteDisplayChangeController$1;

    .line 122
    .line 123
    invoke-direct {v9, v1, v8}, Lcom/android/server/wm/RemoteDisplayChangeController$1;-><init>(Lcom/android/server/wm/RemoteDisplayChangeController;Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;)V

    .line 124
    .line 125
    .line 126
    :try_start_0
    iget-object v5, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 127
    .line 128
    invoke-virtual {v5, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 129
    .line 130
    .line 131
    iget-object v5, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 132
    .line 133
    const-wide/16 v10, 0x320

    .line 134
    .line 135
    invoke-virtual {v5, v2, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    .line 137
    .line 138
    iget-object v2, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayChangeController:Landroid/view/IDisplayChangeWindowController;

    .line 139
    .line 140
    iget-object v3, v1, Lcom/android/server/wm/RemoteDisplayChangeController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 141
    .line 142
    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 143
    .line 144
    move/from16 v4, p1

    .line 145
    .line 146
    move/from16 v5, p2

    .line 147
    .line 148
    move-object/from16 v6, p3

    .line 149
    .line 150
    move-object v7, v9

    .line 151
    invoke-interface/range {v2 .. v7}, Landroid/view/IDisplayChangeWindowController;->onDisplayChange(IIILandroid/window/DisplayAreaInfo;Landroid/view/IDisplayChangeWindowCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .line 153
    .line 154
    const/4 v0, 0x1

    .line 155
    return v0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    const-string v2, "RemoteDisplayChangeController"

    .line 158
    .line 159
    const-string v3, "Exception while dispatching remote display-change"

    .line 160
    .line 161
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    .line 163
    .line 164
    iget-object v0, v1, Lcom/android/server/wm/RemoteDisplayChangeController;->mCallbacks:Ljava/util/List;

    .line 165
    .line 166
    check-cast v0, Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    const/4 v1, 0x0

    .line 172
    return v1
.end method
