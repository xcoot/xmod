.class public final Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mNotificationHistory:Landroid/app/NotificationHistory;

.field public final mPkg:Ljava/lang/String;

.field public final mPostedTime:J

.field public final synthetic this$0:Lcom/android/server/notification/NotificationHistoryDatabase;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->mPkg:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->mPostedTime:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/server/notification/NotificationHistoryDatabase;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "NotiHistoryDatabase"

    .line 6
    .line 7
    const-string v1, "RemoveNotificationRunnable"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->mPkg:Ljava/lang/String;

    .line 22
    .line 23
    iget-wide v3, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->mPostedTime:J

    .line 24
    .line 25
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/NotificationHistory;->removeNotificationFromWrite(Ljava/lang/String;J)Z

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroid/util/AtomicFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->mNotificationHistory:Landroid/app/NotificationHistory;

    .line 49
    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    new-instance v3, Landroid/app/NotificationHistory;

    .line 54
    .line 55
    invoke-direct {v3}, Landroid/app/NotificationHistory;-><init>()V

    .line 56
    .line 57
    .line 58
    :goto_1
    new-instance v4, Lcom/android/server/notification/NotificationHistoryFilter;

    .line 59
    .line 60
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 61
    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    iput-object v5, v4, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    .line 65
    .line 66
    iput-object v5, v4, Lcom/android/server/notification/NotificationHistoryFilter;->mChannel:Ljava/lang/String;

    .line 67
    .line 68
    const v6, 0x7fffffff

    .line 69
    .line 70
    .line 71
    iput v6, v4, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    .line 72
    .line 73
    iput-object v5, v4, Lcom/android/server/notification/NotificationHistoryFilter;->mSbnKey:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v2, v3, v4}, Lcom/android/server/notification/NotificationHistoryDatabase;->readLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V

    .line 76
    .line 77
    .line 78
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->mPkg:Ljava/lang/String;

    .line 79
    .line 80
    iget-wide v5, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->mPostedTime:J

    .line 81
    .line 82
    invoke-virtual {v3, v4, v5, v6}, Landroid/app/NotificationHistory;->removeNotificationFromWrite(Ljava/lang/String;J)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_1

    .line 87
    .line 88
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 89
    .line 90
    invoke-virtual {v4, v2, v3}, Lcom/android/server/notification/NotificationHistoryDatabase;->writeLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    goto :goto_2

    .line 96
    :catch_0
    move-exception v3

    .line 97
    :try_start_2
    const-string v4, "NotiHistoryDatabase"

    .line 98
    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v6, "Cannot clean up file on notification removal "

    .line 105
    .line 106
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-static {v4, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_3
    monitor-exit v0

    .line 129
    return-void

    .line 130
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    throw p0
.end method

.method public setNotificationHistory(Landroid/app/NotificationHistory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->mNotificationHistory:Landroid/app/NotificationHistory;

    .line 2
    .line 3
    return-void
.end method
