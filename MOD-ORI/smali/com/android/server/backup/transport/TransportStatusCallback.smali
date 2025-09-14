.class public final Lcom/android/server/backup/transport/TransportStatusCallback;
.super Lcom/android/internal/backup/ITransportStatusCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mHasCompletedOperation:Z

.field public mOperationStatus:I

.field public final mOperationTimeout:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationStatus:I

    .line 3
    iput-boolean v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mHasCompletedOperation:Z

    const-wide/32 v0, 0x493e0

    .line 4
    const-string v2, "backup_and_restore"

    const-string v3, "backup_transport_callback_timeout_millis"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationTimeout:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationStatus:I

    .line 8
    iput-boolean v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mHasCompletedOperation:Z

    int-to-long v0, p1

    .line 9
    iput-wide v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationTimeout:J

    return-void
.end method


# virtual methods
.method public final declared-synchronized getOperationStatus()I
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mHasCompletedOperation:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    goto :goto_3

    .line 12
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationTimeout:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    :goto_0
    :try_start_2
    iget-boolean v2, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mHasCompletedOperation:Z

    .line 15
    .line 16
    if-nez v2, :cond_2

    .line 17
    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    cmp-long v2, v0, v2

    .line 21
    .line 22
    if-lez v2, :cond_2

    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 29
    .line 30
    .line 31
    iget-boolean v4, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mHasCompletedOperation:Z

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    iget v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationStatus:I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    .line 37
    monitor-exit p0

    .line 38
    return v0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    sub-long/2addr v4, v2

    .line 46
    sub-long/2addr v0, v4

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const-string v0, "TransportStatusCallback"

    .line 49
    .line 50
    const-string v1, "Couldn\'t get operation status from transport"

    .line 51
    .line 52
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :goto_1
    :try_start_4
    const-string v1, "TransportStatusCallback"

    .line 57
    .line 58
    const-string v2, "Couldn\'t get operation status from transport: "

    .line 59
    .line 60
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 61
    .line 62
    .line 63
    :goto_2
    monitor-exit p0

    .line 64
    const/16 p0, -0x3e8

    .line 65
    .line 66
    return p0

    .line 67
    :goto_3
    monitor-exit p0

    .line 68
    throw v0
.end method

.method public final declared-synchronized onOperationComplete()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/TransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    monitor-exit p0

    .line 10
    throw v0
.end method

.method public final declared-synchronized onOperationCompleteWithStatus(I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mHasCompletedOperation:Z

    .line 4
    .line 5
    iput p1, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationStatus:I

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method
