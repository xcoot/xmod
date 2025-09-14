.class public final Lcom/android/server/backup/transport/TransportConnection;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final TAG:Ljava/lang/String; = "TransportConnection"


# instance fields
.field public final mBindIntent:Landroid/content/Intent;

.field public final mCloseGuard:Ldalvik/system/CloseGuard;

.field public final mConnection:Landroid/content/ServiceConnection;

.field public final mContext:Landroid/content/Context;

.field public final mCreatorLogString:Ljava/lang/String;

.field public final mIdentifier:Ljava/lang/String;

.field public final mListenerHandler:Landroid/os/Handler;

.field public final mListeners:Ljava/util/Map;

.field public final mLogBuffer:Ljava/util/List;

.field public final mLogBufferLock:Ljava/lang/Object;

.field public final mPrefixForLog:Ljava/lang/String;

.field public mState:I

.field public final mStateLock:Ljava/lang/Object;

.field public volatile mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

.field public final mTransportComponent:Landroid/content/ComponentName;

.field public final mTransportStats:Lcom/android/server/backup/transport/TransportStats;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/android/server/backup/transport/TransportStats;Landroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mLogBufferLock:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 23
    .line 24
    new-instance v1, Ljava/util/LinkedList;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mLogBuffer:Ljava/util/List;

    .line 30
    .line 31
    new-instance v1, Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mListeners:Ljava/util/Map;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    iput v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    .line 40
    .line 41
    iput p1, p0, Lcom/android/server/backup/transport/TransportConnection;->mUserId:I

    .line 42
    .line 43
    iput-object p2, p0, Lcom/android/server/backup/transport/TransportConnection;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    iput-object p3, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    .line 46
    .line 47
    iput-object p5, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransportComponent:Landroid/content/ComponentName;

    .line 48
    .line 49
    iput-object p4, p0, Lcom/android/server/backup/transport/TransportConnection;->mBindIntent:Landroid/content/Intent;

    .line 50
    .line 51
    iput-object p6, p0, Lcom/android/server/backup/transport/TransportConnection;->mIdentifier:Ljava/lang/String;

    .line 52
    .line 53
    iput-object p7, p0, Lcom/android/server/backup/transport/TransportConnection;->mCreatorLogString:Ljava/lang/String;

    .line 54
    .line 55
    iput-object p8, p0, Lcom/android/server/backup/transport/TransportConnection;->mListenerHandler:Landroid/os/Handler;

    .line 56
    .line 57
    new-instance p1, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;

    .line 58
    .line 59
    invoke-direct {p1, p2, p0}, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;-><init>(Landroid/content/Context;Lcom/android/server/backup/transport/TransportConnection;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lcom/android/server/backup/transport/TransportConnection;->mConnection:Landroid/content/ServiceConnection;

    .line 63
    .line 64
    invoke-virtual {p5}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string p2, ".*\\."

    .line 69
    .line 70
    const-string p3, ""

    .line 71
    .line 72
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    new-instance p2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string p1, "#"

    .line 85
    .line 86
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p1, ":"

    .line 93
    .line 94
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iput-object p1, p0, Lcom/android/server/backup/transport/TransportConnection;->mPrefixForLog:Ljava/lang/String;

    .line 102
    .line 103
    const-string/jumbo p0, "markAsDisposed"

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p0}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    const-string v0, "<UNKNOWN = "

    .line 13
    .line 14
    const-string v1, ">"

    .line 15
    .line 16
    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    const-string p0, "CONNECTED"

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    const-string p0, "BOUND_AND_CONNECTING"

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_2
    const-string p0, "IDLE"

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_3
    const-string p0, "UNUSABLE"

    .line 31
    .line 32
    return-object p0
.end method


