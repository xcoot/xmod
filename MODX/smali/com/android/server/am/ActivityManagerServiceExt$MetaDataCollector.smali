.class public final Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBooleanMetaDataKeys:[Ljava/lang/String;

.field public final mBooleanMetaDataMap:Ljava/util/Map;

.field public final mLoadRunnable:Lcom/android/server/am/ActivityManagerServiceExt$2;

.field public mLoaded:Z

.field public final mPackageReceiver:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$2;

.field public final mStringMetaDataKeys:[Ljava/lang/String;

.field public final mStringMetaDataMap:Ljava/util/Map;

.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerServiceExt;


# direct methods
.method public static -$$Nest$mhasBooleanMetaData(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 1
    const-string/jumbo v0, "getApplicationInfo failed: "

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mLoaded:Z

    .line 7
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mBooleanMetaDataMap:Ljava/util/Map;

    .line 9
    check-cast v2, Ljava/util/HashMap;

    .line 11
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Ljava/util/Set;

    .line 17
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 18
    const/4 v3, 0x0

    .line 19
    if-nez v1, :cond_2

    .line 21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 24
    move-result-wide v4

    .line 25
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 28
    move-result-object v1

    .line 29
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 31
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    .line 36
    move-result p0

    .line 37
    const-wide/16 v6, 0x80

    .line 39
    invoke-interface {v1, p1, v6, v7, p0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 42
    move-result-object p0

    .line 43
    if-eqz p0, :cond_1

    .line 45
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 47
    if-nez p0, :cond_0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 53
    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :cond_1
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    goto :goto_3

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :catch_0
    move-exception p0

    .line 61
    :try_start_2
    const-string p2, "MetaDataCollector"

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    invoke-static {p2, v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    goto :goto_2

    .line 82
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    throw p0

    .line 86
    :cond_2
    :goto_2
    if-nez v2, :cond_3

    .line 88
    goto :goto_3

    .line 89
    :cond_3
    monitor-enter v2

    .line 90
    :try_start_3
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 93
    move-result v3

    .line 94
    monitor-exit v2

    .line 95
    :goto_3
    return v3

    .line 96
    :catchall_1
    move-exception p0

    .line 97
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 98
    throw p0

    .line 99
    :catchall_2
    move-exception p1

    .line 100
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 101
    throw p1
.end method

.method public static -$$Nest$mscheduleLoad(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mLoaded:Z

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 7
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 9
    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    .line 11
    if-eqz v1, :cond_0

    .line 13
    if-nez v0, :cond_1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 17
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mBgHandler:Lcom/android/server/am/ActivityManagerServiceExt$BgHandler;

    .line 19
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mLoadRunnable:Lcom/android/server/am/ActivityManagerServiceExt$2;

    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 24
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 26
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mBgHandler:Lcom/android/server/am/ActivityManagerServiceExt$BgHandler;

    .line 28
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mLoadRunnable:Lcom/android/server/am/ActivityManagerServiceExt$2;

    .line 30
    const-wide/16 v1, 0x3e8

    .line 32
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    :cond_1
    return-void

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw v0
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerServiceExt;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    .line 8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mBooleanMetaDataMap:Ljava/util/Map;

    .line 13
    const-string/jumbo p1, "com.samsung.android.persistent.downloadable"

    .line 16
    filled-new-array {p1}, [Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mBooleanMetaDataKeys:[Ljava/lang/String;

    .line 22
    new-instance p1, Ljava/util/HashMap;

    .line 24
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mStringMetaDataMap:Ljava/util/Map;

    .line 29
    const-string/jumbo p1, "com.samsung.android.dex.kill_process_timeout"

    .line 32
    filled-new-array {p1}, [Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mStringMetaDataKeys:[Ljava/lang/String;

    .line 38
    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mLoaded:Z

    .line 41
    new-instance p1, Lcom/android/server/am/ActivityManagerServiceExt$2;

    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-direct {p1, v0, p0}, Lcom/android/server/am/ActivityManagerServiceExt$2;-><init>(ILjava/lang/Object;)V

    .line 47
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mLoadRunnable:Lcom/android/server/am/ActivityManagerServiceExt$2;

    .line 49
    new-instance p1, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$2;

    .line 51
    invoke-direct {p1, p0}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$2;-><init>(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;)V

    .line 54
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mPackageReceiver:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$2;

    .line 56
    return-void
.end method


# virtual methods
.method public final loadMetaDataOnceLocked(Landroid/content/pm/ApplicationInfo;)V
    .locals 9

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mBooleanMetaDataKeys:[Ljava/lang/String;

    .line 6
    array-length v1, v0

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_4

    .line 11
    aget-object v4, v0, v3

    .line 13
    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 15
    if-nez v5, :cond_1

    .line 17
    move v5, v2

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 22
    move-result v5

    .line 23
    :goto_1
    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 25
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mBooleanMetaDataMap:Ljava/util/Map;

    .line 27
    check-cast v7, Ljava/util/HashMap;

    .line 29
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v7

    .line 33
    check-cast v7, Ljava/util/Set;

    .line 35
    if-nez v7, :cond_2

    .line 37
    new-instance v7, Ljava/util/HashSet;

    .line 39
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 42
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mBooleanMetaDataMap:Ljava/util/Map;

    .line 44
    check-cast v8, Ljava/util/HashMap;

    .line 46
    invoke-virtual {v8, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_2
    monitor-enter v7

    .line 50
    if-eqz v5, :cond_3

    .line 52
    :try_start_0
    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    goto :goto_2

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_3

    .line 58
    :cond_3
    invoke-interface {v7, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 61
    :goto_2
    monitor-exit v7

    .line 62
    add-int/lit8 v3, v3, 0x1

    .line 64
    goto :goto_0

    .line 65
    :goto_3
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0

    .line 67
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mStringMetaDataKeys:[Ljava/lang/String;

    .line 69
    array-length v1, v0

    .line 70
    :goto_4
    if-ge v2, v1, :cond_9

    .line 72
    aget-object v3, v0, v2

    .line 74
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 76
    if-nez v4, :cond_5

    .line 78
    const/4 v4, 0x0

    .line 79
    goto :goto_5

    .line 80
    :cond_5
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object v4

    .line 84
    :goto_5
    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 86
    if-eqz v5, :cond_8

    .line 88
    if-nez v3, :cond_6

    .line 90
    goto :goto_6

    .line 91
    :cond_6
    new-instance v6, Landroid/util/Pair;

    .line 93
    invoke-direct {v6, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    if-nez v4, :cond_7

    .line 98
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mStringMetaDataMap:Ljava/util/Map;

    .line 100
    check-cast v3, Ljava/util/HashMap;

    .line 102
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    goto :goto_6

    .line 106
    :cond_7
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mStringMetaDataMap:Ljava/util/Map;

    .line 108
    check-cast v3, Ljava/util/HashMap;

    .line 110
    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    .line 115
    goto :goto_4

    .line 116
    :cond_9
    return-void
.end method
