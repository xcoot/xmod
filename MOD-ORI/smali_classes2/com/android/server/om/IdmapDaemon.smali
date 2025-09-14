.class public final Lcom/android/server/om/IdmapDaemon;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sInstance:Lcom/android/server/om/IdmapDaemon;


# instance fields
.field public final mIdmapToken:Ljava/lang/Object;

.field public final mOpenedCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile mService:Landroid/os/IIdmap2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/om/IdmapDaemon;->mOpenedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/om/IdmapDaemon;->mIdmapToken:Ljava/lang/Object;

    .line 17
    .line 18
    return-void
.end method

.method public static getIdmapService()Landroid/os/IBinder;
    .locals 16

    .line 1
    :try_start_0
    const-string v0, "idmap2d"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    const-string v1, "OverlayManager"

    .line 9
    .line 10
    const-string v2, "Failed to enable idmap2 daemon"

    .line 11
    .line 12
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "failed to set system property"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    return-object v0

    .line 29
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    const-wide/16 v2, 0x1388

    .line 34
    .line 35
    add-long/2addr v0, v2

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    const-wide/16 v6, 0x7530

    .line 41
    .line 42
    add-long v8, v4, v6

    .line 43
    .line 44
    :goto_1
    const-string v10, "idmap"

    .line 45
    .line 46
    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 47
    .line 48
    .line 49
    move-result-object v11

    .line 50
    if-eqz v11, :cond_1

    .line 51
    .line 52
    new-instance v0, Lcom/android/server/om/IdmapDaemon$$ExternalSyntheticLambda0;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-interface {v11, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 59
    .line 60
    .line 61
    return-object v11

    .line 62
    :cond_1
    const-wide/16 v11, 0x5

    .line 63
    .line 64
    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v11

    .line 71
    cmp-long v13, v11, v0

    .line 72
    .line 73
    if-gtz v13, :cond_2

    .line 74
    .line 75
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 76
    .line 77
    .line 78
    move-result-wide v4

    .line 79
    cmp-long v13, v4, v8

    .line 80
    .line 81
    if-gtz v13, :cond_2

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    new-instance v13, Ljava/util/concurrent/TimeoutException;

    .line 85
    .line 86
    const/16 v14, 0x1388

    .line 87
    .line 88
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v14

    .line 92
    const/16 v15, 0x7530

    .line 93
    .line 94
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v15

    .line 98
    sub-long/2addr v11, v0

    .line 99
    add-long/2addr v11, v2

    .line 100
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    sub-long/2addr v4, v8

    .line 105
    add-long/2addr v4, v6

    .line 106
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    filled-new-array {v10, v14, v15, v0, v1}, [Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const-string v1, "Failed to connect to \'%s\' in %d/%d ms (spent %d/%d ms)"

    .line 115
    .line 116
    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-direct {v13, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v13
.end method


# virtual methods
.method public final connect()Lcom/android/server/om/IdmapDaemon$Connection;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/om/IdmapDaemon;->mIdmapToken:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/android/server/om/IdmapDaemon;->mIdmapToken:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Lcom/android/server/om/IdmapDaemon$Connection;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    .line 20
    .line 21
    invoke-direct {v1, p0, v2}, Lcom/android/server/om/IdmapDaemon$Connection;-><init>(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;)V

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-object v1

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lcom/android/server/om/IdmapDaemon;->getIdmapService()Landroid/os/IBinder;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    new-instance v1, Lcom/android/server/om/IdmapDaemon$Connection;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-direct {v1, p0, v2}, Lcom/android/server/om/IdmapDaemon$Connection;-><init>(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;)V

    .line 38
    .line 39
    .line 40
    monitor-exit v0

    .line 41
    return-object v1

    .line 42
    :cond_1
    invoke-static {v1}, Landroid/os/IIdmap2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIdmap2;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iput-object v1, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    .line 47
    .line 48
    new-instance v1, Lcom/android/server/om/IdmapDaemon$Connection;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    .line 51
    .line 52
    invoke-direct {v1, p0, v2}, Lcom/android/server/om/IdmapDaemon$Connection;-><init>(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;)V

    .line 53
    .line 54
    .line 55
    monitor-exit v0

    .line 56
    return-object v1

    .line 57
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0
.end method

.method public final createIdmap(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 11

    .line 1
    const-string v0, ", "

    .line 2
    .line 3
    const-string v1, "\", \""

    .line 4
    .line 5
    const-string v2, "idmap2d service is not ready for createIdmap(\""

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    :try_start_0
    iget-object v4, v3, Lcom/android/server/om/IdmapDaemon$Connection;->mIdmap2:Landroid/os/IIdmap2;

    .line 12
    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    const-string v4, "OverlayManager"

    .line 16
    .line 17
    new-instance v5, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    move-object v2, p1

    .line 23
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-object v6, p3

    .line 30
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    move-object v1, p4

    .line 37
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, "\", "

    .line 41
    .line 42
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    move v8, p2

    .line 46
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    move/from16 v9, p6

    .line 53
    .line 54
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    move/from16 v0, p5

    .line 61
    .line 62
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v0, ")"

    .line 66
    .line 67
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    .line 78
    .line 79
    .line 80
    const/4 v0, 0x0

    .line 81
    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    move-object v1, v0

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    move-object v2, p1

    .line 86
    move v8, p2

    .line 87
    move-object v6, p3

    .line 88
    move-object v1, p4

    .line 89
    move/from16 v0, p5

    .line 90
    .line 91
    move/from16 v9, p6

    .line 92
    .line 93
    :try_start_1
    invoke-static {p4}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    move-object v5, p1

    .line 98
    move-object v6, p3

    .line 99
    move v8, p2

    .line 100
    move/from16 v9, p6

    .line 101
    .line 102
    move/from16 v10, p5

    .line 103
    .line 104
    invoke-interface/range {v4 .. v10}, Landroid/os/IIdmap2;->createIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    invoke-virtual {v3}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    .line 109
    .line 110
    .line 111
    return-object v0

    .line 112
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :catchall_1
    move-exception v0

    .line 117
    move-object v2, v0

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    :goto_1
    throw v1
.end method

.method public final getTargetPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "idmap2d service is not ready for getTargetPath(\""

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mIdmap2:Landroid/os/IIdmap2;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const-string v1, "OverlayManager"

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, ")"

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    return-object p0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Landroid/os/IIdmap2;->getTargetPath(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    .line 45
    .line 46
    .line 47
    return-object p1

    .line 48
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catchall_1
    move-exception p0

    .line 53
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    :goto_1
    throw p1
.end method

.method public final idmapExists(ILjava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "OverlayManager"

    .line 2
    .line 3
    const-string v1, "idmap2d service is not ready for idmapExists(\""

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :try_start_1
    iget-object v3, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mIdmap2:Landroid/os/IIdmap2;

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, "\", "

    .line 23
    .line 24
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p1, ")"

    .line 31
    .line 32
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 43
    .line 44
    .line 45
    return v2

    .line 46
    :catch_0
    move-exception p0

    .line 47
    goto :goto_2

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    :try_start_3
    new-instance v1, Ljava/io/File;

    .line 51
    .line 52
    invoke-interface {v3, p2, p1}, Landroid/os/IIdmap2;->getIdmapPath(Ljava/lang/String;I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 60
    .line 61
    .line 62
    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 64
    .line 65
    .line 66
    return p1

    .line 67
    :goto_0
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catchall_1
    move-exception p0

    .line 72
    :try_start_6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 76
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v1, "failed to check if idmap exists for "

    .line 79
    .line 80
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .line 92
    .line 93
    return v2
.end method

.method public final removeIdmap(ILjava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "idmap2d service is not ready for removeIdmap(\""

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mIdmap2:Landroid/os/IIdmap2;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const-string v1, "OverlayManager"

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p2, "\", "

    .line 22
    .line 23
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p1, ")"

    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    return p0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    :try_start_1
    invoke-interface {v1, p2, p1}, Landroid/os/IIdmap2;->removeIdmap(Ljava/lang/String;I)Z

    .line 49
    .line 50
    .line 51
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    .line 53
    .line 54
    .line 55
    return p1

    .line 56
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catchall_1
    move-exception p0

    .line 61
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    :goto_1
    throw p1
.end method

.method public final verifyIdmap(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Z
    .locals 11

    .line 1
    const-string v0, ", "

    .line 2
    .line 3
    const-string v1, "\", \""

    .line 4
    .line 5
    const-string v2, "idmap2d service is not ready for verifyIdmap(\""

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    :try_start_0
    iget-object v4, v3, Lcom/android/server/om/IdmapDaemon$Connection;->mIdmap2:Landroid/os/IIdmap2;

    .line 12
    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    const-string v4, "OverlayManager"

    .line 16
    .line 17
    new-instance v5, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    move-object v2, p1

    .line 23
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-object v6, p3

    .line 30
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    move-object v1, p4

    .line 37
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, "\", "

    .line 41
    .line 42
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    move v8, p2

    .line 46
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    move/from16 v9, p6

    .line 53
    .line 54
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    move/from16 v0, p5

    .line 61
    .line 62
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v0, ")"

    .line 66
    .line 67
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    .line 78
    .line 79
    .line 80
    const/4 v0, 0x0

    .line 81
    return v0

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    move-object v1, v0

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    move-object v2, p1

    .line 86
    move v8, p2

    .line 87
    move-object v6, p3

    .line 88
    move-object v1, p4

    .line 89
    move/from16 v0, p5

    .line 90
    .line 91
    move/from16 v9, p6

    .line 92
    .line 93
    :try_start_1
    invoke-static {p4}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    move-object v5, p1

    .line 98
    move-object v6, p3

    .line 99
    move v8, p2

    .line 100
    move/from16 v9, p6

    .line 101
    .line 102
    move/from16 v10, p5

    .line 103
    .line 104
    invoke-interface/range {v4 .. v10}, Landroid/os/IIdmap2;->verifyIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Z

    .line 105
    .line 106
    .line 107
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    invoke-virtual {v3}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    .line 109
    .line 110
    .line 111
    return v0

    .line 112
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :catchall_1
    move-exception v0

    .line 117
    move-object v2, v0

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    :goto_1
    throw v1
.end method