# virtual methods
.method public final checkState(ZLjava/lang/String;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x6

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public final checkStateIntegrityLocked()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    if-eq v0, v2, :cond_6

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq v0, v3, :cond_2

    .line 11
    .line 12
    const/4 v3, 0x3

    .line 13
    if-eq v0, v3, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "Unexpected state = "

    .line 18
    .line 19
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget v2, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    .line 23
    .line 24
    invoke-static {v2}, Lcom/android/server/backup/transport/TransportConnection;->stateToString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/transport/TransportConnection;->checkState(ZLjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mListeners:Ljava/util/Map;

    .line 40
    .line 41
    check-cast v0, Landroid/util/ArrayMap;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const-string v3, "Unexpected listeners when state = CONNECTED"

    .line 48
    .line 49
    invoke-virtual {p0, v0, v3}, Lcom/android/server/backup/transport/TransportConnection;->checkState(ZLjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    move v1, v2

    .line 57
    :cond_1
    const-string v0, "Transport expected to be non-null when state = CONNECTED"

    .line 58
    .line 59
    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/transport/TransportConnection;->checkState(ZLjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    .line 64
    .line 65
    if-nez v0, :cond_3

    .line 66
    .line 67
    move v1, v2

    .line 68
    :cond_3
    const-string v0, "Transport expected to be null when state = BOUND_AND_CONNECTING"

    .line 69
    .line 70
    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/transport/TransportConnection;->checkState(ZLjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mListeners:Ljava/util/Map;

    .line 75
    .line 76
    check-cast v0, Landroid/util/ArrayMap;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    const-string v3, "Unexpected listeners when state = UNUSABLE"

    .line 83
    .line 84
    invoke-virtual {p0, v0, v3}, Lcom/android/server/backup/transport/TransportConnection;->checkState(ZLjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    .line 88
    .line 89
    if-nez v0, :cond_5

    .line 90
    .line 91
    move v0, v2

    .line 92
    goto :goto_0

    .line 93
    :cond_5
    move v0, v1

    .line 94
    :goto_0
    const-string v3, "Transport expected to be null when state = UNUSABLE"

    .line 95
    .line 96
    invoke-virtual {p0, v0, v3}, Lcom/android/server/backup/transport/TransportConnection;->checkState(ZLjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_6
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mListeners:Ljava/util/Map;

    .line 100
    .line 101
    check-cast v0, Landroid/util/ArrayMap;

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    const-string v3, "Unexpected listeners when state = IDLE"

    .line 108
    .line 109
    invoke-virtual {p0, v0, v3}, Lcom/android/server/backup/transport/TransportConnection;->checkState(ZLjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    .line 113
    .line 114
    if-nez v0, :cond_7

    .line 115
    .line 116
    move v1, v2

    .line 117
    :cond_7
    const-string v0, "Transport expected to be null when state = IDLE"

    .line 118
    .line 119
    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/transport/TransportConnection;->checkState(ZLjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :goto_1
    return-void
.end method

.method public final connect(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v0, "Connect took "

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v3}, Landroid/os/Looper;->isCurrentThread()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x1

    .line 16
    xor-int/2addr v3, v4

    .line 17
    const-string v5, "Can\'t call connect() on main thread"

    .line 18
    .line 19
    invoke-static {v3, v5}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v3, v1, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    .line 23
    .line 24
    const/4 v5, 0x3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    const-string v0, "Sync connect: reusing transport"

    .line 28
    .line 29
    invoke-virtual {v1, v5, v2, v0}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object v3

    .line 33
    :cond_0
    iget-object v3, v1, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v3

    .line 36
    :try_start_0
    iget v6, v1, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    .line 37
    .line 38
    const/4 v7, 0x5

    .line 39
    const/4 v8, 0x0

    .line 40
    if-nez v6, :cond_1

    .line 41
    .line 42
    const-string v0, "Sync connect: UNUSABLE client"

    .line 43
    .line 44
    invoke-virtual {v1, v7, v2, v0}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    monitor-exit v3

    .line 48
    return-object v8

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    goto/16 :goto_2

    .line 51
    .line 52
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    .line 54
    .line 55
    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 56
    .line 57
    .line 58
    new-instance v6, Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda1;

    .line 59
    .line 60
    invoke-direct {v6, v3}, Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 64
    .line 65
    .line 66
    move-result-wide v9

    .line 67
    const-string v11, "Sync connect: calling async"

    .line 68
    .line 69
    invoke-virtual {v1, v5, v2, v11}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v11, v1, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    .line 73
    .line 74
    monitor-enter v11

    .line 75
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/transport/TransportConnection;->checkStateIntegrityLocked()V

    .line 76
    .line 77
    .line 78
    iget v12, v1, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    .line 79
    .line 80
    if-eqz v12, :cond_6

    .line 81
    .line 82
    const/4 v7, 0x2

    .line 83
    if-eq v12, v4, :cond_4

    .line 84
    .line 85
    if-eq v12, v7, :cond_3

    .line 86
    .line 87
    if-eq v12, v5, :cond_2

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    const-string v4, "Async connect: reusing transport"

    .line 91
    .line 92
    invoke-virtual {v1, v5, v2, v4}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v4, v1, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    .line 96
    .line 97
    invoke-virtual {v1, v6, v4, v2}, Lcom/android/server/backup/transport/TransportConnection;->notifyListener(Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda1;Lcom/android/server/backup/transport/BackupTransportClient;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catchall_1
    move-exception v0

    .line 102
    goto/16 :goto_1

    .line 103
    .line 104
    :cond_3
    const-string v4, "Async connect: already connecting, adding listener"

    .line 105
    .line 106
    invoke-virtual {v1, v5, v2, v4}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object v4, v1, Lcom/android/server/backup/transport/TransportConnection;->mListeners:Ljava/util/Map;

    .line 110
    .line 111
    check-cast v4, Landroid/util/ArrayMap;

    .line 112
    .line 113
    invoke-virtual {v4, v6, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_4
    iget-object v12, v1, Lcom/android/server/backup/transport/TransportConnection;->mContext:Landroid/content/Context;

    .line 118
    .line 119
    iget-object v14, v1, Lcom/android/server/backup/transport/TransportConnection;->mBindIntent:Landroid/content/Intent;

    .line 120
    .line 121
    iget-object v15, v1, Lcom/android/server/backup/transport/TransportConnection;->mConnection:Landroid/content/ServiceConnection;

    .line 122
    .line 123
    iget v13, v1, Lcom/android/server/backup/transport/TransportConnection;->mUserId:I

    .line 124
    .line 125
    invoke-static {v13}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 126
    .line 127
    .line 128
    move-result-object v13

    .line 129
    invoke-virtual {v12, v14, v15, v4, v13}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-eqz v4, :cond_5

    .line 134
    .line 135
    const-string v4, "Async connect: service bound, connecting"

    .line 136
    .line 137
    invoke-virtual {v1, v5, v2, v4}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v7, v8}, Lcom/android/server/backup/transport/TransportConnection;->setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V

    .line 141
    .line 142
    .line 143
    iget-object v4, v1, Lcom/android/server/backup/transport/TransportConnection;->mListeners:Ljava/util/Map;

    .line 144
    .line 145
    check-cast v4, Landroid/util/ArrayMap;

    .line 146
    .line 147
    invoke-virtual {v4, v6, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_5
    const-string v4, "Async connect: bindService returned false"

    .line 152
    .line 153
    const/4 v7, 0x6

    .line 154
    invoke-virtual {v1, v7, v4}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iget-object v4, v1, Lcom/android/server/backup/transport/TransportConnection;->mContext:Landroid/content/Context;

    .line 158
    .line 159
    iget-object v7, v1, Lcom/android/server/backup/transport/TransportConnection;->mConnection:Landroid/content/ServiceConnection;

    .line 160
    .line 161
    invoke-virtual {v4, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v6, v8, v2}, Lcom/android/server/backup/transport/TransportConnection;->notifyListener(Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda1;Lcom/android/server/backup/transport/BackupTransportClient;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_6
    const-string v4, "Async connect: UNUSABLE client"

    .line 169
    .line 170
    invoke-virtual {v1, v7, v2, v4}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v6, v8, v2}, Lcom/android/server/backup/transport/TransportConnection;->notifyListener(Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda1;Lcom/android/server/backup/transport/BackupTransportClient;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :goto_0
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 177
    :try_start_2
    invoke-virtual {v3}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    check-cast v3, Lcom/android/server/backup/transport/BackupTransportClient;

    .line 182
    .line 183
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 184
    .line 185
    .line 186
    move-result-wide v6

    .line 187
    sub-long/2addr v6, v9

    .line 188
    iget-object v4, v1, Lcom/android/server/backup/transport/TransportConnection;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    .line 189
    .line 190
    iget-object v9, v1, Lcom/android/server/backup/transport/TransportConnection;->mTransportComponent:Landroid/content/ComponentName;

    .line 191
    .line 192
    invoke-virtual {v4, v9, v6, v7}, Lcom/android/server/backup/transport/TransportStats;->registerConnectionTime(Landroid/content/ComponentName;J)V

    .line 193
    .line 194
    .line 195
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 196
    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v0, " ms"

    .line 206
    .line 207
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v1, v5, v2, v0}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0

    .line 215
    .line 216
    .line 217
    return-object v3

    .line 218
    :catch_0
    move-exception v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    const-string v4, " while waiting for transport: "

    .line 228
    .line 229
    invoke-static {v3, v4}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    const/4 v3, 0x6

    .line 245
    invoke-virtual {v1, v3, v2, v0}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    return-object v8

    .line 249
    :goto_1
    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 250
    throw v0

    .line 251
    :goto_2
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 252
    throw v0
.end method

.method public final connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/TransportConnection;->connect(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const/4 v0, 0x6

    .line 9
    const-string v1, "Transport connection failed"

    .line 10
    .line 11
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance p0, Lcom/android/server/backup/transport/TransportNotAvailableException;

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/android/server/backup/transport/TransportNotAvailableException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public final finalize()V
    .locals 4

    .line 1
    const-string v0, "Dangling TransportClient created in ["

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/transport/TransportConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 7
    .line 8
    invoke-virtual {v2}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 9
    .line 10
    .line 11
    iget v2, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    if-lt v2, v3, :cond_0

    .line 15
    .line 16
    const-string v2, "TransportClient.finalize()"

    .line 17
    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mCreatorLogString:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, "] being GC\'ed. Left bound, unbinding..."

    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v3, 0x6

    .line 38
    invoke-virtual {p0, v3, v2, v0}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/server/backup/transport/TransportConnection;->unbind(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :catch_0
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 48
    return-void

    .line 49
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    throw p0
.end method

.method public final getConnectedTransport()Lcom/android/server/backup/transport/BackupTransportClient;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const/4 v0, 0x6

    .line 7
    const-string v1, "Transport not connected"

    .line 8
    .line 9
    const-string v2, "PFTBT.handleCancel()"

    .line 10
    .line 11
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance p0, Lcom/android/server/backup/transport/TransportNotAvailableException;

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/android/server/backup/transport/TransportNotAvailableException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public final log(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mPrefixForLog:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/android/server/backup/transport/TransportUtils;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "TransportConnection"

    invoke-static {p1, v2, v0}, Lcom/android/server/backup/transport/TransportUtils;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {v1, v1, p2}, Lcom/android/server/backup/transport/TransportUtils;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/TransportConnection;->saveLogEntry(Ljava/lang/String;)V

    return-void
.end method

.method public final log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mPrefixForLog:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Lcom/android/server/backup/transport/TransportUtils;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransportConnection"

    invoke-static {p1, v1, v0}, Lcom/android/server/backup/transport/TransportUtils;->log(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    invoke-static {p1, p2, p3}, Lcom/android/server/backup/transport/TransportUtils;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/TransportConnection;->saveLogEntry(Ljava/lang/String;)V

    return-void
.end method

.method public final notifyListener(Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda1;Lcom/android/server/backup/transport/BackupTransportClient;Ljava/lang/String;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const-string v0, "BackupTransportClient"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string/jumbo v0, "null"

    .line 7
    .line 8
    .line 9
    :goto_0
    const-string v1, "Notifying ["

    .line 10
    .line 11
    const-string v2, "] transport = "

    .line 12
    .line 13
    invoke-static {v1, p3, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    const/4 v0, 0x4

    .line 18
    invoke-virtual {p0, v0, p3}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance p3, Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    invoke-direct {p3, p0, p1, p2}, Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda1;Lcom/android/server/backup/transport/BackupTransportClient;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/backup/transport/TransportConnection;->mListenerHandler:Landroid/os/Handler;

    .line 27
    .line 28
    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final notifyListenersAndClearLocked(Lcom/android/server/backup/transport/BackupTransportClient;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mListeners:Ljava/util/Map;

    .line 2
    .line 3
    check-cast v0, Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/util/Map$Entry;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda1;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/backup/transport/TransportConnection;->notifyListener(Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda1;Lcom/android/server/backup/transport/BackupTransportClient;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object p0, p0, Lcom/android/server/backup/transport/TransportConnection;->mListeners:Ljava/util/Map;

    .line 42
    .line 43
    check-cast p0, Landroid/util/ArrayMap;

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final saveLogEntry(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, " "

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mLogBufferLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mLogBuffer:Ljava/util/List;

    .line 36
    .line 37
    check-cast v1, Ljava/util/LinkedList;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/4 v2, 0x5

    .line 44
    if-ne v1, v2, :cond_0

    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mLogBuffer:Ljava/util/List;

    .line 47
    .line 48
    move-object v2, v1

    .line 49
    check-cast v2, Ljava/util/LinkedList;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    add-int/lit8 v2, v2, -0x1

    .line 56
    .line 57
    check-cast v1, Ljava/util/LinkedList;

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/backup/transport/TransportConnection;->mLogBuffer:Ljava/util/List;

    .line 66
    .line 67
    check-cast p0, Ljava/util/LinkedList;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0, v1, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    monitor-exit v0

    .line 74
    return-void

    .line 75
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p0
.end method

.method public final setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "State: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    .line 9
    .line 10
    invoke-static {v1}, Lcom/android/server/backup/transport/TransportConnection;->stateToString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " => "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/android/server/backup/transport/TransportConnection;->stateToString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x2

    .line 34
    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    .line 38
    .line 39
    iget-object v2, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransportComponent:Landroid/content/ComponentName;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const/4 v3, -0x1

    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x1

    .line 48
    if-ge v0, v1, :cond_0

    .line 49
    .line 50
    if-gt v1, p1, :cond_0

    .line 51
    .line 52
    move v1, v5

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    if-lt v0, v1, :cond_1

    .line 55
    .line 56
    if-le v1, p1, :cond_1

    .line 57
    .line 58
    move v1, v3

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move v1, v4

    .line 61
    :goto_0
    const/4 v6, 0x3

    .line 62
    if-ge v0, v6, :cond_2

    .line 63
    .line 64
    if-gt v6, p1, :cond_2

    .line 65
    .line 66
    move v3, v5

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    if-lt v0, v6, :cond_3

    .line 69
    .line 70
    if-le v6, p1, :cond_3

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    move v3, v4

    .line 74
    :goto_1
    if-eqz v1, :cond_5

    .line 75
    .line 76
    if-ne v1, v5, :cond_4

    .line 77
    .line 78
    move v0, v5

    .line 79
    goto :goto_2

    .line 80
    :cond_4
    move v0, v4

    .line 81
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const/16 v1, 0xb22

    .line 90
    .line 91
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 92
    .line 93
    .line 94
    :cond_5
    if-eqz v3, :cond_7

    .line 95
    .line 96
    if-ne v3, v5, :cond_6

    .line 97
    .line 98
    move v4, v5

    .line 99
    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const/16 v1, 0xb23

    .line 108
    .line 109
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 110
    .line 111
    .line 112
    :cond_7
    iput p1, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    .line 113
    .line 114
    iput-object p2, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    .line 115
    .line 116
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TransportClient{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransportComponent:Landroid/content/ComponentName;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "#"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/backup/transport/TransportConnection;->mIdentifier:Ljava/lang/String;

    .line 23
    .line 24
    const-string/jumbo v1, "}"

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public final unbind(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "Unbind requested (was "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/backup/transport/TransportConnection;->checkStateIntegrityLocked()V

    .line 7
    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    .line 15
    .line 16
    invoke-static {v0}, Lcom/android/server/backup/transport/TransportConnection;->stateToString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, ")"

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v2, 0x3

    .line 33
    invoke-virtual {p0, v2, p1, v0}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget p1, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    .line 37
    .line 38
    const/4 v0, 0x2

    .line 39
    const/4 v3, 0x1

    .line 40
    const/4 v4, 0x0

    .line 41
    if-eq p1, v0, :cond_1

    .line 42
    .line 43
    if-eq p1, v2, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0, v3, v4}, Lcom/android/server/backup/transport/TransportConnection;->setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/server/backup/transport/TransportConnection;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/backup/transport/TransportConnection;->mConnection:Landroid/content/ServiceConnection;

    .line 52
    .line 53
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {p0, v3, v4}, Lcom/android/server/backup/transport/TransportConnection;->setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/android/server/backup/transport/TransportConnection;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mConnection:Landroid/content/ServiceConnection;

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v4}, Lcom/android/server/backup/transport/TransportConnection;->notifyListenersAndClearLocked(Lcom/android/server/backup/transport/BackupTransportClient;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    monitor-exit v1

    .line 73
    return-void

    .line 74
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    throw p0
.end method
