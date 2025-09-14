.class public final Lcom/android/server/am/ProcessList$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ProcessList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/ProcessList$1;->this$0:Lcom/android/server/am/ProcessList;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleOomEvent([Landroid/os/OomKillRecord;)V
    .locals 10

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget-object v2, p1, v1

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/am/ProcessList$1;->this$0:Lcom/android/server/am/ProcessList;

    .line 8
    .line 9
    iget-object v3, v3, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 10
    .line 11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 12
    .line 13
    .line 14
    monitor-enter v3

    .line 15
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/ProcessList$1;->this$0:Lcom/android/server/am/ProcessList;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/os/OomKillRecord;->getPid()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    invoke-virtual {v2}, Landroid/os/OomKillRecord;->getUid()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    const-string/jumbo v9, "oom"

    .line 26
    .line 27
    .line 28
    const/4 v7, 0x3

    .line 29
    const/16 v8, 0x1e

    .line 30
    .line 31
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ProcessList;->noteAppKill(IIIILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/os/OomKillRecord;->logKillOccurred()V

    .line 35
    .line 36
    .line 37
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :cond_0
    return-void
.end method

.method public handleUnsolicitedMessage(Ljava/io/DataInputStream;I)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ProcessList$1;->this$0:Lcom/android/server/am/ProcessList;

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    const/4 v1, 0x0

    .line 5
    if-ge p2, v0, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x6

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eq v0, v2, :cond_3

    .line 15
    .line 16
    const/16 p0, 0x8

    .line 17
    .line 18
    if-eq v0, p0, :cond_1

    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    const/16 p0, 0x54

    .line 22
    .line 23
    if-ge p2, p0, :cond_2

    .line 24
    .line 25
    return v1

    .line 26
    :cond_2
    sget-object p0, Lcom/android/server/am/ActiveServices;->sNumForegroundServices:Ljava/util/concurrent/atomic/AtomicReference;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Landroid/util/Pair;

    .line 33
    .line 34
    iget-object p2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p2, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p0, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    invoke-static {p1, p2, p0}, Lcom/android/server/am/LmkdStatsReporter;->logKillOccurred(Ljava/io/DataInputStream;II)V

    .line 51
    .line 52
    .line 53
    return v3

    .line 54
    :cond_3
    const/16 v0, 0xc

    .line 55
    .line 56
    if-eq p2, v0, :cond_4

    .line 57
    .line 58
    return v1

    .line 59
    :cond_4
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    .line 70
    .line 71
    const/16 v2, 0x1005

    .line 72
    .line 73
    invoke-virtual {v0, v2, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 81
    .line 82
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mKillPolicyManager:Lcom/android/server/am/KillPolicyManager;

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Lcom/android/server/am/KillPolicyManager;->calculateLmkdStatus(I)V

    .line 85
    .line 86
    .line 87
    sget-object p1, Lcom/android/server/am/pmm/PersonalizedMemoryManager$LazyHolder;->INSTANCE:Lcom/android/server/am/pmm/PersonalizedMemoryManager;

    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    sget-object p2, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->LMKD_KILL:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    .line 94
    .line 95
    invoke-virtual {p1, p0, p2}, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->onMemoryEvent(Landroid/content/Context;Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    return v3

    .line 99
    :catch_0
    const-string p0, "ActivityManager"

    .line 100
    .line 101
    const-string p1, "Invalid buffer data. Failed to log LMK_KILL_OCCURRED"

    .line 102
    .line 103
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    return v1
.end method

.method public onConnect(Ljava/io/OutputStream;)Z
    .locals 7

    .line 1
    const-string v0, "ActivityManager"

    .line 2
    .line 3
    const-string v1, "Connection with lmkd established"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/am/ProcessList$1;->this$0:Lcom/android/server/am/ProcessList;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    const/4 v2, 0x0

    .line 14
    :try_start_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/4 v4, 0x3

    .line 19
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {p1, v4, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 31
    .line 32
    .line 33
    iget-boolean v3, p0, Lcom/android/server/am/ProcessList;->mOomLevelsSet:Z

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    array-length v3, v0

    .line 39
    mul-int/lit8 v3, v3, 0x2

    .line 40
    .line 41
    add-int/2addr v3, v4

    .line 42
    mul-int/2addr v3, v1

    .line 43
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    .line 50
    move v3, v2

    .line 51
    :goto_0
    array-length v5, v0

    .line 52
    if-ge v3, v5, :cond_0

    .line 53
    .line 54
    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    .line 55
    .line 56
    aget v5, v5, v3

    .line 57
    .line 58
    mul-int/lit16 v5, v5, 0x400

    .line 59
    .line 60
    sget v6, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    .line 61
    .line 62
    div-int/2addr v5, v6

    .line 63
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 64
    .line 65
    .line 66
    aget v5, v0, v3

    .line 67
    .line 68
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 69
    .line 70
    .line 71
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-virtual {p1, p0, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 83
    .line 84
    .line 85
    :cond_1
    const/16 p0, 0x8

    .line 86
    .line 87
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const/4 v1, 0x5

    .line 92
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-virtual {p1, v3, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 107
    .line 108
    .line 109
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    invoke-virtual {p1, v0, v2, p0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .line 129
    .line 130
    move v2, v4

    .line 131
    :catch_0
    return v2
.end method
