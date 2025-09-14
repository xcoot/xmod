.class public final Lcom/android/server/broadcastradio/aidl/RadioModule;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAidlTunerSessions:Landroid/util/ArraySet;

.field public mAntennaConnected:Ljava/lang/Boolean;

.field public mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

.field public final mHalTunerCallback:Lcom/android/server/broadcastradio/aidl/RadioModule$1;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

.field public final mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

.field public final mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

.field public final mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

.field public mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;


# direct methods
.method public constructor <init>(Landroid/hardware/broadcastradio/IBroadcastRadio;Landroid/hardware/radio/RadioManager$ModuleProperties;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;-><init>(Landroid/hardware/radio/ProgramList$Filter;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    .line 18
    .line 19
    new-instance v0, Landroid/util/ArraySet;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    .line 25
    .line 26
    new-instance v0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/android/server/broadcastradio/aidl/RadioModule$1;-><init>(Lcom/android/server/broadcastradio/aidl/RadioModule;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mHalTunerCallback:Lcom/android/server/broadcastradio/aidl/RadioModule$1;

    .line 32
    .line 33
    const-string/jumbo v0, "properties cannot be null"

    .line 34
    .line 35
    .line 36
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    iput-object p2, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

    .line 40
    .line 41
    const-string/jumbo p2, "service cannot be null"

    .line 42
    .line 43
    .line 44
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    .line 48
    .line 49
    new-instance p1, Landroid/os/Handler;

    .line 50
    .line 51
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mHandler:Landroid/os/Handler;

    .line 59
    .line 60
    new-instance p1, Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 61
    .line 62
    const-string p2, "BcRadioAidlSrv.module"

    .line 63
    .line 64
    invoke-direct {p1, p2}, Lcom/android/server/broadcastradio/RadioEventLogger;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 68
    .line 69
    return-void
.end method

.method public static tryLoadingModule(ILandroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/broadcastradio/aidl/RadioModule;
    .locals 5

    .line 1
    const-string v0, "BcRadioAidlSrv.module"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v2, "Try loading module for module id = %d, module name = %s"

    .line 5
    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    filled-new-array {v3, p2}, [Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-static {v0, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    sget v2, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub;->$r8$clinit:I

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    move-object v2, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object v2, Landroid/hardware/broadcastradio/IBroadcastRadio;->DESCRIPTOR:Ljava/lang/String;

    .line 24
    .line 25
    invoke-interface {p1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    instance-of v3, v2, Landroid/hardware/broadcastradio/IBroadcastRadio;

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    check-cast v2, Landroid/hardware/broadcastradio/IBroadcastRadio;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    new-instance v2, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p1, v2, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 44
    .line 45
    :goto_0
    if-nez v2, :cond_2

    .line 46
    .line 47
    const-string p0, "Module %s is null"

    .line 48
    .line 49
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {v0, p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    return-object v1

    .line 57
    :catch_0
    move-exception p0

    .line 58
    goto :goto_3

    .line 59
    :cond_2
    :try_start_1
    move-object p1, v2

    .line 60
    check-cast p1, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->getAmFmRegionConfig()Landroid/hardware/broadcastradio/AmFmRegionConfig;

    .line 63
    .line 64
    .line 65
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    goto :goto_1

    .line 67
    :catch_1
    :try_start_2
    const-string p1, "Module %s does not has AMFM config"

    .line 68
    .line 69
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-static {v0, p1, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 74
    .line 75
    .line 76
    move-object p1, v1

    .line 77
    :goto_1
    :try_start_3
    move-object v3, v2

    .line 78
    check-cast v3, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    .line 79
    .line 80
    invoke-virtual {v3}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->getDabRegionConfig()[Landroid/hardware/broadcastradio/DabTableEntry;

    .line 81
    .line 82
    .line 83
    move-result-object v3
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 84
    goto :goto_2

    .line 85
    :catch_2
    :try_start_4
    const-string v3, "Module %s does not has DAB config"

    .line 86
    .line 87
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-static {v0, v3, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    move-object v3, v1

    .line 95
    :goto_2
    move-object v4, v2

    .line 96
    check-cast v4, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    .line 97
    .line 98
    invoke-virtual {v4}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->getProperties()Landroid/hardware/broadcastradio/Properties;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-static {p0, p2, v4, p1, v3}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->propertiesFromHalProperties(ILjava/lang/String;Landroid/hardware/broadcastradio/Properties;Landroid/hardware/broadcastradio/AmFmRegionConfig;[Landroid/hardware/broadcastradio/DabTableEntry;)Landroid/hardware/radio/RadioManager$ModuleProperties;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    new-instance p1, Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 107
    .line 108
    invoke-direct {p1, v2, p0}, Lcom/android/server/broadcastradio/aidl/RadioModule;-><init>(Landroid/hardware/broadcastradio/IBroadcastRadio;Landroid/hardware/radio/RadioManager$ModuleProperties;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 109
    .line 110
    .line 111
    return-object p1

    .line 112
    :goto_3
    const-string p1, "Failed to load module %s"

    .line 113
    .line 114
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-static {v0, p0, p1, p2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    return-object v1
.end method


# virtual methods
.method public final addAnnouncementListener(Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;[I)Lcom/android/server/broadcastradio/aidl/RadioModule$3;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 5
    .line 6
    const-string v3, "Add AnnouncementListener"

    .line 7
    .line 8
    invoke-virtual {v2, v3, v1}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    array-length v1, p2

    .line 12
    new-array v2, v1, [B

    .line 13
    .line 14
    move v3, v0

    .line 15
    :goto_0
    if-ge v3, v1, :cond_0

    .line 16
    .line 17
    aget v4, p2, v3

    .line 18
    .line 19
    int-to-byte v4, v4

    .line 20
    aput-byte v4, v2, v3

    .line 21
    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p2, 0x1

    .line 26
    new-array p2, p2, [Landroid/hardware/broadcastradio/ICloseHandle;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    aput-object v1, p2, v0

    .line 30
    .line 31
    new-instance v1, Lcom/android/server/broadcastradio/aidl/RadioModule$2;

    .line 32
    .line 33
    invoke-direct {v1, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule$2;-><init>(Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;)V

    .line 34
    .line 35
    .line 36
    :try_start_0
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    .line 37
    .line 38
    check-cast p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    .line 39
    .line 40
    invoke-virtual {p0, v1, v2}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->registerAnnouncementListener(Lcom/android/server/broadcastradio/aidl/RadioModule$2;[B)Landroid/hardware/broadcastradio/ICloseHandle;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    aput-object p0, p2, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    new-instance p0, Lcom/android/server/broadcastradio/aidl/RadioModule$3;

    .line 47
    .line 48
    invoke-direct {p0, p2}, Lcom/android/server/broadcastradio/aidl/RadioModule$3;-><init>([Landroid/hardware/broadcastradio/ICloseHandle;)V

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    const-string p1, "AnnouncementListener"

    .line 54
    .line 55
    invoke-static {p0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->throwOnError(Ljava/lang/RuntimeException;Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    throw p0
.end method

.method public final closeSessions()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 2
    .line 3
    const-string v1, "Close TunerSessions %d"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    invoke-virtual {v0, v1, v4}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    new-array v4, v1, [Lcom/android/server/broadcastradio/aidl/TunerSession;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    .line 29
    .line 30
    invoke-virtual {p0, v4}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :goto_0
    if-ge v2, v1, :cond_0

    .line 35
    .line 36
    aget-object p0, v4, v2

    .line 37
    .line 38
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/android/server/broadcastradio/aidl/TunerSession;->close(Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const-string v5, "BcRadioAidlSrv.module"

    .line 44
    .line 45
    const-string v6, "Failed to close TunerSession %s: %s"

    .line 46
    .line 47
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {v5, v6, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    return-void

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    throw p0
.end method

.method public final dumpInfo(Landroid/util/IndentingPrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "RadioModule\n"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    const-string v2, "BroadcastRadioServiceImpl: %s\n"

    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    .line 18
    .line 19
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 24
    .line 25
    .line 26
    const-string v2, "Properties: %s\n"

    .line 27
    .line 28
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

    .line 29
    .line 30
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 35
    .line 36
    .line 37
    const-string v2, "Antenna state: "

    .line 38
    .line 39
    new-array v3, v1, [Ljava/lang/Object;

    .line 40
    .line 41
    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAntennaConnected:Ljava/lang/Boolean;

    .line 45
    .line 46
    if-nez v2, :cond_0

    .line 47
    .line 48
    const-string/jumbo v2, "undetermined\n"

    .line 49
    .line 50
    .line 51
    new-array v3, v1, [Ljava/lang/Object;

    .line 52
    .line 53
    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto/16 :goto_3

    .line 59
    .line 60
    :cond_0
    const-string v3, "%s\n"

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    const-string/jumbo v2, "connected"

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const-string/jumbo v2, "not connected"

    .line 73
    .line 74
    .line 75
    :goto_0
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {p1, v3, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 80
    .line 81
    .line 82
    :goto_1
    const-string/jumbo v2, "current ProgramInfo: %s\n"

    .line 83
    .line 84
    .line 85
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 86
    .line 87
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 92
    .line 93
    .line 94
    const-string v2, "ProgramInfoCache: %s\n"

    .line 95
    .line 96
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    .line 97
    .line 98
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 103
    .line 104
    .line 105
    const-string v2, "Union of AIDL ProgramFilters: %s\n"

    .line 106
    .line 107
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    .line 108
    .line 109
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 114
    .line 115
    .line 116
    const-string v2, "AIDL TunerSessions [%d]:\n"

    .line 117
    .line 118
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    .line 119
    .line 120
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 136
    .line 137
    .line 138
    move v2, v1

    .line 139
    :goto_2
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    .line 140
    .line 141
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-ge v2, v3, :cond_2

    .line 146
    .line 147
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    .line 148
    .line 149
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    check-cast v3, Lcom/android/server/broadcastradio/aidl/TunerSession;

    .line 154
    .line 155
    invoke-virtual {v3, p1}, Lcom/android/server/broadcastradio/aidl/TunerSession;->dumpInfo(Landroid/util/IndentingPrintWriter;)V

    .line 156
    .line 157
    .line 158
    add-int/lit8 v2, v2, 0x1

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 162
    .line 163
    .line 164
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    const-string v0, "Radio module events:\n"

    .line 166
    .line 167
    new-array v1, v1, [Ljava/lang/Object;

    .line 168
    .line 169
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 173
    .line 174
    .line 175
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    .line 176
    .line 177
    iget-object p0, p0, Lcom/android/server/broadcastradio/RadioEventLogger;->mEventLogger:Landroid/util/LocalLog;

    .line 178
    .line 179
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    throw p0
.end method

.method public final fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;)V
    .locals 8

    .line 1
    const-string v0, "BcRadioAidlSrv.module"

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/broadcastradio/RadioServiceUserController;->getCurrentUser()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    move v4, v3

    .line 10
    :goto_0
    iget-object v5, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    .line 11
    .line 12
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    if-ge v4, v5, :cond_2

    .line 17
    .line 18
    iget-object v5, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    .line 19
    .line 20
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Lcom/android/server/broadcastradio/aidl/TunerSession;

    .line 25
    .line 26
    iget v5, v5, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUserId:I

    .line 27
    .line 28
    if-eq v5, v1, :cond_0

    .line 29
    .line 30
    iget-object v5, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    .line 31
    .line 32
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Lcom/android/server/broadcastradio/aidl/TunerSession;

    .line 37
    .line 38
    iget v5, v5, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUserId:I

    .line 39
    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    .line 44
    .line 45
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    check-cast v5, Lcom/android/server/broadcastradio/aidl/TunerSession;

    .line 50
    .line 51
    iget-object v5, v5, Lcom/android/server/broadcastradio/aidl/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    .line 52
    .line 53
    iget-object v6, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    .line 54
    .line 55
    invoke-virtual {v6, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    check-cast v6, Lcom/android/server/broadcastradio/aidl/TunerSession;

    .line 60
    .line 61
    iget v6, v6, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUid:I

    .line 62
    .line 63
    invoke-interface {p1, v5, v6}, Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;->run(Landroid/hardware/radio/ITunerCallback;I)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catch_0
    move-exception v5

    .line 68
    const-string v6, "Failed to invoke ITunerCallback"

    .line 69
    .line 70
    new-array v7, v3, [Ljava/lang/Object;

    .line 71
    .line 72
    invoke-static {v0, v5, v6, v7}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :catch_1
    const-string v5, "Removing dead TunerSession"

    .line 77
    .line 78
    invoke-static {v0, v5}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    if-nez v2, :cond_1

    .line 82
    .line 83
    new-instance v2, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    :cond_1
    iget-object v5, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    .line 89
    .line 90
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    check-cast v5, Lcom/android/server/broadcastradio/aidl/TunerSession;

    .line 95
    .line 96
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    if-eqz v2, :cond_3

    .line 103
    .line 104
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    new-array p1, p1, [Lcom/android/server/broadcastradio/aidl/TunerSession;

    .line 109
    .line 110
    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, [Lcom/android/server/broadcastradio/aidl/TunerSession;

    .line 115
    .line 116
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule;->onTunerSessionsClosedLocked([Lcom/android/server/broadcastradio/aidl/TunerSession;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    return-void
.end method

.method public final fireLater(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda1;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onTunerSessionProgramListFilterChangedLocked(Lcom/android/server/broadcastradio/aidl/TunerSession;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    move-object v4, v0

    .line 5
    move-object v5, v4

    .line 6
    move v7, v1

    .line 7
    move v3, v2

    .line 8
    move v6, v3

    .line 9
    :goto_0
    iget-object v8, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    .line 10
    .line 11
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    .line 12
    .line 13
    .line 14
    move-result v8

    .line 15
    if-ge v3, v8, :cond_7

    .line 16
    .line 17
    iget-object v8, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    .line 18
    .line 19
    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v8

    .line 23
    check-cast v8, Lcom/android/server/broadcastradio/aidl/TunerSession;

    .line 24
    .line 25
    iget-object v9, v8, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v9

    .line 28
    :try_start_0
    iget-object v8, v8, Lcom/android/server/broadcastradio/aidl/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    .line 29
    .line 30
    if-nez v8, :cond_0

    .line 31
    .line 32
    move-object v8, v0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    iget-object v8, v8, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    .line 35
    .line 36
    :goto_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    if-nez v8, :cond_1

    .line 38
    .line 39
    goto :goto_4

    .line 40
    :cond_1
    if-nez v4, :cond_2

    .line 41
    .line 42
    new-instance v4, Landroid/util/ArraySet;

    .line 43
    .line 44
    invoke-virtual {v8}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 49
    .line 50
    .line 51
    new-instance v5, Landroid/util/ArraySet;

    .line 52
    .line 53
    invoke-virtual {v8}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-direct {v5, v6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v8}, Landroid/hardware/radio/ProgramList$Filter;->areCategoriesIncluded()Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    invoke-virtual {v8}, Landroid/hardware/radio/ProgramList$Filter;->areModificationsExcluded()Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    goto :goto_4

    .line 69
    :cond_2
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v9

    .line 73
    if-nez v9, :cond_4

    .line 74
    .line 75
    invoke-virtual {v8}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    if-eqz v9, :cond_3

    .line 84
    .line 85
    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    invoke-virtual {v8}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    invoke-virtual {v4, v9}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 94
    .line 95
    .line 96
    :cond_4
    :goto_2
    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    if-nez v9, :cond_6

    .line 101
    .line 102
    invoke-virtual {v8}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    if-eqz v9, :cond_5

    .line 111
    .line 112
    invoke-virtual {v5}, Landroid/util/ArraySet;->clear()V

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_5
    invoke-virtual {v8}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    invoke-virtual {v5, v9}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 121
    .line 122
    .line 123
    :cond_6
    :goto_3
    invoke-virtual {v8}, Landroid/hardware/radio/ProgramList$Filter;->areCategoriesIncluded()Z

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    or-int/2addr v6, v9

    .line 128
    invoke-virtual {v8}, Landroid/hardware/radio/ProgramList$Filter;->areModificationsExcluded()Z

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    and-int/2addr v7, v8

    .line 133
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :catchall_0
    move-exception p0

    .line 137
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    throw p0

    .line 139
    :cond_7
    if-nez v4, :cond_8

    .line 140
    .line 141
    move-object v3, v0

    .line 142
    goto :goto_5

    .line 143
    :cond_8
    new-instance v3, Landroid/hardware/radio/ProgramList$Filter;

    .line 144
    .line 145
    invoke-direct {v3, v4, v5, v6, v7}, Landroid/hardware/radio/ProgramList$Filter;-><init>(Ljava/util/Set;Ljava/util/Set;ZZ)V

    .line 146
    .line 147
    .line 148
    :goto_5
    if-nez v3, :cond_a

    .line 149
    .line 150
    iget-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    .line 151
    .line 152
    if-nez p1, :cond_9

    .line 153
    .line 154
    return-void

    .line 155
    :cond_9
    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    .line 156
    .line 157
    :try_start_2
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    .line 158
    .line 159
    check-cast p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    .line 160
    .line 161
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->stopProgramListUpdates()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 162
    .line 163
    .line 164
    goto :goto_6

    .line 165
    :catch_0
    move-exception p0

    .line 166
    const-string p1, "BcRadioAidlSrv.module"

    .line 167
    .line 168
    const-string/jumbo v0, "mHalTunerSession.stopProgramListUpdates() failed"

    .line 169
    .line 170
    .line 171
    new-array v1, v2, [Ljava/lang/Object;

    .line 172
    .line 173
    invoke-static {p1, p0, v0, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    :goto_6
    return-void

    .line 177
    :cond_a
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    .line 178
    .line 179
    monitor-enter v0

    .line 180
    :try_start_3
    iget-object v4, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    .line 181
    .line 182
    invoke-virtual {v3, v4}, Landroid/hardware/radio/ProgramList$Filter;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    if-eqz v4, :cond_d

    .line 187
    .line 188
    if-eqz p1, :cond_c

    .line 189
    .line 190
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    .line 191
    .line 192
    iget-object v2, p1, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    .line 193
    .line 194
    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 195
    :try_start_4
    iget-object v3, p1, Lcom/android/server/broadcastradio/aidl/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    .line 196
    .line 197
    if-nez v3, :cond_b

    .line 198
    .line 199
    monitor-exit v2

    .line 200
    goto :goto_8

    .line 201
    :catchall_1
    move-exception p0

    .line 202
    goto :goto_7

    .line 203
    :cond_b
    const/16 v4, 0x64

    .line 204
    .line 205
    const/16 v5, 0x1f4

    .line 206
    .line 207
    invoke-virtual {v3, p0, v1, v4, v5}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->filterAndUpdateFromInternal(Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;ZII)Ljava/util/List;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 212
    :try_start_5
    invoke-virtual {p1, p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->dispatchClientUpdateChunks(Ljava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 213
    .line 214
    .line 215
    goto :goto_8

    .line 216
    :goto_7
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 217
    :try_start_7
    throw p0

    .line 218
    :catchall_2
    move-exception p0

    .line 219
    goto :goto_c

    .line 220
    :cond_c
    :goto_8
    monitor-exit v0

    .line 221
    return-void

    .line 222
    :cond_d
    iput-object v3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    .line 223
    .line 224
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 225
    :try_start_8
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    .line 226
    .line 227
    invoke-static {v3}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->filterToHalProgramFilter(Landroid/hardware/radio/ProgramList$Filter;)Landroid/hardware/broadcastradio/ProgramFilter;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    check-cast p0, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    .line 232
    .line 233
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->startProgramListUpdates(Landroid/hardware/broadcastradio/ProgramFilter;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    .line 234
    .line 235
    .line 236
    goto :goto_a

    .line 237
    :catch_1
    move-exception p0

    .line 238
    goto :goto_9

    .line 239
    :catch_2
    move-exception p0

    .line 240
    goto :goto_b

    .line 241
    :goto_9
    const-string p1, "BcRadioAidlSrv.module"

    .line 242
    .line 243
    const-string/jumbo v0, "mHalTunerSession.startProgramListUpdates() failed"

    .line 244
    .line 245
    .line 246
    new-array v1, v2, [Ljava/lang/Object;

    .line 247
    .line 248
    invoke-static {p1, p0, v0, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    :goto_a
    return-void

    .line 252
    :goto_b
    const-string p1, "Start Program ListUpdates"

    .line 253
    .line 254
    invoke-static {p0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->throwOnError(Ljava/lang/RuntimeException;Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    throw p0

    .line 259
    :goto_c
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 260
    throw p0
.end method

.method public final varargs onTunerSessionsClosedLocked([Lcom/android/server/broadcastradio/aidl/TunerSession;)V
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget-object v2, p1, v1

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    .line 8
    .line 9
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter p1

    .line 18
    const/4 v0, 0x0

    .line 19
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/aidl/RadioModule;->onTunerSessionProgramListFilterChangedLocked(Lcom/android/server/broadcastradio/aidl/TunerSession;)V

    .line 20
    .line 21
    .line 22
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    :try_start_1
    iget-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    .line 32
    .line 33
    check-cast p1, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/hardware/broadcastradio/IBroadcastRadio$Stub$Proxy;->unsetTunerCallback()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p1

    .line 40
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getId()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-string v0, "BcRadioAidlSrv.module"

    .line 55
    .line 56
    const-string v1, "Failed to unregister HAL callback for module %d"

    .line 57
    .line 58
    invoke-static {v0, p1, v1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_1
    return-void

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    throw p0
.end method
