.class public final synthetic Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/SurfaceControl$TransactionCommittedListener;


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
    iput-object p1, p0, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/AsyncRotationController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTransactionCommitted()V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/AsyncRotationController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    const-string v1, "AsyncRotation_WindowManager"

    .line 12
    .line 13
    const-string v2, "Start transaction is committed"

    .line 14
    .line 15
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    iput-boolean v1, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    sub-int/2addr v2, v1

    .line 28
    :goto_0
    if-ltz v2, :cond_3

    .line 29
    .line 30
    iget-object v3, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/android/server/wm/AsyncRotationController$Operation;

    .line 37
    .line 38
    iget-boolean v3, v3, Lcom/android/server/wm/AsyncRotationController$Operation;->mIsCompletionPending:Z

    .line 39
    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 43
    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    iget-object v3, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 47
    .line 48
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lcom/android/server/wm/WindowToken;

    .line 53
    .line 54
    iget-object v4, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 55
    .line 56
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Lcom/android/server/wm/AsyncRotationController$Operation;

    .line 61
    .line 62
    if-eqz v4, :cond_1

    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/android/server/wm/AsyncRotationController$Operation;->isValidSeamless()Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_1

    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    sub-int/2addr v4, v1

    .line 75
    :goto_1
    if-ltz v4, :cond_1

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 82
    .line 83
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isDrawFinishedLw()Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-nez v5, :cond_0

    .line 88
    .line 89
    const-string v4, "AsyncRotation_WindowManager"

    .line 90
    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v6, "Delay pending completion due to non drawn window="

    .line 97
    .line 98
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :catchall_0
    move-exception p0

    .line 117
    goto :goto_3

    .line 118
    :cond_0
    add-int/lit8 v4, v4, -0x1

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_1
    const-string v3, "AsyncRotation_WindowManager"

    .line 122
    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string v5, "Continue pending completion "

    .line 129
    .line 130
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    iget-object v5, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 134
    .line 135
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    check-cast v5, Lcom/android/server/wm/WindowToken;

    .line 140
    .line 141
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    iget-object v3, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 156
    .line 157
    iget-object v4, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 158
    .line 159
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    check-cast v4, Lcom/android/server/wm/WindowToken;

    .line 164
    .line 165
    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotation(Lcom/android/server/wm/WindowToken;)V

    .line 166
    .line 167
    .line 168
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 179
    .line 180
    .line 181
    throw p0
.end method
