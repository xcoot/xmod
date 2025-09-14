.class public final Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mPkg:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationHistoryDatabase;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->mPkg:Ljava/lang/String;

    .line 7
    .line 8
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
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "RemovePackageRunnable "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->mPkg:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v1, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->mPkg:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/app/NotificationHistory;->removeNotificationsFromWrite(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroid/util/AtomicFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    :try_start_1
    new-instance v3, Landroid/app/NotificationHistory;

    .line 54
    .line 55
    invoke-direct {v3}, Landroid/app/NotificationHistory;-><init>()V

    .line 56
    .line 57
    .line 58
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
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->mPkg:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Landroid/app/NotificationHistory;->removeNotificationsFromWrite(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 84
    .line 85
    invoke-virtual {v4, v2, v3}, Lcom/android/server/notification/NotificationHistoryDatabase;->writeLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    goto :goto_1

    .line 91
    :catch_0
    move-exception v3

    .line 92
    :try_start_2
    const-string v4, "NotiHistoryDatabase"

    .line 93
    .line 94
    new-instance v5, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v6, "Cannot clean up file on pkg removal "

    .line 100
    .line 101
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-static {v4, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_1
    monitor-exit v0

    .line 124
    return-void

    .line 125
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    throw p0
.end method
