.class public final synthetic Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

.field public final synthetic f$1:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$$ExternalSyntheticLambda0;->f$5:Landroid/os/Bundle;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$$ExternalSyntheticLambda0;->f$5:Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->connectProxyAgentSync(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string/jumbo v1, "relayAsync from bg thread, relay start to agent : "

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v5, 0x0

    .line 25
    new-array v6, v5, [Ljava/lang/Object;

    .line 26
    .line 27
    const-string v7, "DualDARComnService"

    .line 28
    .line 29
    invoke-static {v7, v1, v6}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {v0, v1, v3, v4, p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string p0, "ProxyAgentWrapper is NULL !"

    .line 43
    .line 44
    new-array v0, v5, [Ljava/lang/Object;

    .line 45
    .line 46
    invoke-static {v7, p0, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    const-string/jumbo p0, "relayAsync from bg thread, relay end to agent : "

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    new-array v0, v5, [Ljava/lang/Object;

    .line 57
    .line 58
    invoke-static {v7, p0, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
