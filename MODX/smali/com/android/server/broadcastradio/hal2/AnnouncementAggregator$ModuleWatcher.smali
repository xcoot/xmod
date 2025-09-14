.class public final Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;
.super Landroid/hardware/radio/IAnnouncementListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public currentList:Ljava/util/List;

.field public mCloseHandle:Landroid/hardware/radio/ICloseHandle;

.field public final synthetic this$0:Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->this$0:Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;

    .line 3
    invoke-direct {p0}, Landroid/hardware/radio/IAnnouncementListener$Stub;-><init>()V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->currentList:Ljava/util/List;

    .line 13
    return-void
.end method


# virtual methods
.method public final onListUpdated(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    check-cast p1, Ljava/util/List;

    .line 6
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->currentList:Ljava/util/List;

    .line 8
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->this$0:Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;

    .line 10
    iget-object p1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    .line 12
    monitor-enter p1

    .line 13
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mIsClosed:Z

    .line 15
    if-eqz v0, :cond_0

    .line 17
    const-string p0, "BcRadio2Srv.AnnAggr"

    .line 19
    const-string v0, "Announcement aggregator is closed, it shouldn\'t receive callbacks"

    .line 21
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    monitor-exit p1

    .line 25
    goto :goto_2

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_3

    .line 28
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mModuleWatchers:Ljava/util/Collection;

    .line 35
    check-cast v1, Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object v1

    .line 41
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;

    .line 53
    iget-object v2, v2, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->currentList:Ljava/util/List;

    .line 55
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    :try_start_1
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mListener:Landroid/hardware/radio/IAnnouncementListener;

    .line 61
    invoke-interface {p0, v0}, Landroid/hardware/radio/IAnnouncementListener;->onListUpdated(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    goto :goto_1

    .line 65
    :catch_0
    move-exception p0

    .line 66
    :try_start_2
    const-string v0, "BcRadio2Srv.AnnAggr"

    .line 68
    const-string/jumbo v1, "mListener.onListUpdated() failed: "

    .line 71
    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    :goto_1
    monitor-exit p1

    .line 75
    :goto_2
    return-void

    .line 76
    :goto_3
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    throw p0
.end method
