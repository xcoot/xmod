.class public final synthetic Lcom/android/server/display/EarlyWakeUpManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/EarlyWakeUpManager;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/EarlyWakeUpManager;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/EarlyWakeUpManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/EarlyWakeUpManager;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/display/EarlyWakeUpManager$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/display/EarlyWakeUpManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/EarlyWakeUpManager;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/display/EarlyWakeUpManager$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    iget-object v1, v0, Lcom/android/server/display/EarlyWakeUpManager;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 14
    .line 15
    iget v2, v0, Lcom/android/server/display/EarlyWakeUpManager;->mDisplayId:I

    .line 16
    .line 17
    check-cast v1, Lcom/android/server/display/DisplayManagerService$1;

    .line 18
    .line 19
    const-string/jumbo v3, "setDisplayStateOverrideForEarlyWakeUp: sameRequest "

    .line 20
    .line 21
    .line 22
    const-string/jumbo v4, "setDisplayStateOverrideForEarlyWakeUp : stateOverride="

    .line 23
    .line 24
    .line 25
    monitor-enter v1

    .line 26
    :try_start_0
    iget-object v5, v1, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 27
    .line 28
    iget-object v5, v5, Lcom/android/server/display/DisplayManagerService;->mRequestDisplayStateLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 31
    :try_start_1
    iget-object v6, v1, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 32
    .line 33
    iget-object v6, v6, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 34
    .line 35
    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :try_start_2
    iget-object v7, v1, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 37
    .line 38
    iget-object v7, v7, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrides:Landroid/util/SparseIntArray;

    .line 39
    .line 40
    invoke-virtual {v7, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    iget-object v8, v1, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 45
    .line 46
    iget-object v8, v8, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrides:Landroid/util/SparseIntArray;

    .line 47
    .line 48
    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    const/4 v9, 0x1

    .line 53
    if-eq v8, p0, :cond_2

    .line 54
    .line 55
    const-string v3, "DisplayManagerService"

    .line 56
    .line 57
    new-instance v8, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v4, " displayId="

    .line 70
    .line 71
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    iget-object v3, v1, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 85
    .line 86
    iget-object v3, v3, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrides:Landroid/util/SparseIntArray;

    .line 87
    .line 88
    invoke-virtual {v3, v7, p0}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 89
    .line 90
    .line 91
    iget-object p0, v1, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 92
    .line 93
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 94
    .line 95
    invoke-virtual {v3, v2, v9}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    iget-object v2, v2, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 100
    .line 101
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayManagerService;->updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 106
    if-eqz p0, :cond_1

    .line 107
    .line 108
    :try_start_3
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :catchall_0
    move-exception p0

    .line 113
    goto :goto_4

    .line 114
    :cond_1
    :goto_1
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    monitor-exit v1

    .line 116
    goto :goto_2

    .line 117
    :catchall_1
    move-exception p0

    .line 118
    goto :goto_3

    .line 119
    :cond_2
    :try_start_4
    const-string v2, "DisplayManagerService"

    .line 120
    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-static {p0}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 141
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 142
    monitor-exit v1

    .line 143
    :goto_2
    iget-object p0, v0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyWakeUpLock:Ljava/lang/Object;

    .line 144
    .line 145
    monitor-enter p0

    .line 146
    :try_start_6
    iput-boolean v9, v0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyDisplayReadyLocked:Z

    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/android/server/display/EarlyWakeUpManager;->updateSuspendBlockerLocked()V

    .line 149
    .line 150
    .line 151
    monitor-exit p0

    .line 152
    return-void

    .line 153
    :catchall_2
    move-exception v0

    .line 154
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 155
    throw v0

    .line 156
    :goto_3
    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 157
    :try_start_8
    throw p0

    .line 158
    :goto_4
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 159
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 160
    :catchall_3
    move-exception p0

    .line 161
    monitor-exit v1

    .line 162
    throw p0
.end method
