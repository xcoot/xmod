.class public final Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sInstance:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

.field public static final sLock:Ljava/lang/Object;


# instance fields
.field public volatile mCallbackRegistered:Z

.field public mConnectivityCallback:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$1;

.field public mContext:Landroid/content/Context;

.field public volatile mDomainFilterEnabled:Z

.field public volatile mDomainFilterOnIptablesEnabled:Z

.field public volatile mNapEnabled:Z

.field public volatile mNetworksUpdated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->sLock:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->sInstance:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    .line 3
    if-nez v0, :cond_1

    .line 5
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->sLock:Ljava/lang/Object;

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->sInstance:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    .line 10
    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v2, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$1;

    .line 19
    invoke-direct {v2, v0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$1;-><init>(Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;)V

    .line 22
    iput-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mConnectivityCallback:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$1;

    .line 24
    iput-object p0, v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mContext:Landroid/content/Context;

    .line 26
    sput-object v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->sInstance:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    monitor-exit v1

    .line 32
    goto :goto_2

    .line 33
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0

    .line 35
    :cond_1
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final registerConnectivityCallback()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "registerConnectivityCallback "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-boolean v1, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mCallbackRegistered:Z

    .line 11
    const-string v2, "DomainFilterNapCommon"

    .line 13
    invoke-static {v2, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 16
    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mCallbackRegistered:Z

    .line 18
    if-eqz v0, :cond_0

    .line 20
    return-void

    .line 21
    :cond_0
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    .line 23
    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x4

    .line 37
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 40
    move-result-object v0

    .line 41
    const/4 v1, 0x3

    .line 42
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mContext:Landroid/content/Context;

    .line 48
    const-class v2, Landroid/net/ConnectivityManager;

    .line 50
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 56
    if-eqz v1, :cond_1

    .line 58
    new-instance v2, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda2;

    .line 60
    invoke-direct {v2, p0, v1, v0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;Landroid/net/ConnectivityManager;Landroid/net/NetworkRequest$Builder;)V

    .line 63
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 66
    :cond_1
    return-void
.end method

.method public final setDomainFilterEnabled(Z)V
    .locals 2

    .line 1
    const-string/jumbo v0, "setDomainFilterEnabled "

    .line 4
    const-string v1, "DomainFilterNapCommon"

    .line 6
    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    iput-boolean p1, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mDomainFilterEnabled:Z

    .line 11
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->updateEnforceDnsUidForAllNetworks()V

    .line 14
    return-void
.end method

.method public final setDomainFilterOnIptablesEnabled(Z)V
    .locals 2

    .line 1
    const-string/jumbo v0, "setDomainFilterOnIptablesEnabled "

    .line 4
    const-string v1, "DomainFilterNapCommon"

    .line 6
    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    iput-boolean p1, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mDomainFilterOnIptablesEnabled:Z

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->setNapProperty(Z)V

    .line 14
    return-void
.end method

.method public final setNapProperty(Z)V
    .locals 2

    .line 1
    const-string/jumbo v0, "setNapProperty "

    .line 4
    const-string v1, "DomainFilterNapCommon"

    .line 6
    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    if-nez p1, :cond_0

    .line 11
    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mDomainFilterOnIptablesEnabled:Z

    .line 13
    if-nez v0, :cond_1

    .line 15
    iget-boolean p0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mNapEnabled:Z

    .line 17
    if-nez p0, :cond_1

    .line 19
    :cond_0
    new-instance p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda1;

    .line 21
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda1;-><init>(Z)V

    .line 24
    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 27
    :cond_1
    return-void
.end method

.method public final declared-synchronized updateEnforceDnsUidForAllNetworks()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mNetworksUpdated:Z

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mNapEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mDomainFilterEnabled:Z

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    const-string v0, "DomainFilterNapCommon"

    const-string v1, "Already updated networks, leaving"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 5
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mNetworksUpdated:Z

    if-eqz v0, :cond_5

    .line 6
    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mNapEnabled:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mDomainFilterEnabled:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    const-string v0, "DomainFilterNapCommon"

    const-string v1, "Features are disabled, reverting enforce dns uid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mNetworksUpdated:Z

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->updateEnforceDnsUidForAllNetworks(Z)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unregisterConnectivityCallback "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mCallbackRegistered:Z

    const-string v2, "DomainFilterNapCommon"

    .line 11
    invoke-static {v2, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 12
    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mCallbackRegistered:Z

    if-nez v0, :cond_3

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_4

    .line 14
    new-instance v1, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;Landroid/net/ConnectivityManager;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    .line 16
    :cond_5
    :goto_1
    :try_start_2
    const-string v0, "DomainFilterNapCommon"

    const-string v1, "Feature enabled, enforcing dns uid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mNetworksUpdated:Z

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->updateEnforceDnsUidForAllNetworks(Z)V

    .line 19
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->registerConnectivityCallback()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public final updateEnforceDnsUidForAllNetworks(Z)V
    .locals 6

    .line 24
    const-string/jumbo v0, "updateEnforceDnsUidForAllNetworks "

    const-string v1, "DomainFilterNapCommon"

    .line 25
    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 26
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_0

    .line 27
    const-string p0, "Failed to get connectivity manager instance"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 28
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 29
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 30
    invoke-virtual {v2}, Landroid/net/Network;->getNetId()I

    move-result v2

    .line 31
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    move-result-object v3

    .line 32
    const-string v4, "DnsResolverAdapter"

    const-string/jumbo v5, "updateEnforceDnsUidForNetwork - entered"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v5, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2, p1}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda0;-><init>(IZ)V

    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->runWithExceptionHandling(Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$CheckedRemoteRequest;)V

    .line 34
    const-string/jumbo v2, "updateEnforceDnsUidForNetwork - exited"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
