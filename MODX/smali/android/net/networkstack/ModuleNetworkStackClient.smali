.class public Landroid/net/networkstack/ModuleNetworkStackClient;
.super Landroid/net/networkstack/NetworkStackClientBase;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field private static final TAG:Ljava/lang/String; = "ModuleNetworkStackClient"

.field private static sInstance:Landroid/net/networkstack/ModuleNetworkStackClient;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/net/networkstack/ModuleNetworkStackClient;->TAG:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/networkstack/NetworkStackClientBase;-><init>()V

    .line 4
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/net/networkstack/ModuleNetworkStackClient;
    .locals 1

    .line 1
    const-class p0, Landroid/net/networkstack/ModuleNetworkStackClient;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    sget-object v0, Landroid/net/networkstack/ModuleNetworkStackClient;->sInstance:Landroid/net/networkstack/ModuleNetworkStackClient;

    .line 6
    if-nez v0, :cond_0

    .line 8
    new-instance v0, Landroid/net/networkstack/ModuleNetworkStackClient;

    .line 10
    invoke-direct {v0}, Landroid/net/networkstack/ModuleNetworkStackClient;-><init>()V

    .line 13
    sput-object v0, Landroid/net/networkstack/ModuleNetworkStackClient;->sInstance:Landroid/net/networkstack/ModuleNetworkStackClient;

    .line 15
    invoke-direct {v0}, Landroid/net/networkstack/ModuleNetworkStackClient;->startPolling()V

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    sget-object v0, Landroid/net/networkstack/ModuleNetworkStackClient;->sInstance:Landroid/net/networkstack/ModuleNetworkStackClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    .line 24
    return-object v0

    .line 25
    :goto_1
    monitor-exit p0

    .line 26
    throw v0
.end method

.method public static declared-synchronized resetInstanceForTest()V
    .locals 2

    .line 1
    const-class v0, Landroid/net/networkstack/ModuleNetworkStackClient;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    sput-object v1, Landroid/net/networkstack/ModuleNetworkStackClient;->sInstance:Landroid/net/networkstack/ModuleNetworkStackClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0

    .line 11
    throw v1
.end method

.method private startPolling()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/net/NetworkStack;->getService()Landroid/os/IBinder;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-static {v0}, Landroid/net/INetworkStackConnector$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackConnector;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Landroid/net/networkstack/NetworkStackClientBase;->onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V

    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    .line 17
    new-instance v1, Landroid/net/networkstack/ModuleNetworkStackClient$PollingRunner;

    .line 19
    invoke-direct {v1, p0}, Landroid/net/networkstack/ModuleNetworkStackClient$PollingRunner;-><init>(Landroid/net/networkstack/ModuleNetworkStackClient;)V

    .line 22
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 25
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 28
    return-void
.end method
