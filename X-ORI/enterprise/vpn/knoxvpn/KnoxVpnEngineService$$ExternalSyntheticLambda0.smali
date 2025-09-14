.class public final synthetic Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/16 v1, 0x10

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    const-class v2, Landroid/net/ConnectivityManager;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 35
    .line 36
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 37
    .line 38
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetworkCallback:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$1;

    .line 45
    .line 46
    invoke-virtual {v1, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
