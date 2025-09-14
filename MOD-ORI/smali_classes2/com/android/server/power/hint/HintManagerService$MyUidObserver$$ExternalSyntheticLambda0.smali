.class public final synthetic Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/hint/HintManagerService$MyUidObserver;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    const-string v2, "Sent cleanup message for uid "

    .line 8
    .line 9
    iget-object v3, v0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 10
    .line 11
    iget-object v3, v3, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v3

    .line 14
    :try_start_0
    iget-object v4, v0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 15
    .line 16
    iget v4, v4, Lcom/android/server/power/hint/HintManagerService;->mPowerHalVersion:I

    .line 17
    .line 18
    const/4 v5, 0x4

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x1

    .line 21
    if-lt v4, v5, :cond_0

    .line 22
    .line 23
    invoke-static {}, Lcom/android/server/power/hint/Flags;->powerhintThreadCleanup()Z

    .line 24
    .line 25
    .line 26
    iget-object v4, v0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->mProcStatesCache:Landroid/util/SparseIntArray;

    .line 27
    .line 28
    const v5, 0x7fffffff

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, v1, v5}, Landroid/util/SparseIntArray;->get(II)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/4 v5, 0x6

    .line 36
    if-gt v4, v5, :cond_0

    .line 37
    .line 38
    if-le p0, v5, :cond_0

    .line 39
    .line 40
    move v6, v7

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_4

    .line 44
    :cond_0
    :goto_0
    iget-object v4, v0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->mProcStatesCache:Landroid/util/SparseIntArray;

    .line 45
    .line 46
    invoke-virtual {v4, v1, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    .line 48
    .line 49
    iget-object p0, v0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {p0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Landroid/util/ArrayMap;

    .line 62
    .line 63
    if-nez p0, :cond_1

    .line 64
    .line 65
    monitor-exit v3

    .line 66
    goto :goto_3

    .line 67
    :cond_1
    if-eqz v6, :cond_2

    .line 68
    .line 69
    invoke-static {}, Lcom/android/server/power/hint/Flags;->powerhintThreadCleanup()Z

    .line 70
    .line 71
    .line 72
    iget-object v4, v0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 73
    .line 74
    iget-object v4, v4, Lcom/android/server/power/hint/HintManagerService;->mCleanUpHandler:Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;

    .line 75
    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    const/4 v6, 0x3

    .line 81
    invoke-virtual {v4, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    iget-object v5, v0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 86
    .line 87
    iget-object v5, v5, Lcom/android/server/power/hint/HintManagerService;->mCleanUpHandler:Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;

    .line 88
    .line 89
    const-wide/16 v8, 0x3e8

    .line 90
    .line 91
    invoke-virtual {v5, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 92
    .line 93
    .line 94
    const-string v4, "HintManagerService"

    .line 95
    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->isUidForeground(I)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    sub-int/2addr v1, v7

    .line 120
    :goto_1
    if-ltz v1, :cond_4

    .line 121
    .line 122
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    check-cast v2, Landroid/util/ArraySet;

    .line 127
    .line 128
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    sub-int/2addr v4, v7

    .line 133
    :goto_2
    if-ltz v4, :cond_3

    .line 134
    .line 135
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    check-cast v5, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    .line 140
    .line 141
    invoke-virtual {v5, v0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->updateHintAllowedByProcState(Z)Z

    .line 142
    .line 143
    .line 144
    add-int/lit8 v4, v4, -0x1

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_4
    monitor-exit v3

    .line 151
    :goto_3
    return-void

    .line 152
    :goto_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    throw p0
.end method
