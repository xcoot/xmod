.class public final Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;
.super Landroid/hardware/radio/IAnnouncementListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCloseHandle:Landroid/hardware/radio/ICloseHandle;

.field public mCurrentList:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;->this$0:Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;

    .line 3
    invoke-direct {p0}, Landroid/hardware/radio/IAnnouncementListener$Stub;-><init>()V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;->mCurrentList:Ljava/util/List;

    .line 13
    return-void
.end method


# virtual methods
.method public final onListUpdated(Ljava/util/List;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v1, "BcRadioAidlSrv.AnnAggr"

    .line 7
    const-string/jumbo v2, "onListUpdate for %s"

    .line 10
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 13
    move-result-object v3

    .line 14
    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    :cond_0
    const-string v1, "active cannot be null"

    .line 19
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    check-cast p1, Ljava/util/List;

    .line 24
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;->mCurrentList:Ljava/util/List;

    .line 26
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;->this$0:Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;

    .line 28
    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    const-string p1, "BcRadioAidlSrv.AnnAggr"

    .line 35
    const-string/jumbo v0, "onListUpdated()"

    .line 38
    invoke-static {p1, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    .line 43
    monitor-enter p1

    .line 44
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mIsClosed:Z

    .line 46
    if-eqz v0, :cond_2

    .line 48
    const-string p0, "BcRadioAidlSrv.AnnAggr"

    .line 50
    const-string v0, "Announcement aggregator is closed, it shouldn\'t receive callbacks"

    .line 52
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    monitor-exit p1

    .line 56
    goto :goto_2

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_3

    .line 59
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 61
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mModuleWatchers:Ljava/util/List;

    .line 63
    check-cast v1, Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 68
    move-result v1

    .line 69
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    const/4 v1, 0x0

    .line 73
    move v2, v1

    .line 74
    :goto_0
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mModuleWatchers:Ljava/util/List;

    .line 76
    check-cast v3, Ljava/util/ArrayList;

    .line 78
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 81
    move-result v3

    .line 82
    if-ge v2, v3, :cond_3

    .line 84
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mModuleWatchers:Ljava/util/List;

    .line 86
    check-cast v3, Ljava/util/ArrayList;

    .line 88
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;

    .line 94
    iget-object v3, v3, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;->mCurrentList:Ljava/util/List;

    .line 96
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    add-int/lit8 v2, v2, 0x1

    .line 101
    goto :goto_0

    .line 102
    :cond_3
    :try_start_1
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mListener:Landroid/hardware/radio/IAnnouncementListener;

    .line 104
    invoke-interface {p0, v0}, Landroid/hardware/radio/IAnnouncementListener;->onListUpdated(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    goto :goto_1

    .line 108
    :catch_0
    move-exception p0

    .line 109
    :try_start_2
    const-string v0, "BcRadioAidlSrv.AnnAggr"

    .line 111
    const-string/jumbo v2, "mListener.onListUpdated() failed"

    .line 114
    new-array v1, v1, [Ljava/lang/Object;

    .line 116
    invoke-static {v0, p0, v2, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    :goto_1
    monitor-exit p1

    .line 120
    :goto_2
    return-void

    .line 121
    :goto_3
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    throw p0
.end method
