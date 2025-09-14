.class public final Landroid/net/NetworkStackClient$DependenciesImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/NetworkStackClient$Dependencies;


# virtual methods
.method public final addToServiceManager(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    const/4 p0, 0x0

    .line 2
    const/4 v0, 0x6

    .line 3
    const-string/jumbo v1, "network_stack"

    .line 6
    invoke-static {v1, p1, p0, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 9
    return-void
.end method

.method public final checkCallerUid()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x3e8

    .line 7
    if-eq p0, v0, :cond_1

    .line 9
    const/16 v0, 0x431

    .line 11
    if-eq p0, v0, :cond_1

    .line 13
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 16
    move-result p0

    .line 17
    const/16 v0, 0x3ea

    .line 19
    if-ne p0, v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 24
    const-string v0, "Only the system server should try to bind to the network stack."

    .line 26
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p0

    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public final getConnectivityModuleConnector()Landroid/net/ConnectivityModuleConnector;
    .locals 0

    .line 1
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
