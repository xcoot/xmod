.class public final Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;
.super Landroid/hardware/radio/ICloseHandle$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mDeathRecipient:Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$DeathRecipient;

.field public mIsClosed:Z

.field public final mListener:Landroid/hardware/radio/IAnnouncementListener;

.field public final mLock:Ljava/lang/Object;

.field public final mModuleWatchers:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "BcRadioAidlSrv.AnnAggr"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->DEBUG:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/IAnnouncementListener;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/hardware/radio/ICloseHandle$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$DeathRecipient;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$DeathRecipient;-><init>(Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mDeathRecipient:Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$DeathRecipient;

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mModuleWatchers:Ljava/util/List;

    .line 17
    .line 18
    const-string/jumbo v1, "listener cannot be null"

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mListener:Landroid/hardware/radio/IAnnouncementListener;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    .line 27
    .line 28
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/radio/IAnnouncementListener;->asBinder()Landroid/os/IBinder;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const/4 p1, 0x0

    .line 33
    invoke-interface {p0, v0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "BcRadioAidlSrv.AnnAggr"

    .line 6
    .line 7
    const-string v1, "Close watchModule"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mIsClosed:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    const-string p0, "BcRadioAidlSrv.AnnAggr"

    .line 20
    .line 21
    const-string v1, "Announcement aggregator has already been closed."

    .line 22
    .line 23
    invoke-static {p0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

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
    goto :goto_2

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mListener:Landroid/hardware/radio/IAnnouncementListener;

    .line 31
    .line 32
    invoke-interface {v1}, Landroid/hardware/radio/IAnnouncementListener;->asBinder()Landroid/os/IBinder;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mDeathRecipient:Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$DeathRecipient;

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mModuleWatchers:Ljava/util/List;

    .line 43
    .line 44
    check-cast v1, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-ge v3, v1, :cond_4

    .line 51
    .line 52
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mModuleWatchers:Ljava/util/List;

    .line 53
    .line 54
    check-cast v1, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    sget-boolean v2, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->DEBUG:Z

    .line 66
    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    const-string v2, "BcRadioAidlSrv.AnnAggr"

    .line 70
    .line 71
    const-string v4, "Close module watcher."

    .line 72
    .line 73
    invoke-static {v2, v4}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    :cond_2
    iget-object v2, v1, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;->mCloseHandle:Landroid/hardware/radio/ICloseHandle;

    .line 77
    .line 78
    if-eqz v2, :cond_3

    .line 79
    .line 80
    invoke-interface {v2}, Landroid/hardware/radio/ICloseHandle;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catch_0
    move-exception v2

    .line 85
    :try_start_2
    const-string v4, "BcRadioAidlSrv.AnnAggr"

    .line 86
    .line 87
    const-string v5, "Failed to close module watcher %s: %s"

    .line 88
    .line 89
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {v4, v5, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mModuleWatchers:Ljava/util/List;

    .line 100
    .line 101
    check-cast v1, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 104
    .line 105
    .line 106
    const/4 v1, 0x1

    .line 107
    iput-boolean v1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mIsClosed:Z

    .line 108
    .line 109
    monitor-exit v0

    .line 110
    return-void

    .line 111
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance p1, Landroid/util/IndentingPrintWriter;

    .line 2
    .line 3
    invoke-direct {p1, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "AnnouncementAggregator\n"

    .line 7
    .line 8
    const/4 p3, 0x0

    .line 9
    new-array v0, p3, [Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p1, p2, v0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter p2

    .line 20
    :try_start_0
    const-string v0, "Is session closed? %s\n"

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mIsClosed:Z

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    const-string v1, "Yes"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_2

    .line 31
    :cond_0
    const-string v1, "No"

    .line 32
    .line 33
    :goto_0
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 38
    .line 39
    .line 40
    const-string v0, "Module Watchers [%d]:\n"

    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mModuleWatchers:Ljava/util/List;

    .line 43
    .line 44
    check-cast v1, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 62
    .line 63
    .line 64
    move v0, p3

    .line 65
    :goto_1
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mModuleWatchers:Ljava/util/List;

    .line 66
    .line 67
    check-cast v1, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-ge v0, v1, :cond_1

    .line 74
    .line 75
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mModuleWatchers:Ljava/util/List;

    .line 76
    .line 77
    check-cast v1, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    new-array v2, p3, [Ljava/lang/Object;

    .line 89
    .line 90
    const-string v3, "ModuleWatcher:\n"

    .line 91
    .line 92
    invoke-virtual {p1, v3, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 96
    .line 97
    .line 98
    iget-object v2, v1, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;->mCloseHandle:Landroid/hardware/radio/ICloseHandle;

    .line 99
    .line 100
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    const-string v3, "Close handle: %s\n"

    .line 105
    .line 106
    invoke-virtual {p1, v3, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 107
    .line 108
    .line 109
    iget-object v1, v1, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;->mCurrentList:Ljava/util/List;

    .line 110
    .line 111
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    const-string v2, "Current announcement list: %s\n"

    .line 116
    .line 117
    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 121
    .line 122
    .line 123
    add-int/lit8 v0, v0, 0x1

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 127
    .line 128
    .line 129
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :goto_2
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    throw p0
.end method

.method public final watchModule(Lcom/android/server/broadcastradio/aidl/RadioModule;[I)V
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
    const-string v2, "Watch module for %s with enabled types %s"

    .line 8
    .line 9
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    filled-new-array {p1, v3}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v1

    .line 23
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mIsClosed:Z

    .line 24
    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    new-instance v2, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;

    .line 28
    .line 29
    invoke-direct {v2, p0}, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;-><init>(Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    :try_start_1
    invoke-virtual {p1, v2, p2}, Lcom/android/server/broadcastradio/aidl/RadioModule;->addAnnouncementListener(Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;[I)Lcom/android/server/broadcastradio/aidl/RadioModule$3;

    .line 33
    .line 34
    .line 35
    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    :try_start_2
    const-string p2, "Set close handle %s"

    .line 39
    .line 40
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v3, "BcRadioAidlSrv.AnnAggr"

    .line 45
    .line 46
    invoke-static {v3, p2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iput-object p1, v2, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;->mCloseHandle:Landroid/hardware/radio/ICloseHandle;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mModuleWatchers:Ljava/util/List;

    .line 52
    .line 53
    check-cast p0, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    monitor-exit v1

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception p0

    .line 63
    const-string p1, "BcRadioAidlSrv.AnnAggr"

    .line 64
    .line 65
    const-string p2, "Failed to add announcement listener"

    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    new-array v0, v0, [Ljava/lang/Object;

    .line 69
    .line 70
    invoke-static {p1, p0, p2, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    monitor-exit v1

    .line 74
    return-void

    .line 75
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    const-string p1, "Failed to watch modulesince announcement aggregator has already been closed"

    .line 78
    .line 79
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    throw p0
.end method
