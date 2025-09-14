.class public final Lcom/android/server/audio/RecordingActivityMonitor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/media/AudioSystem$AudioRecordingCallback;


# static fields
.field public static final sEventLogger:Lcom/android/server/utils/EventLogger;


# instance fields
.field public mAudioHandler:Landroid/os/Handler;

.field public final mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

.field public mChecker:Lcom/android/server/audio/AudioService$11;

.field public final mClients:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public mHasPublicClients:Z

.field public final mLegacyRemoteSubmixActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mLegacyRemoteSubmixRiid:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mPackMan:Landroid/content/pm/PackageManager;

.field public final mRecordStates:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/utils/EventLogger;

    .line 3
    const/16 v1, 0x32

    .line 5
    const-string/jumbo v2, "recording activity received by AudioService"

    .line 8
    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    .line 11
    sput-object v0, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z

    .line 14
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    const/4 v2, -0x1

    .line 17
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 20
    iput-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mLegacyRemoteSubmixRiid:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 27
    iput-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mLegacyRemoteSubmixActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 36
    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mAudioHandler:Landroid/os/Handler;

    .line 39
    sput-object p0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    .line 41
    sput-object p0, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mPackMan:Landroid/content/pm/PackageManager;

    .line 49
    iput-object p1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mContext:Landroid/content/Context;

    .line 51
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 57
    return-void
.end method


