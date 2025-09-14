.class public final Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;
.super Landroid/net/INetdUnsolicitedEventListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/NetworkManagementService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkManagementService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    .line 3
    invoke-direct {p0}, Landroid/net/INetdUnsolicitedEventListener$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "2be6ff6fb01645cdddb3bb60f6de5727e5733267"

    .line 3
    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    .line 1
    const/16 p0, 0xf

    .line 3
    return p0
.end method

.method public final onInterfaceAdded(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    .line 3
    iget-object v0, v0, Lcom/android/server/net/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    .line 5
    new-instance v1, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda1;

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;I)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    return-void
.end method

.method public final onInterfaceAddressRemoved(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/LinkAddress;

    .line 3
    invoke-direct {v0, p1, p3, p4}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V

    .line 6
    iget-object p1, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    .line 8
    iget-object p1, p1, Lcom/android/server/net/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    .line 10
    new-instance p3, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda6;

    .line 12
    const/4 p4, 0x0

    .line 13
    invoke-direct {p3, p0, p2, v0, p4}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 16
    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    return-void
.end method

.method public final onInterfaceAddressUpdated(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/LinkAddress;

    .line 3
    invoke-direct {v0, p1, p3, p4}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V

    .line 6
    iget-object p1, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    .line 8
    iget-object p1, p1, Lcom/android/server/net/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    .line 10
    new-instance p3, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda6;

    .line 12
    const/4 p4, 0x1

    .line 13
    invoke-direct {p3, p0, p2, v0, p4}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 16
    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    return-void
.end method

.method public final onInterfaceChanged(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    .line 3
    iget-object v0, v0, Lcom/android/server/net/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    .line 5
    new-instance v1, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda2;

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;ZI)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    return-void
.end method

.method public final onInterfaceClassActivityChanged(ZIJI)V
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v0, p3, v0

    .line 5
    if-gtz v0, :cond_0

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 10
    move-result-wide p3

    .line 11
    :cond_0
    move-wide v4, p3

    .line 12
    iget-object p3, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    .line 14
    iget-object p3, p3, Lcom/android/server/net/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    .line 16
    new-instance p4, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda3;

    .line 18
    move-object v0, p4

    .line 19
    move-object v1, p0

    .line 20
    move v2, p2

    .line 21
    move v3, p1

    .line 22
    move v6, p5

    .line 23
    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;IZJI)V

    .line 26
    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    return-void
.end method

.method public final onInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    .line 3
    iget-object v0, v0, Lcom/android/server/net/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    .line 5
    new-instance v7, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda9;

    .line 7
    move-object v1, v7

    .line 8
    move-object v2, p0

    .line 9
    move-object v3, p1

    .line 10
    move-wide v4, p2

    .line 11
    move-object v6, p4

    .line 12
    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;J[Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    return-void
.end method

.method public final onInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    .line 3
    iget-object v0, v0, Lcom/android/server/net/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    .line 5
    new-instance v1, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda2;

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;ZI)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    return-void
.end method

.method public final onInterfaceRemoved(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    .line 3
    iget-object v0, v0, Lcom/android/server/net/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    .line 5
    new-instance v1, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda1;

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;I)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    return-void
.end method

.method public final onQuotaLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    .line 3
    iget-object v0, v0, Lcom/android/server/net/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    .line 5
    new-instance v1, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda6;

    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    return-void
.end method

.method public final onRouteChanged(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/net/RouteInfo;

    .line 3
    new-instance v1, Landroid/net/IpPrefix;

    .line 5
    invoke-direct {v1, p2}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    .line 8
    const-string p2, ""

    .line 10
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_0

    .line 16
    const/4 p2, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p3}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 21
    move-result-object p2

    .line 22
    :goto_0
    const/4 p3, 0x1

    .line 23
    invoke-direct {v0, v1, p2, p4, p3}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    .line 26
    iget-object p2, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    .line 28
    iget-object p2, p2, Lcom/android/server/net/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    .line 30
    new-instance p3, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda2;

    .line 32
    invoke-direct {p3, p0, p1, v0}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;ZLandroid/net/RouteInfo;)V

    .line 35
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    return-void
.end method

.method public final onStrictCleartextDetected(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    .line 8
    move-result-object p2

    .line 9
    invoke-interface {p0, p1, p2}, Landroid/app/IActivityManager;->notifyCleartextNetwork(I[B)V

    .line 12
    return-void
.end method
