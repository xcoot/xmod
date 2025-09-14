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

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/radio/IAnnouncementListener$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;->mCurrentList:Ljava/util/List;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final onListUpdated(Ljava/util/List;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "BcRadioAidlSrv.AnnAggr"

    .line 6
    .line 7
    const-string/jumbo v2, "onListUpdate for %s"

    .line 8
    .line 9
    .line 10
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const-string v1, "active cannot be null"

    .line 18
    .line 19
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    check-cast p1, Ljava/util/List;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;->mCurrentList:Ljava/util/List;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;->this$0:Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const-string p1, "BcRadioAidlSrv.AnnAggr"

    .line 34
    .line 35
    const-string/jumbo v0, "onListUpdated()"

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object p1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter p1

    .line 44
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mIsClosed:Z

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    const-string p0, "BcRadioAidlSrv.AnnAggr"

    .line 49
    .line 50
    const-string v0, "Announcement aggregator is closed, it shouldn\'t receive callbacks"

    .line 51
    .line 52
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
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

    .line 60
    .line 61
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mModuleWatchers:Ljava/util/List;

    .line 62
    .line 63
    check-cast v1, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    .line 71
    .line 72
    const/4 v1, 0x0

    .line 73
    move v2, v1

    .line 74
    :goto_0
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mModuleWatchers:Ljava/util/List;

    .line 75
    .line 76
    check-cast v3, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-ge v2, v3, :cond_3

    .line 83
    .line 84
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mModuleWatchers:Ljava/util/List;

    .line 85
    .line 86
    check-cast v3, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;

    .line 93
    .line 94
    iget-object v3, v3, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;->mCurrentList:Ljava/util/List;

    .line 95
    .line 96
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    .line 99
    add-int/lit8 v2, v2, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    :try_start_1
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mListener:Landroid/hardware/radio/IAnnouncementListener;

    .line 103
    .line 104
    invoke-interface {p0, v0}, Landroid/hardware/radio/IAnnouncementListener;->onListUpdated(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :catch_0
    move-exception p0

    .line 109
    :try_start_2
    const-string v0, "BcRadioAidlSrv.AnnAggr"

    .line 110
    .line 111
    const-string/jumbo v2, "mListener.onListUpdated() failed"

    .line 112
    .line 113
    .line 114
    new-array v1, v1, [Ljava/lang/Object;

    .line 115
    .line 116
    invoke-static {v0, p0, v2, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    .line 118
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