# virtual methods
.method public final dispatchCallbacks(Ljava/util/List;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z

    .line 9
    if-eqz v1, :cond_1

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v2

    .line 20
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_2

    .line 26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroid/media/AudioRecordingConfiguration;

    .line 32
    invoke-static {v3}, Landroid/media/AudioRecordingConfiguration;->anonymizedCopy(Landroid/media/AudioRecordingConfiguration;)Landroid/media/AudioRecordingConfiguration;

    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 42
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    :cond_2
    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object p0

    .line 51
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_4

    .line 57
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :try_start_1
    iget-boolean v3, v2, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mIsPrivileged:Z

    .line 65
    if-eqz v3, :cond_3

    .line 67
    iget-object v2, v2, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    .line 69
    invoke-interface {v2, p1}, Landroid/media/IRecordingConfigDispatcher;->dispatchRecordingConfigChange(Ljava/util/List;)V

    .line 72
    goto :goto_1

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_3

    .line 75
    :catch_0
    move-exception v2

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    iget-object v2, v2, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    .line 79
    invoke-interface {v2, v1}, Landroid/media/IRecordingConfigDispatcher;->dispatchRecordingConfigChange(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    goto :goto_1

    .line 83
    :goto_2
    :try_start_2
    const-string v3, "AudioService.RecordingActivityMonitor"

    .line 85
    const-string v4, "Could not call dispatchRecordingConfigChange() on client"

    .line 87
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    goto :goto_1

    .line 91
    :cond_4
    monitor-exit v0

    .line 92
    return-void

    .line 93
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "\nRecordActivityMonitor dump time: "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Ljava/util/Date;

    .line 14
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 17
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 33
    monitor-enter v0

    .line 34
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 36
    check-cast p0, Ljava/util/ArrayList;

    .line 38
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object p0

    .line 42
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 48
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    const-string/jumbo v3, "riid "

    .line 59
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    iget v3, v1, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mRiid:I

    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    const-string v3, "; active? "

    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-boolean v3, v1, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mIsActive:Z

    .line 74
    invoke-static {v2, v3, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 77
    iget-object v1, v1, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    .line 79
    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v1, p1}, Landroid/media/AudioRecordingConfiguration;->dump(Ljava/io/PrintWriter;)V

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const-string v1, "  no config"

    .line 87
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    const-string p0, "\n"

    .line 96
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    sget-object p0, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 104
    return-void

    .line 105
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    throw p0
.end method

.method public final findStateByPortId(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 7
    check-cast v2, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v2

    .line 13
    const/4 v3, -0x1

    .line 14
    if-ge v1, v2, :cond_3

    .line 16
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 18
    check-cast v2, Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 26
    iget-object v2, v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mDeathHandler:Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;

    .line 28
    if-eqz v2, :cond_0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 33
    check-cast v2, Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 41
    iget-object v2, v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    .line 43
    if-eqz v2, :cond_1

    .line 45
    invoke-virtual {v2}, Landroid/media/AudioRecordingConfiguration;->getClientPortId()I

    .line 48
    move-result v3

    .line 49
    :cond_1
    if-ne v3, p1, :cond_2

    .line 51
    monitor-exit v0

    .line 52
    return v1

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    monitor-exit v0

    .line 59
    return v3

    .line 60
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0
.end method

.method public final getActiveRecordingConfigurations(Z)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 11
    check-cast p0, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 29
    invoke-virtual {v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->isActiveConfiguration()Z

    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 35
    iget-object v2, v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    .line 37
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    if-nez p1, :cond_3

    .line 46
    new-instance p0, Ljava/util/ArrayList;

    .line 48
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object p1

    .line 55
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_2

    .line 61
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Landroid/media/AudioRecordingConfiguration;

    .line 67
    invoke-static {v0}, Landroid/media/AudioRecordingConfiguration;->anonymizedCopy(Landroid/media/AudioRecordingConfiguration;)Landroid/media/AudioRecordingConfiguration;

    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    move-object v0, p0

    .line 76
    :cond_3
    return-object v0

    .line 77
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    throw p0
.end method

.method public final isRecordingActiveForUid(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 6
    check-cast p0, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p0

    .line 12
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 24
    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->isActiveConfiguration()Z

    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 30
    iget-object v2, v1, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    .line 32
    invoke-virtual {v2}, Landroid/media/AudioRecordingConfiguration;->getClientUid()I

    .line 35
    move-result v2

    .line 36
    if-ne v2, p1, :cond_0

    .line 38
    iget-object v1, v1, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    .line 40
    invoke-virtual {v1}, Landroid/media/AudioRecordingConfiguration;->isClientSilenced()Z

    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_0

    .line 46
    monitor-exit v0

    .line 47
    const/4 p0, 0x1

    .line 48
    return p0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    monitor-exit v0

    .line 52
    const/4 p0, 0x0

    .line 53
    return p0

    .line 54
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
.end method

.method public final onRecordingConfigurationChanged(IIIIIIZ[I[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;ILjava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    move/from16 v15, p3

    .line 9
    move/from16 v14, p6

    .line 11
    new-instance v3, Landroid/media/AudioFormat$Builder;

    .line 13
    invoke-direct {v3}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 16
    const/4 v13, 0x0

    .line 17
    aget v4, p8, v13

    .line 19
    invoke-virtual {v3, v4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 22
    move-result-object v3

    .line 23
    const/4 v12, 0x1

    .line 24
    aget v4, p8, v12

    .line 26
    invoke-virtual {v3, v4}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 29
    move-result-object v3

    .line 30
    const/4 v11, 0x2

    .line 31
    aget v4, p8, v11

    .line 33
    invoke-virtual {v3, v4}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 40
    move-result-object v7

    .line 41
    new-instance v3, Landroid/media/AudioFormat$Builder;

    .line 43
    invoke-direct {v3}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 46
    const/4 v4, 0x3

    .line 47
    aget v4, p8, v4

    .line 49
    invoke-virtual {v3, v4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 52
    move-result-object v3

    .line 53
    const/4 v4, 0x4

    .line 54
    aget v4, p8, v4

    .line 56
    invoke-virtual {v3, v4}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 59
    move-result-object v3

    .line 60
    const/4 v4, 0x5

    .line 61
    aget v4, p8, v4

    .line 63
    invoke-virtual {v3, v4}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 70
    move-result-object v8

    .line 71
    const/4 v3, 0x6

    .line 72
    aget v9, p8, v3

    .line 74
    iget-object v3, v0, Lcom/android/server/audio/RecordingActivityMonitor;->mPackMan:Landroid/content/pm/PackageManager;

    .line 76
    invoke-virtual {v3, v15}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 79
    move-result-object v3

    .line 80
    if-eqz v3, :cond_0

    .line 82
    array-length v4, v3

    .line 83
    if-lez v4, :cond_0

    .line 85
    aget-object v3, v3, v13

    .line 87
    :goto_0
    move-object v10, v3

    .line 88
    goto :goto_1

    .line 89
    :cond_0
    const-string v3, ""

    .line 91
    goto :goto_0

    .line 92
    :goto_1
    new-instance v6, Landroid/media/AudioRecordingConfiguration;

    .line 94
    move-object v3, v6

    .line 95
    move/from16 v4, p3

    .line 97
    move/from16 v5, p4

    .line 99
    move-object/from16 p4, v6

    .line 101
    move/from16 v6, p5

    .line 103
    move v2, v11

    .line 104
    move/from16 v11, p6

    .line 106
    move/from16 v12, p7

    .line 108
    move/from16 v13, p11

    .line 110
    move-object/from16 v14, p9

    .line 112
    move-object/from16 v15, p10

    .line 114
    invoke-direct/range {v3 .. v15}, Landroid/media/AudioRecordingConfiguration;-><init>(IIILandroid/media/AudioFormat;Landroid/media/AudioFormat;ILjava/lang/String;IZI[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;)V

    .line 117
    const/16 v3, 0x8

    .line 119
    move/from16 v4, p5

    .line 121
    if-ne v4, v3, :cond_1

    .line 123
    if-eqz v1, :cond_2

    .line 125
    if-ne v1, v2, :cond_1

    .line 127
    goto :goto_2

    .line 128
    :cond_1
    move/from16 v3, p2

    .line 130
    goto :goto_3

    .line 131
    :cond_2
    :goto_2
    invoke-virtual/range {p4 .. p4}, Landroid/media/AudioRecordingConfiguration;->getAudioDevice()Landroid/media/AudioDeviceInfo;

    .line 134
    move-result-object v2

    .line 135
    if-eqz v2, :cond_1

    .line 137
    const-string v3, "0"

    .line 139
    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_1

    .line 149
    iget-object v2, v0, Lcom/android/server/audio/RecordingActivityMonitor;->mLegacyRemoteSubmixRiid:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 151
    move/from16 v3, p2

    .line 153
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 156
    iget-object v2, v0, Lcom/android/server/audio/RecordingActivityMonitor;->mLegacyRemoteSubmixActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 158
    const/4 v5, 0x1

    .line 159
    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 162
    :goto_3
    invoke-static/range {p5 .. p5}, Landroid/media/MediaRecorder;->isSystemOnlyAudioSource(I)Z

    .line 165
    move-result v2

    .line 166
    const-string v5, "AudioService.RecordingActivityMonitor"

    .line 168
    if-eqz v2, :cond_3

    .line 170
    invoke-static/range {p5 .. p5}, Landroid/media/MediaRecorder;->isSemSystemOnlyAudioSource(I)Z

    .line 173
    move-result v2

    .line 174
    if-eqz v2, :cond_3

    .line 176
    sget-object v0, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    .line 178
    new-instance v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;

    .line 180
    move-object/from16 v4, p4

    .line 182
    invoke-direct {v2, v1, v3, v4}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;-><init>(IILandroid/media/AudioRecordingConfiguration;)V

    .line 185
    const/4 v6, 0x0

    .line 186
    invoke-virtual {v2, v6, v5}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 189
    invoke-virtual {v0, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 192
    return-void

    .line 193
    :cond_3
    move-object/from16 v4, p4

    .line 195
    const/4 v6, 0x0

    .line 196
    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_RECORDING_POPUP:Z

    .line 198
    if-eqz v2, :cond_8

    .line 200
    const/16 v2, 0x63

    .line 202
    if-ne v1, v2, :cond_8

    .line 204
    const-string v2, "[RECORDING POPUP] onRecordingConfigurationChanged on event "

    .line 206
    invoke-static {v1, v2, v5}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 209
    sget-object v2, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    .line 211
    new-instance v7, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;

    .line 213
    invoke-direct {v7, v1, v3, v4}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;-><init>(IILandroid/media/AudioRecordingConfiguration;)V

    .line 216
    invoke-virtual {v7, v6, v5}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 219
    invoke-virtual {v2, v7}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 222
    invoke-virtual {v4}, Landroid/media/AudioRecordingConfiguration;->getAudioDevice()Landroid/media/AudioDeviceInfo;

    .line 225
    move-result-object v1

    .line 226
    if-eqz v1, :cond_4

    .line 228
    invoke-virtual {v1}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 231
    move-result v13

    .line 232
    goto :goto_4

    .line 233
    :cond_4
    move v13, v6

    .line 234
    :goto_4
    iget-object v0, v0, Lcom/android/server/audio/RecordingActivityMonitor;->mAudioHandler:Landroid/os/Handler;

    .line 236
    const-string v1, "AS.RecordingPopupHelper"

    .line 238
    if-nez v0, :cond_5

    .line 240
    const-string v0, "[RECORDING POPUP] There is no audio handler"

    .line 242
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    goto :goto_5

    .line 246
    :cond_5
    sget v2, Lcom/samsung/android/server/audio/RecordingPopupHelper;->sOldPortId:I

    .line 248
    move/from16 v3, p6

    .line 250
    if-eq v2, v3, :cond_7

    .line 252
    sput v3, Lcom/samsung/android/server/audio/RecordingPopupHelper;->sOldPortId:I

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 257
    move-result-wide v4

    .line 258
    sget-wide v6, Lcom/samsung/android/server/audio/RecordingPopupHelper;->sPreviousTime:J

    .line 260
    sub-long v6, v4, v6

    .line 262
    sput-wide v4, Lcom/samsung/android/server/audio/RecordingPopupHelper;->sPreviousTime:J

    .line 264
    const-string v2, "[RECORDING POPUP] notifyRecordingPopup uid "

    .line 266
    const-string v4, " portId "

    .line 268
    const-string v5, " periodTime "

    .line 270
    move/from16 v8, p3

    .line 272
    invoke-static {v8, v3, v2, v4, v5}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    move-result-object v2

    .line 276
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    move-result-object v2

    .line 283
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/16 v1, 0xad4

    .line 288
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 291
    const-wide/16 v2, 0xfa0

    .line 293
    cmp-long v2, v6, v2

    .line 295
    if-lez v2, :cond_6

    .line 297
    invoke-virtual {v0, v1, v8, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 300
    move-result-object v1

    .line 301
    const-wide/16 v2, 0x3e8

    .line 303
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 306
    goto :goto_5

    .line 307
    :cond_6
    invoke-virtual {v0, v1, v8, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 310
    move-result-object v1

    .line 311
    const-wide/16 v2, 0xbb8

    .line 313
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 316
    :cond_7
    :goto_5
    return-void

    .line 317
    :cond_8
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/audio/RecordingActivityMonitor;->updateSnapshot(IILandroid/media/AudioRecordingConfiguration;)Ljava/util/List;

    .line 320
    move-result-object v1

    .line 321
    invoke-virtual {v0, v1}, Lcom/android/server/audio/RecordingActivityMonitor;->dispatchCallbacks(Ljava/util/List;)V

    .line 324
    return-void
.end method

.method public final registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;Z)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    new-instance v1, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;

    .line 9
    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;-><init>(Landroid/media/IRecordingConfigDispatcher;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :try_start_1
    invoke-interface {p1}, Landroid/media/IRecordingConfigDispatcher;->asBinder()Landroid/os/IBinder;

    .line 15
    move-result-object p1

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    if-nez p2, :cond_1

    .line 22
    const/4 p1, 0x1

    .line 23
    :try_start_2
    iput-boolean p1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_2

    .line 28
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    goto :goto_1

    .line 34
    :catch_0
    move-exception p0

    .line 35
    const-string p1, "AudioService.RecordingActivityMonitor"

    .line 37
    const-string p2, "Could not link to client death"

    .line 39
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    :goto_1
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    throw p0
.end method

.method public final unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_3

    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;

    .line 27
    invoke-interface {p1}, Landroid/media/IRecordingConfigDispatcher;->asBinder()Landroid/os/IBinder;

    .line 30
    move-result-object v5

    .line 31
    iget-object v6, v4, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    .line 33
    invoke-interface {v6}, Landroid/media/IRecordingConfigDispatcher;->asBinder()Landroid/os/IBinder;

    .line 36
    move-result-object v6

    .line 37
    invoke-interface {v5, v6}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_2

    .line 43
    iget-object v5, v4, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    .line 45
    invoke-interface {v5}, Landroid/media/IRecordingConfigDispatcher;->asBinder()Landroid/os/IBinder;

    .line 48
    move-result-object v5

    .line 49
    invoke-interface {v5, v4, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    iget-boolean v4, v4, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mIsPrivileged:Z

    .line 60
    if-nez v4, :cond_1

    .line 62
    const/4 v3, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    iput-boolean v3, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z

    .line 66
    monitor-exit v0

    .line 67
    return-void

    .line 68
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p0
.end method

.method public final updateSnapshot(IILandroid/media/AudioRecordingConfiguration;)Ljava/util/List;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, -0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq p2, v1, :cond_2

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 10
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    move v4, v2

    .line 12
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 14
    check-cast v5, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v5

    .line 20
    if-ge v4, v5, :cond_1

    .line 22
    iget-object v5, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 24
    check-cast v5, Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 32
    iget v5, v5, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mRiid:I

    .line 34
    if-ne v5, p2, :cond_0

    .line 36
    monitor-exit v3

    .line 37
    goto :goto_3

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    monitor-exit v3

    .line 44
    goto :goto_2

    .line 45
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :try_start_2
    throw p0

    .line 47
    :cond_2
    if-eqz p3, :cond_3

    .line 49
    invoke-virtual {p3}, Landroid/media/AudioRecordingConfiguration;->getClientPortId()I

    .line 52
    move-result v3

    .line 53
    invoke-virtual {p0, v3}, Lcom/android/server/audio/RecordingActivityMonitor;->findStateByPortId(I)I

    .line 56
    move-result v4

    .line 57
    goto :goto_3

    .line 58
    :catchall_1
    move-exception p0

    .line 59
    goto/16 :goto_9

    .line 61
    :cond_3
    :goto_2
    move v4, v1

    .line 62
    :goto_3
    const/4 v3, 0x1

    .line 63
    const/4 v5, 0x0

    .line 64
    if-ne v4, v1, :cond_6

    .line 66
    if-nez p1, :cond_4

    .line 68
    if-eqz p3, :cond_4

    .line 70
    iget-object v4, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 72
    new-instance v6, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 74
    invoke-direct {v6, p3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;-><init>(Landroid/media/AudioRecordingConfiguration;)V

    .line 77
    check-cast v4, Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v4, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 84
    check-cast v4, Ljava/util/ArrayList;

    .line 86
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 89
    move-result v4

    .line 90
    sub-int/2addr v4, v3

    .line 91
    goto :goto_4

    .line 92
    :cond_4
    if-nez p3, :cond_5

    .line 94
    const-string p0, "AudioService.RecordingActivityMonitor"

    .line 96
    const-string p3, "Unexpected event %d for riid %d"

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object p1

    .line 102
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    move-result-object p2

    .line 106
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 109
    move-result-object p1

    .line 110
    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    move-result-object p1

    .line 114
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_5
    monitor-exit v0

    .line 118
    return-object v5

    .line 119
    :cond_6
    :goto_4
    iget-object v6, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 121
    check-cast v6, Ljava/util/ArrayList;

    .line 123
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 126
    move-result-object v6

    .line 127
    check-cast v6, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 129
    if-eqz p1, :cond_10

    .line 131
    if-eq p1, v3, :cond_c

    .line 133
    const/4 v7, 0x2

    .line 134
    if-eq p1, v7, :cond_a

    .line 136
    const/4 p3, 0x3

    .line 137
    if-eq p1, p3, :cond_8

    .line 139
    const-string p3, "AudioService.RecordingActivityMonitor"

    .line 141
    const-string v4, "Unknown event %d for riid %d / portid %d"

    .line 143
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    move-result-object v7

    .line 147
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    move-result-object v8

    .line 151
    iget-object v9, v6, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    .line 153
    if-eqz v9, :cond_7

    .line 155
    invoke-virtual {v9}, Landroid/media/AudioRecordingConfiguration;->getClientPortId()I

    .line 158
    move-result v1

    .line 159
    :cond_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    move-result-object v1

    .line 163
    filled-new-array {v7, v8, v1}, [Ljava/lang/Object;

    .line 166
    move-result-object v1

    .line 167
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 170
    move-result-object v1

    .line 171
    invoke-static {p3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    goto/16 :goto_8

    .line 176
    :cond_8
    invoke-virtual {v6}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->isActiveConfiguration()Z

    .line 179
    move-result p3

    .line 180
    iget-object v1, v6, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mDeathHandler:Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;

    .line 182
    if-eqz v1, :cond_9

    .line 184
    iget-object v7, v1, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->mRecorderToken:Landroid/os/IBinder;

    .line 186
    invoke-interface {v7, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 189
    :cond_9
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 191
    check-cast v1, Ljava/util/ArrayList;

    .line 193
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 196
    move v2, p3

    .line 197
    goto :goto_8

    .line 198
    :cond_a
    iget-object v1, v6, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    .line 200
    invoke-virtual {p3, v1}, Landroid/media/AudioRecordingConfiguration;->equals(Ljava/lang/Object;)Z

    .line 203
    move-result v1

    .line 204
    if-eqz v1, :cond_b

    .line 206
    goto :goto_8

    .line 207
    :cond_b
    iput-object p3, v6, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    .line 209
    iget-boolean v2, v6, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mIsActive:Z

    .line 211
    goto :goto_8

    .line 212
    :cond_c
    iget-boolean p3, v6, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mIsActive:Z

    .line 214
    if-nez p3, :cond_d

    .line 216
    goto :goto_5

    .line 217
    :cond_d
    iput-boolean v2, v6, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mIsActive:Z

    .line 219
    iget-object p3, v6, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    .line 221
    if-eqz p3, :cond_e

    .line 223
    move v2, v3

    .line 224
    :cond_e
    :goto_5
    iget-object p3, v6, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mDeathHandler:Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;

    .line 226
    if-eqz p3, :cond_f

    .line 228
    goto :goto_8

    .line 229
    :cond_f
    iget-object p3, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 231
    check-cast p3, Ljava/util/ArrayList;

    .line 233
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 236
    goto :goto_8

    .line 237
    :cond_10
    iget-boolean v1, v6, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mIsActive:Z

    .line 239
    if-ne v1, v3, :cond_12

    .line 241
    :cond_11
    move v1, v2

    .line 242
    goto :goto_6

    .line 243
    :cond_12
    iput-boolean v3, v6, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mIsActive:Z

    .line 245
    iget-object v1, v6, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    .line 247
    if-eqz v1, :cond_11

    .line 249
    move v1, v3

    .line 250
    :goto_6
    if-eqz p3, :cond_15

    .line 252
    iget-object v4, v6, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    .line 254
    invoke-virtual {p3, v4}, Landroid/media/AudioRecordingConfiguration;->equals(Ljava/lang/Object;)Z

    .line 257
    move-result v4

    .line 258
    if-eqz v4, :cond_13

    .line 260
    move p3, v2

    .line 261
    goto :goto_7

    .line 262
    :cond_13
    iput-object p3, v6, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    .line 264
    iget-boolean p3, v6, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mIsActive:Z

    .line 266
    :goto_7
    if-nez p3, :cond_14

    .line 268
    if-eqz v1, :cond_16

    .line 270
    :cond_14
    move v2, v3

    .line 271
    goto :goto_8

    .line 272
    :cond_15
    move v2, v1

    .line 273
    :cond_16
    :goto_8
    if-eqz v2, :cond_17

    .line 275
    sget-object p3, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    .line 277
    new-instance v1, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;

    .line 279
    iget-object v2, v6, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    .line 281
    invoke-direct {v1, p1, p2, v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;-><init>(IILandroid/media/AudioRecordingConfiguration;)V

    .line 284
    invoke-virtual {p3, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 287
    iget-object p2, v6, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    .line 289
    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/RecordingActivityMonitor;->updateSoundAppPolicy(Landroid/media/AudioRecordingConfiguration;I)V

    .line 292
    invoke-virtual {p0, v3}, Lcom/android/server/audio/RecordingActivityMonitor;->getActiveRecordingConfigurations(Z)Ljava/util/List;

    .line 295
    move-result-object v5

    .line 296
    :cond_17
    monitor-exit v0

    .line 297
    return-object v5

    .line 298
    :goto_9
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 299
    throw p0
.end method

.method public final updateSoundAppPolicy(Landroid/media/AudioRecordingConfiguration;I)V
    .locals 9

    .line 1
    const-string/jumbo v0, "updateSoundAppPolicy SEC_LOCAL_GAME_CHAT_ENABLE : "

    .line 4
    const-string/jumbo v1, "l_game_chat_enable="

    .line 7
    if-nez p1, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioRecordingConfiguration;->getClientPackageName()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x2

    .line 15
    const/4 v4, 0x1

    .line 16
    if-eqz p2, :cond_2

    .line 18
    if-ne p2, v3, :cond_1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v5, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_2
    :goto_0
    move v5, v4

    .line 24
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 26
    const-string/jumbo v7, "updateSoundAppPolicy packageName = "

    .line 29
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v6

    .line 39
    const-string v7, "AudioService.RecordingActivityMonitor"

    .line 41
    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sget-boolean v6, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    .line 46
    if-eqz v6, :cond_3

    .line 48
    sget v6, Lcom/android/server/audio/AudioServiceExt;->mKaraokeListenbackEnabled:I

    .line 50
    if-ne v6, v4, :cond_3

    .line 52
    iget-object v6, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 54
    const-string/jumbo v8, "karaoke_listenback_allow"

    .line 57
    invoke-virtual {v6, v2, v8}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->checkAppCategory(Ljava/lang/String;Ljava/lang/String;)Z

    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_3

    .line 63
    new-instance v6, Ljava/lang/StringBuilder;

    .line 65
    const-string/jumbo v8, "l_effect_listenback_key;state="

    .line 68
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v6

    .line 78
    invoke-static {v6}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 81
    :cond_3
    iget-object v6, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mChecker:Lcom/android/server/audio/AudioService$11;

    .line 83
    if-eqz v6, :cond_5

    .line 85
    if-eqz p2, :cond_4

    .line 87
    if-eq p2, v4, :cond_4

    .line 89
    if-eq p2, v3, :cond_4

    .line 91
    const/4 v3, 0x3

    .line 92
    if-ne p2, v3, :cond_5

    .line 94
    :cond_4
    invoke-virtual {p1}, Landroid/media/AudioRecordingConfiguration;->getAudioSource()I

    .line 97
    move-result p1

    .line 98
    sget p2, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 100
    iget-object p2, v6, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    .line 102
    const/16 v3, 0x80

    .line 104
    invoke-virtual {p2, v3, p1, v2}, Lcom/android/server/audio/AudioService;->sendBroadcastToSoundEventReceiver(IILjava/lang/String;)V

    .line 107
    :cond_5
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE:Z

    .line 109
    if-eqz p1, :cond_6

    .line 111
    iget-object p1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 113
    const-string/jumbo p2, "karaoke_allow"

    .line 116
    invoke-virtual {p1, v2, p2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->checkAppCategory(Ljava/lang/String;Ljava/lang/String;)Z

    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_6

    .line 122
    new-instance p0, Ljava/lang/StringBuilder;

    .line 124
    const-string/jumbo p1, "l_karaoke_enable="

    .line 127
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object p0

    .line 137
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 140
    goto :goto_2

    .line 141
    :cond_6
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_GAMECHAT_SPEAKER_AEC:Z

    .line 143
    if-eqz p1, :cond_7

    .line 145
    :try_start_0
    invoke-static {v2}, Lcom/samsung/android/game/SemGameManager;->isGamePackage(Ljava/lang/String;)Z

    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_7

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    .line 153
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object p1

    .line 163
    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 166
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MIC_MODE_FOR_QUICK_PANEL_UI:Z

    .line 168
    if-eqz p1, :cond_7

    .line 170
    new-instance p1, Ljava/lang/StringBuilder;

    .line 172
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object p1

    .line 182
    invoke-static {v7, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mContext:Landroid/content/Context;

    .line 187
    invoke-static {p0}, Lcom/samsung/android/server/audio/MicModeManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/MicModeManager;

    .line 190
    move-result-object p0

    .line 191
    const/16 p1, 0x20

    .line 193
    invoke-virtual {p0, p1, v5}, Lcom/samsung/android/server/audio/MicModeManager;->updateState(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    goto :goto_2

    .line 197
    :catch_0
    move-exception p0

    .line 198
    const-string/jumbo p1, "updateSnapshot"

    .line 201
    invoke-static {v7, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    :cond_7
    :goto_2
    return-void
.end method
