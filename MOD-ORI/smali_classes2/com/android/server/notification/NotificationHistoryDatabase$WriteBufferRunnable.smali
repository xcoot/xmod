.class public final Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationHistoryDatabase;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationHistoryDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    new-instance v2, Landroid/util/AtomicFile;

    .line 6
    .line 7
    new-instance v3, Ljava/io/File;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 10
    .line 11
    iget-object v4, v4, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryDir:Ljava/io/File;

    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "WriteBufferRunnable "

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v1

    .line 30
    :try_start_0
    sget-boolean v3, Lcom/android/server/notification/NotificationHistoryDatabase;->DEBUG:Z

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    const-string v3, "NotiHistoryDatabase"

    .line 35
    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_2

    .line 62
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 63
    .line 64
    iget-object v3, v0, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    .line 65
    .line 66
    invoke-virtual {v0, v2, v3}, Lcom/android/server/notification/NotificationHistoryDatabase;->writeLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/List;

    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 78
    .line 79
    new-instance v2, Landroid/app/NotificationHistory;

    .line 80
    .line 81
    invoke-direct {v2}, Landroid/app/NotificationHistory;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object v2, v0, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    .line 85
    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v2

    .line 90
    invoke-static {}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->getInstance()Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 95
    .line 96
    iget-object v4, v4, Lcom/android/server/notification/NotificationHistoryDatabase;->mUris:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->updatePostedTime(JLjava/util/ArrayList;)Z

    .line 99
    .line 100
    .line 101
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 102
    .line 103
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mUris:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :catch_0
    move-exception p0

    .line 110
    :try_start_2
    const-string v0, "NotiHistoryDatabase"

    .line 111
    .line 112
    const-string v2, "Failed to write buffer to disk. not flushing buffer"

    .line 113
    .line 114
    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    .line 116
    .line 117
    :goto_1
    monitor-exit v1

    .line 118
    return-void

    .line 119
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    throw p0
.end method
