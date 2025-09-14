.class public final Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;
.super Landroid/hardware/radio/ICloseHandle$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDeathRecipient:Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$DeathRecipient;

.field public mIsClosed:Z

.field public final mListener:Landroid/hardware/radio/IAnnouncementListener;

.field public final mLock:Ljava/lang/Object;

.field public final mModuleWatchers:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Landroid/hardware/radio/IAnnouncementListener;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/hardware/radio/ICloseHandle$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$DeathRecipient;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$DeathRecipient;-><init>(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mDeathRecipient:Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$DeathRecipient;

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mModuleWatchers:Ljava/util/Collection;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mIsClosed:Z

    .line 20
    .line 21
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mListener:Landroid/hardware/radio/IAnnouncementListener;

    .line 25
    .line 26
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    .line 30
    .line 31
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/radio/IAnnouncementListener;->asBinder()Landroid/os/IBinder;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-interface {p0, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mIsClosed:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mIsClosed:Z

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mListener:Landroid/hardware/radio/IAnnouncementListener;

    .line 16
    .line 17
    invoke-interface {v1}, Landroid/hardware/radio/IAnnouncementListener;->asBinder()Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mDeathRecipient:Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$DeathRecipient;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mModuleWatchers:Ljava/util/Collection;

    .line 28
    .line 29
    check-cast v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;

    .line 46
    .line 47
    iget-object v2, v2, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->mCloseHandle:Landroid/hardware/radio/ICloseHandle;

    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    invoke-interface {v2}, Landroid/hardware/radio/ICloseHandle;->close()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mModuleWatchers:Ljava/util/Collection;

    .line 56
    .line 57
    check-cast p0, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 60
    .line 61
    .line 62
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw p0
.end method

.method public final watchModule(Lcom/android/server/broadcastradio/hal2/RadioModule;[I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mIsClosed:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;-><init>(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    :try_start_1
    invoke-virtual {p1, p2, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->addAnnouncementListener([ILcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;)Lcom/android/server/broadcastradio/hal2/RadioModule$3;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    iput-object p1, v1, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->mCloseHandle:Landroid/hardware/radio/ICloseHandle;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mModuleWatchers:Ljava/util/Collection;

    .line 20
    .line 21
    check-cast p0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    const-string p1, "BcRadio2Srv.AnnAggr"

    .line 32
    .line 33
    const-string p2, "Failed to add announcement listener"

    .line 34
    .line 35
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string p1, "Failed to watch modulesince announcement aggregator has already been closed"

    .line 43
    .line 44
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0

    .line 48
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    throw p0
.end method
