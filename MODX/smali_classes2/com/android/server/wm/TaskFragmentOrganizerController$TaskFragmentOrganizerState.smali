.class public final Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mAppThread:Landroid/app/IApplicationThread;

.field public final mDeferredTransitions:Landroid/util/ArrayMap;

.field public final mInFlightTransactions:Landroid/util/ArrayMap;

.field public final mIsSystemOrganizer:Z

.field public final mLastSentTaskFragmentInfos:Ljava/util/Map;

.field public final mLastSentTaskFragmentParentInfos:Landroid/util/SparseArray;

.field public final mOrganizedTaskFragments:Ljava/util/ArrayList;

.field public final mOrganizer:Landroid/window/ITaskFragmentOrganizer;

.field public final mOrganizerPid:I

.field public final mOrganizerUid:I

.field public mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

.field public final mTaskFragmentTaskIds:Ljava/util/Map;

.field public final mTemporaryActivityTokens:Ljava/util/Map;

.field public final synthetic this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskFragmentOrganizerController;Landroid/window/ITaskFragmentOrganizer;IIZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance v0, Ljava/util/WeakHashMap;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentInfos:Ljava/util/Map;

    .line 19
    .line 20
    new-instance v0, Ljava/util/WeakHashMap;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mTaskFragmentTaskIds:Ljava/util/Map;

    .line 26
    .line 27
    new-instance v0, Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentParentInfos:Landroid/util/SparseArray;

    .line 33
    .line 34
    new-instance v0, Ljava/util/WeakHashMap;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mTemporaryActivityTokens:Ljava/util/Map;

    .line 40
    .line 41
    new-instance v0, Landroid/util/ArrayMap;

    .line 42
    .line 43
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mDeferredTransitions:Landroid/util/ArrayMap;

    .line 47
    .line 48
    new-instance v0, Landroid/util/ArrayMap;

    .line 49
    .line 50
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mInFlightTransactions:Landroid/util/ArrayMap;

    .line 54
    .line 55
    invoke-static {}, Lcom/android/window/flags/Flags;->bundleClientTransactionFlag()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    invoke-virtual {p1, p3, p4}, Lcom/android/server/wm/TaskFragmentOrganizerController;->getAppThread(II)Landroid/app/IApplicationThread;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mAppThread:Landroid/app/IApplicationThread;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mAppThread:Landroid/app/IApplicationThread;

    .line 70
    .line 71
    :goto_0
    iput-object p2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 72
    .line 73
    iput p3, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizerPid:I

    .line 74
    .line 75
    iput p4, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizerUid:I

    .line 76
    .line 77
    iput-boolean p5, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mIsSystemOrganizer:Z

    .line 78
    .line 79
    :try_start_0
    invoke-interface {p2}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const/4 p2, 0x0

    .line 84
    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :catch_0
    const-string p0, "TaskFragmentOrganizerController"

    .line 89
    .line 90
    const-string p1, "TaskFragmentOrganizer failed to register death recipient"

    .line 91
    .line 92
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    :goto_1
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 12
    .line 13
    const-string v2, "client died"

    .line 14
    .line 15
    invoke-virtual {v1, p0, v2}, Lcom/android/server/wm/TaskFragmentOrganizerController;->removeOrganizer(Landroid/window/ITaskFragmentOrganizer;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 26
    .line 27
    .line 28
    throw p0
.end method

.method public final dispatchTransaction(Landroid/window/TaskFragmentTransaction;)V
    .locals 12

    .line 1
    const-string v0, "TaskFragmentOrganizerController"

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/window/TaskFragmentTransaction;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/window/flags/Flags;->bundleClientTransactionFlag()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mAppThread:Landroid/app/IApplicationThread;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 19
    .line 20
    invoke-interface {v1, v2, p1}, Landroid/app/IApplicationThread;->scheduleTaskFragmentTransaction(Landroid/window/ITaskFragmentOrganizer;Landroid/window/TaskFragmentTransaction;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    goto/16 :goto_1

    .line 26
    .line 27
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 28
    .line 29
    invoke-interface {v1, p1}, Landroid/window/ITaskFragmentOrganizer;->onTransactionReady(Landroid/window/TaskFragmentTransaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/android/server/wm/TaskFragmentOrganizerController;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    const/4 v3, -0x1

    .line 49
    if-eqz v1, :cond_6

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/window/TaskFragmentTransaction;->getChanges()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_6

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Landroid/window/TaskFragmentTransaction$Change;

    .line 70
    .line 71
    invoke-virtual {v4}, Landroid/window/TaskFragmentTransaction$Change;->getTaskId()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eq v5, v3, :cond_3

    .line 76
    .line 77
    iget-object v5, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 78
    .line 79
    iget-object v5, v5, Lcom/android/server/wm/TaskFragmentOrganizerController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 80
    .line 81
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 82
    .line 83
    invoke-virtual {v4}, Landroid/window/TaskFragmentTransaction$Change;->getTaskId()I

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    const/4 v7, 0x0

    .line 88
    const/4 v8, 0x0

    .line 89
    invoke-virtual {v5, v6, v7, v8, v7}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    if-nez v5, :cond_4

    .line 94
    .line 95
    return-void

    .line 96
    :cond_4
    invoke-virtual {v4}, Landroid/window/TaskFragmentTransaction$Change;->getType()I

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    const/4 v7, 0x4

    .line 101
    if-ne v6, v7, :cond_5

    .line 102
    .line 103
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-nez v6, :cond_5

    .line 108
    .line 109
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-eqz v6, :cond_5

    .line 114
    .line 115
    iget-object v6, v5, Lcom/android/server/wm/Task;->mSharedStartingData:Lcom/android/server/wm/StartingData;

    .line 116
    .line 117
    if-eqz v6, :cond_5

    .line 118
    .line 119
    return-void

    .line 120
    :cond_5
    invoke-virtual {v4}, Landroid/window/TaskFragmentTransaction$Change;->getType()I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    const/4 v6, 0x2

    .line 125
    if-ne v4, v6, :cond_3

    .line 126
    .line 127
    iget-object v4, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 128
    .line 129
    iget-object v4, v4, Lcom/android/server/wm/TaskFragmentOrganizerController;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 130
    .line 131
    iget-object v4, v4, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 132
    .line 133
    invoke-virtual {v4}, Lcom/android/server/wm/TransitionController;->getCollectingTransitionType()I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-ne v4, v2, :cond_3

    .line 138
    .line 139
    iget-object v4, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 140
    .line 141
    iget-object v4, v4, Lcom/android/server/wm/TaskFragmentOrganizerController;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 142
    .line 143
    iget-object v4, v4, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 144
    .line 145
    invoke-virtual {v4, v5}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-nez v4, :cond_3

    .line 150
    .line 151
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-nez v4, :cond_3

    .line 156
    .line 157
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-nez v4, :cond_3

    .line 162
    .line 163
    return-void

    .line 164
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 165
    .line 166
    iget-object v1, v1, Lcom/android/server/wm/TaskFragmentOrganizerController;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 167
    .line 168
    iget-object v1, v1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 169
    .line 170
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->getCollectingTransitionId()I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 175
    .line 176
    aget-boolean v2, v4, v2

    .line 177
    .line 178
    if-eqz v2, :cond_7

    .line 179
    .line 180
    int-to-long v4, v1

    .line 181
    invoke-virtual {p1}, Landroid/window/TaskFragmentTransaction;->getTransactionToken()Landroid/os/IBinder;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 190
    .line 191
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    filled-new-array {v4, v2}, [Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v11

    .line 199
    const/4 v9, 0x1

    .line 200
    const/4 v10, 0x0

    .line 201
    const-wide v7, 0x61d303197f3630dbL    # 1.710676681087236E163

    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    :cond_7
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_DEBUG_LOG:Z

    .line 210
    .line 211
    if-eqz v2, :cond_a

    .line 212
    .line 213
    invoke-virtual {p1}, Landroid/window/TaskFragmentTransaction;->getChanges()Ljava/util/List;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    if-eqz v4, :cond_9

    .line 226
    .line 227
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    check-cast v4, Landroid/window/TaskFragmentTransaction$Change;

    .line 232
    .line 233
    invoke-virtual {v4}, Landroid/window/TaskFragmentTransaction$Change;->getTaskId()I

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    if-eq v5, v3, :cond_8

    .line 238
    .line 239
    invoke-virtual {v4}, Landroid/window/TaskFragmentTransaction$Change;->getTaskId()I

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    :cond_9
    const-string v2, "Defer transition id="

    .line 244
    .line 245
    const-string v4, " for TaskFragmentTransaction="

    .line 246
    .line 247
    invoke-static {v1, v2, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-virtual {p1}, Landroid/window/TaskFragmentTransaction;->getTransactionToken()Landroid/os/IBinder;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v4, ", taskId="

    .line 259
    .line 260
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mDeferredTransitions:Landroid/util/ArrayMap;

    .line 274
    .line 275
    invoke-virtual {p1}, Landroid/window/TaskFragmentTransaction;->getTransactionToken()Landroid/os/IBinder;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 287
    .line 288
    iget-object v0, v0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 289
    .line 290
    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 291
    .line 292
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->deferTransitionReady()V

    .line 293
    .line 294
    .line 295
    new-instance v0, Lcom/android/server/wm/Transition$ReadyCondition;

    .line 296
    .line 297
    const-string/jumbo v1, "task-fragment transaction"

    .line 298
    .line 299
    .line 300
    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/Transition$ReadyCondition;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 304
    .line 305
    iget-object v1, v1, Lcom/android/server/wm/TaskFragmentOrganizerController;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 306
    .line 307
    iget-object v1, v1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 308
    .line 309
    invoke-virtual {v1, v0}, Lcom/android/server/wm/TransitionController;->waitFor(Lcom/android/server/wm/Transition$ReadyCondition;)V

    .line 310
    .line 311
    .line 312
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mInFlightTransactions:Landroid/util/ArrayMap;

    .line 313
    .line 314
    invoke-virtual {p1}, Landroid/window/TaskFragmentTransaction;->getTransactionToken()Landroid/os/IBinder;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    return-void

    .line 322
    :goto_1
    const-string p1, "Exception sending TaskFragmentTransaction"

    .line 323
    .line 324
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    .line 326
    .line 327
    return-void
.end method

.method public final onTransactionFinished(Landroid/os/IBinder;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mDeferredTransitions:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mDeferredTransitions:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/android/server/wm/TaskFragmentOrganizerController;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const-string v2, "TaskFragmentOrganizerController"

    .line 33
    .line 34
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 35
    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/android/server/wm/TaskFragmentOrganizerController;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->getCollectingTransitionId()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eq v1, v0, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 v1, 0x1

    .line 52
    aget-boolean v1, v3, v1

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    int-to-long v3, v0

    .line 57
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 62
    .line 63
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    filled-new-array {v3, v1}, [Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    const-wide v6, 0x66fe8a39f50336d5L    # 1.3288182639183968E188

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    const/4 v8, 0x1

    .line 77
    const/4 v9, 0x0

    .line 78
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_DEBUG_LOG:Z

    .line 82
    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v3, "Continue transition id="

    .line 88
    .line 89
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v0, " for TaskFragmentTransaction="

    .line 96
    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 113
    .line 114
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->continueTransitionReady()V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_4
    :goto_0
    const/4 p0, 0x3

    .line 121
    aget-boolean p0, v3, p0

    .line 122
    .line 123
    if-eqz p0, :cond_5

    .line 124
    .line 125
    int-to-long v3, v0

    .line 126
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 131
    .line 132
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    const-wide v6, -0x1241a13df20ec076L    # -4.2882861697006143E220

    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    const/4 v8, 0x1

    .line 146
    const/4 v9, 0x0

    .line 147
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    :cond_5
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_DEBUG_LOG:Z

    .line 151
    .line 152
    if-eqz p0, :cond_6

    .line 153
    .line 154
    new-instance p0, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string v1, "Deferred transition id="

    .line 157
    .line 158
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v0, " has been continued before the TaskFragmentTransaction="

    .line 165
    .line 166
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    :cond_6
    return-void
.end method
