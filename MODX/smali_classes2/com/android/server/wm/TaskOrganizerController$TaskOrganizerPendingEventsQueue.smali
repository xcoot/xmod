.class public final Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLastSentTaskInfos:Ljava/util/WeakHashMap;

.field public final mOrganizerState:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

.field public final mPendingTaskEvents:Ljava/util/ArrayList;

.field public mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public static -$$Nest$mgetPendingTaskEvent(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;Lcom/android/server/wm/Task;I)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    .line 18
    .line 19
    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 20
    .line 21
    iget-object v3, v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTask:Lcom/android/server/wm/Task;

    .line 22
    .line 23
    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    .line 24
    .line 25
    if-ne v2, v3, :cond_0

    .line 26
    .line 27
    iget v2, v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mEventType:I

    .line 28
    .line 29
    if-ne p2, v2, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v1, 0x0

    .line 36
    :goto_1
    return-object v1
.end method

.method public constructor <init>(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mLastSentTaskInfos:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mOrganizerState:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mLastSentTaskInfos:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 21
    .line 22
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/content/res/Configuration;->unset()V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;Z)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroid/app/ActivityManager$RunningTaskInfo;->equalsForTaskOrganizer(Landroid/app/TaskInfo;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 42
    .line 43
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 44
    .line 45
    iget-object v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 46
    .line 47
    invoke-static {v1, v3}, Lcom/android/server/wm/WindowOrganizerController;->configurationsAreEqualForOrganizer(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    if-nez p2, :cond_2

    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isLeafTask()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    if-ne v1, p1, :cond_3

    .line 86
    .line 87
    iput-boolean v2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->isTopTaskInStage:Z

    .line 88
    .line 89
    :cond_3
    if-eqz v0, :cond_5

    .line 90
    .line 91
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 92
    .line 93
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 94
    .line 95
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 96
    .line 97
    invoke-static {v1, v0}, Lcom/android/server/wm/WindowOrganizerController;->configurationsAreEqualForOrganizer(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_4

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    const/4 v0, 0x0

    .line 105
    goto :goto_2

    .line 106
    :cond_5
    :goto_1
    move v0, v2

    .line 107
    :goto_2
    iput-boolean v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->hasConfigChanged:Z

    .line 108
    .line 109
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mLastSentTaskInfos:Ljava/util/WeakHashMap;

    .line 110
    .line 111
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 112
    .line 113
    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_9

    .line 124
    .line 125
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mOrganizerState:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 126
    .line 127
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    .line 128
    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    .line 133
    .line 134
    if-nez v0, :cond_6

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_6
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    .line 138
    .line 139
    aget-boolean v0, v0, v2

    .line 140
    .line 141
    if-eqz v0, :cond_7

    .line 142
    .line 143
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 144
    .line 145
    int-to-long v0, v0

    .line 146
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 147
    .line 148
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    const/4 v5, 0x1

    .line 157
    const/4 v6, 0x0

    .line 158
    const-wide v3, -0x5c1f6ac120abc8feL    # -7.129758488736769E-136

    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-nez p1, :cond_8

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 174
    .line 175
    invoke-interface {p0, p2}, Landroid/window/ITaskOrganizer;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :catch_0
    move-exception p0

    .line 180
    const-string p1, "TaskOrganizerController"

    .line 181
    .line 182
    const-string p2, "Exception sending onTaskInfoChanged callback"

    .line 183
    .line 184
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    .line 186
    .line 187
    :cond_9
    :goto_3
    return-void
.end method

.method public getPendingEventList()Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public getPendingLifecycleTaskEvent(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    :goto_0
    if-ltz v0, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    .line 18
    .line 19
    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 20
    .line 21
    iget-object v4, v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTask:Lcom/android/server/wm/Task;

    .line 22
    .line 23
    iget v4, v4, Lcom/android/server/wm/Task;->mTaskId:I

    .line 24
    .line 25
    if-ne v3, v4, :cond_1

    .line 26
    .line 27
    iget v3, v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mEventType:I

    .line 28
    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    if-eq v3, v1, :cond_0

    .line 32
    .line 33
    const/4 v4, 0x2

    .line 34
    if-ne v3, v4, :cond_1

    .line 35
    .line 36
    :cond_0
    return-object v2

    .line 37
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 p0, 0x0

    .line 41
    return-object p0
.end method
