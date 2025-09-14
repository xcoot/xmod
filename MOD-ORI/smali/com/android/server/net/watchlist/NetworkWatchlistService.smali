.class public final Lcom/android/server/net/watchlist/NetworkWatchlistService;
.super Lcom/android/internal/net/INetworkWatchlistManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

.field public final mContext:Landroid/content/Context;

.field mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

.field public volatile mIsLoggingEnabled:Z

.field public final mLoggingSwitchLock:Ljava/lang/Object;

.field public final mNetdEventCallback:Lcom/android/server/net/watchlist/NetworkWatchlistService$1;

.field mNetworkWatchlistHandler:Lcom/android/server/net/watchlist/WatchlistLoggingHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/net/watchlist/NetworkWatchlistService;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIsLoggingEnabled:Z

    .line 3
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mLoggingSwitchLock:Ljava/lang/Object;

    .line 4
    new-instance v1, Lcom/android/server/net/watchlist/NetworkWatchlistService$1;

    invoke-direct {v1, p0}, Lcom/android/server/net/watchlist/NetworkWatchlistService$1;-><init>(Lcom/android/server/net/watchlist/NetworkWatchlistService;)V

    iput-object v1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mNetdEventCallback:Lcom/android/server/net/watchlist/NetworkWatchlistService$1;

    .line 5
    iput-object p1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mContext:Landroid/content/Context;

    .line 6
    sget-object v1, Lcom/android/server/net/watchlist/WatchlistConfig;->sInstance:Lcom/android/server/net/watchlist/WatchlistConfig;

    .line 7
    iput-object v1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    .line 8
    const-string v1, "NetworkWatchlistService"

    const/16 v2, 0xa

    .line 9
    invoke-static {v2, v1, v0}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    .line 11
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mNetworkWatchlistHandler:Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    const/4 p0, 0x2

    .line 12
    invoke-virtual {v1, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 13
    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/net/watchlist/WatchlistLoggingHandler;Landroid/net/IIpConnectivityMetrics;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;-><init>()V

    const/4 p2, 0x0

    .line 18
    iput-boolean p2, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIsLoggingEnabled:Z

    .line 19
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mLoggingSwitchLock:Ljava/lang/Object;

    .line 20
    new-instance p2, Lcom/android/server/net/watchlist/NetworkWatchlistService$1;

    invoke-direct {p2, p0}, Lcom/android/server/net/watchlist/NetworkWatchlistService$1;-><init>(Lcom/android/server/net/watchlist/NetworkWatchlistService;)V

    iput-object p2, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mNetdEventCallback:Lcom/android/server/net/watchlist/NetworkWatchlistService$1;

    .line 21
    iput-object p1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mContext:Landroid/content/Context;

    .line 22
    sget-object p1, Lcom/android/server/net/watchlist/WatchlistConfig;->sInstance:Lcom/android/server/net/watchlist/WatchlistConfig;

    .line 23
    iput-object p1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    .line 24
    iput-object p3, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mNetworkWatchlistHandler:Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    .line 25
    iput-object p4, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    return-void
.end method

.method public static enforceWatchlistLoggingPermission()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v2, "Uid %d has no permission to change watchlist setting."

    .line 21
    .line 22
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v1
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string p3, "NetworkWatchlistService"

    .line 4
    .line 5
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistConfig;->getWatchlistConfigHash()[B

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance p3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v0, "Watchlist config hash: "

    .line 21
    .line 22
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    :goto_0
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string p1, "Domain CRC32 digest list:"

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    iget-object p1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->crc32s:Lcom/android/server/net/watchlist/HarmfulCrcs;

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Lcom/android/server/net/watchlist/HarmfulCrcs;->dump(Ljava/io/PrintWriter;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    const-string p1, "Domain SHA256 digest list:"

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    .line 65
    .line 66
    const-string p3, ""

    .line 67
    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    iget-object p1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    .line 71
    .line 72
    iget-object p1, p1, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->sha256Digests:Lcom/android/server/net/watchlist/HarmfulDigests;

    .line 73
    .line 74
    iget-object p1, p1, Lcom/android/server/net/watchlist/HarmfulDigests;->mDigestSet:Ljava/util/Set;

    .line 75
    .line 76
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_4
    const-string p1, "Ip CRC32 digest list:"

    .line 100
    .line 101
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    .line 105
    .line 106
    if-eqz p1, :cond_5

    .line 107
    .line 108
    iget-object p1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    .line 109
    .line 110
    iget-object p1, p1, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->crc32s:Lcom/android/server/net/watchlist/HarmfulCrcs;

    .line 111
    .line 112
    invoke-virtual {p1, p2}, Lcom/android/server/net/watchlist/HarmfulCrcs;->dump(Ljava/io/PrintWriter;)V

    .line 113
    .line 114
    .line 115
    :cond_5
    const-string p1, "Ip SHA256 digest list:"

    .line 116
    .line 117
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    .line 121
    .line 122
    if-eqz p1, :cond_7

    .line 123
    .line 124
    iget-object p0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    .line 125
    .line 126
    iget-object p0, p0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->sha256Digests:Lcom/android/server/net/watchlist/HarmfulDigests;

    .line 127
    .line 128
    iget-object p0, p0, Lcom/android/server/net/watchlist/HarmfulDigests;->mDigestSet:Ljava/util/Set;

    .line 129
    .line 130
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_6

    .line 139
    .line 140
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_6
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_7
    return-void
.end method

.method public final getWatchlistConfigHash()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistConfig;->getWatchlistConfigHash()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x7d0

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p0, "NetworkWatchlistService"

    .line 13
    .line 14
    const-string p1, "Only shell is allowed to call network watchlist shell commands"

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-direct {v0, p0, v1}, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;-><init>(Lcom/android/server/net/watchlist/NetworkWatchlistService;Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    move-object v1, p0

    .line 28
    move-object v2, p1

    .line 29
    move-object v3, p2

    .line 30
    move-object v4, p3

    .line 31
    move-object v5, p4

    .line 32
    move-object v6, p5

    .line 33
    move-object v7, p6

    .line 34
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final reloadWatchlist()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->enforceWatchlistLoggingPermission()V

    .line 2
    .line 3
    .line 4
    const-string v0, "NetworkWatchlistService"

    .line 5
    .line 6
    const-string v1, "Reloading watchlist"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistConfig;->reloadConfig()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final reportWatchlistIfNecessary()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mNetworkWatchlistHandler:Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final startWatchlistLogging()Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->enforceWatchlistLoggingPermission()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->startWatchlistLoggingImpl()Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public startWatchlistLoggingImpl()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mLoggingSwitchLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIsLoggingEnabled:Z

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string p0, "NetworkWatchlistService"

    .line 10
    .line 11
    const-string v1, "Watchlist logging is already running"

    .line 12
    .line 13
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    return v2

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    .line 22
    .line 23
    iget-object v4, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mNetdEventCallback:Lcom/android/server/net/watchlist/NetworkWatchlistService$1;

    .line 24
    .line 25
    const/4 v5, 0x2

    .line 26
    invoke-interface {v3, v5, v4}, Landroid/net/IIpConnectivityMetrics;->addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    iput-boolean v2, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIsLoggingEnabled:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    :try_start_2
    monitor-exit v0

    .line 35
    return v2

    .line 36
    :cond_1
    monitor-exit v0

    .line 37
    return v1

    .line 38
    :catch_0
    monitor-exit v0

    .line 39
    return v1

    .line 40
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    throw p0
.end method

.method public final stopWatchlistLogging()Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->enforceWatchlistLoggingPermission()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->stopWatchlistLoggingImpl()Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public stopWatchlistLoggingImpl()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mLoggingSwitchLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIsLoggingEnabled:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string p0, "NetworkWatchlistService"

    .line 9
    .line 10
    const-string v1, "Watchlist logging is not running"

    .line 11
    .line 12
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIsLoggingEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    :try_start_1
    iget-object p0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-interface {p0, v2}, Landroid/net/IIpConnectivityMetrics;->removeNetdEventCallback(I)Z

    .line 27
    .line 28
    .line 29
    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :try_start_2
    monitor-exit v0

    .line 31
    return p0

    .line 32
    :catch_0
    monitor-exit v0

    .line 33
    return v1

    .line 34
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    throw p0
.end method
