.class public final Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sInstance:Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

.field public static final sLock:Ljava/lang/Object;


# instance fields
.field public volatile mDnsResolver:Landroid/net/IDnsResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->sLock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public static getInstance()Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->sInstance:Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->sLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->sInstance:Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->sInstance:Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v1

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v0

    .line 26
    :cond_1
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final runWithExceptionHandling(Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$CheckedRemoteRequest;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->mDnsResolver:Landroid/net/IDnsResolver;

    .line 2
    .line 3
    const-string v1, "DnsResolverAdapter"

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const-string/jumbo v0, "dnsresolver"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const-string/jumbo v0, "updateEnforceDnsUidForNetwork: Failed to get binder for dns resolver service"

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/net/IDnsResolver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IDnsResolver;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->mDnsResolver:Landroid/net/IDnsResolver;

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->mDnsResolver:Landroid/net/IDnsResolver;

    .line 35
    .line 36
    :goto_0
    if-nez v0, :cond_2

    .line 37
    .line 38
    const-string p0, "Failed to get dns resolver service"

    .line 39
    .line 40
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->mDnsResolver:Landroid/net/IDnsResolver;

    .line 45
    .line 46
    invoke-interface {p1, p0}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$CheckedRemoteRequest;->execute(Landroid/net/IDnsResolver;)V

    .line 47
    .line 48
    .line 49
    const-string/jumbo p0, "dnsresolver called successfully"

    .line 50
    .line 51
    .line 52
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catch_0
    move-exception p0

    .line 57
    const-string p1, "Error calling dnsresolver service: "

    .line 58
    .line 59
    invoke-static {p0, p1, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_1
    return-void
.end method
