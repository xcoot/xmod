.class public final synthetic Lcom/android/server/wm/RecentTasks$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RecentTasks$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RecentTasks$1;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/RecentTasks$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/RecentTasks$1;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/RecentTasks$1$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/RecentTasks$1$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/wm/RecentTasks$1$$ExternalSyntheticLambda0;->f$3:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 14

    .line 1
    iget-object p1, p0, Lcom/android/server/wm/RecentTasks$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/RecentTasks$1;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/server/wm/RecentTasks$1$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget v1, p0, Lcom/android/server/wm/RecentTasks$1$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/wm/RecentTasks$1$$ExternalSyntheticLambda0;->f$3:I

    .line 8
    .line 9
    iget-object v2, p1, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 12
    .line 13
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 14
    .line 15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 16
    .line 17
    .line 18
    monitor-enter v2

    .line 19
    :try_start_0
    iget-object v3, p1, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    .line 20
    .line 21
    iget-object v3, v3, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 22
    .line 23
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 24
    .line 25
    invoke-virtual {v3, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 30
    .line 31
    int-to-float v3, v1

    .line 32
    int-to-float v4, p0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    float-to-int v3, v3

    .line 37
    float-to-int v4, v4

    .line 38
    new-instance v5, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda60;

    .line 39
    .line 40
    invoke-direct {v5, v0, v3, v4}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda60;-><init>(Lcom/android/server/wm/DisplayContent;II)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-nez v3, :cond_0

    .line 48
    .line 49
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto/16 :goto_2

    .line 57
    .line 58
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 61
    .line 62
    iget-object v4, p1, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    .line 63
    .line 64
    iget-object v4, v4, Lcom/android/server/wm/RecentTasks;->mTmpRect:Landroid/graphics/Rect;

    .line 65
    .line 66
    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 67
    .line 68
    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 69
    .line 70
    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 71
    .line 72
    .line 73
    iget-object v4, p1, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    .line 74
    .line 75
    iget-object v4, v4, Lcom/android/server/wm/RecentTasks;->mTmpRect:Landroid/graphics/Rect;

    .line 76
    .line 77
    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 78
    .line 79
    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 80
    .line 81
    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    const/4 v7, 0x0

    .line 86
    invoke-virtual {v0, v5, v6, v7}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p1, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    .line 94
    .line 95
    iget-object v0, v0, Lcom/android/server/wm/RecentTasks;->mTmpRect:Landroid/graphics/Rect;

    .line 96
    .line 97
    invoke-virtual {v0, v1, p0}, Landroid/graphics/Rect;->contains(II)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_1

    .line 102
    .line 103
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_1
    :try_start_2
    iget-object v0, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 109
    .line 110
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 111
    .line 112
    const/4 v4, 0x1

    .line 113
    if-gt v4, v0, :cond_4

    .line 114
    .line 115
    const/16 v4, 0x63

    .line 116
    .line 117
    if-gt v0, v4, :cond_4

    .line 118
    .line 119
    iget-object v0, p1, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    .line 120
    .line 121
    iget-object v0, v0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 122
    .line 123
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-eqz v0, :cond_2

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    goto :goto_0

    .line 136
    :cond_2
    const/4 v0, 0x0

    .line 137
    :goto_0
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_TASKS_enabled:[Z

    .line 138
    .line 139
    const/4 v5, 0x2

    .line 140
    aget-boolean v4, v4, v5

    .line 141
    .line 142
    if-eqz v4, :cond_3

    .line 143
    .line 144
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    int-to-long v4, v1

    .line 149
    int-to-long v6, p0

    .line 150
    iget-object p0, p1, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    .line 151
    .line 152
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTmpRect:Landroid/graphics/Rect;

    .line 153
    .line 154
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 159
    .line 160
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    filled-new-array {v3, v1, v4, p0}, [Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v13

    .line 172
    const/4 v12, 0x0

    .line 173
    const-wide v9, -0x16c3e04da87cc1f6L    # -8.409136235686724E198

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    const/16 v11, 0x14

    .line 179
    .line 180
    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    :cond_3
    iget-object p0, p1, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    .line 184
    .line 185
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentTasks;->resetFreezeTaskListReordering(Lcom/android/server/wm/Task;)V

    .line 186
    .line 187
    .line 188
    :cond_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 190
    .line 191
    .line 192
    :goto_1
    return-void

    .line 193
    :goto_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 195
    .line 196
    .line 197
    throw p0
.end method
