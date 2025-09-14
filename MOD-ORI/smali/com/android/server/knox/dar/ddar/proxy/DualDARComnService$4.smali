.class public final Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

.field public final synthetic val$agentName:Ljava/lang/String;

.field public final synthetic val$command:Ljava/lang/String;

.field public final synthetic val$params:Landroid/os/Bundle;

.field public final synthetic val$svcName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;->val$agentName:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;->val$svcName:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;->val$command:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;->val$params:Landroid/os/Bundle;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "relayAsync from bg thread, relay start to System proxy agent : "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;->val$agentName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    new-array v2, v1, [Ljava/lang/Object;

    .line 20
    .line 21
    const-string v3, "DualDARComnService"

    .line 22
    .line 23
    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {}, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->getInstance()Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;->val$svcName:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v5, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;->val$command:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v6, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;->val$params:Landroid/os/Bundle;

    .line 43
    .line 44
    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 45
    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string/jumbo v2, "relayAsync from bg thread, relay end to System proxy agent : "

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$4;->val$agentName:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    new-array v0, v1, [Ljava/lang/Object;

    .line 65
    .line 66
    invoke-static {v3, p0, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
