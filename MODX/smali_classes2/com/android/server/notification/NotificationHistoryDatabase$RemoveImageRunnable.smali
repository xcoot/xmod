.class public final Lcom/android/server/notification/NotificationHistoryDatabase$RemoveImageRunnable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mSbnKey:Ljava/lang/String;

.field public final mText:Ljava/lang/String;

.field public final mUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationHistoryDatabase;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveImageRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveImageRunnable;->mSbnKey:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveImageRunnable;->mText:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveImageRunnable;->mUri:Landroid/net/Uri;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    const-string v0, "Cannot clean up file on channel removal "

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/notification/NotificationHistoryDatabase;->DEBUG:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v1, "NotiHistoryDatabase"

    .line 8
    .line 9
    const-string v2, "RemoveImageRunnable"

    .line 10
    .line 11
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveImageRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v1

    .line 19
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveImageRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveImageRunnable;->mSbnKey:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveImageRunnable;->mText:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v5, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveImageRunnable;->mUri:Landroid/net/Uri;

    .line 28
    .line 29
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/NotificationHistory;->removeImageNotificationsFromWrite(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveImageRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 36
    .line 37
    iget-object v2, v2, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Landroid/util/AtomicFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    :try_start_1
    new-instance v3, Landroid/app/NotificationHistory;

    .line 56
    .line 57
    invoke-direct {v3}, Landroid/app/NotificationHistory;-><init>()V

    .line 58
    .line 59
    .line 60
    new-instance v4, Lcom/android/server/notification/NotificationHistoryFilter;

    .line 61
    .line 62
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 63
    .line 64
    .line 65
    const/4 v5, 0x0

    .line 66
    iput-object v5, v4, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    .line 67
    .line 68
    iput-object v5, v4, Lcom/android/server/notification/NotificationHistoryFilter;->mChannel:Ljava/lang/String;

    .line 69
    .line 70
    const v6, 0x7fffffff

    .line 71
    .line 72
    .line 73
    iput v6, v4, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    .line 74
    .line 75
    iput-object v5, v4, Lcom/android/server/notification/NotificationHistoryFilter;->mSbnKey:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v2, v3, v4}, Lcom/android/server/notification/NotificationHistoryDatabase;->readLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V

    .line 78
    .line 79
    .line 80
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveImageRunnable;->mSbnKey:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v5, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveImageRunnable;->mText:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v6, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveImageRunnable;->mUri:Landroid/net/Uri;

    .line 85
    .line 86
    invoke-virtual {v3, v4, v5, v6}, Landroid/app/NotificationHistory;->removeImageNotificationsFromWrite(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_1

    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveImageRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 93
    .line 94
    invoke-virtual {p0, v2, v3}, Lcom/android/server/notification/NotificationHistoryDatabase;->writeLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    goto :goto_1

    .line 100
    :catch_0
    move-exception p0

    .line 101
    :try_start_2
    const-string v3, "NotiHistoryDatabase"

    .line 102
    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v3, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .line 125
    .line 126
    :cond_1
    :goto_0
    monitor-exit v1

    .line 127
    return-void

    .line 128
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    throw p0
.end method
