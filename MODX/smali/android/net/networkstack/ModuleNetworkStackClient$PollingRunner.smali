.class public final Landroid/net/networkstack/ModuleNetworkStackClient$PollingRunner;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroid/net/networkstack/ModuleNetworkStackClient;


# direct methods
.method public constructor <init>(Landroid/net/networkstack/ModuleNetworkStackClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroid/net/networkstack/ModuleNetworkStackClient$PollingRunner;->this$0:Landroid/net/networkstack/ModuleNetworkStackClient;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :goto_0
    invoke-static {}, Landroid/net/NetworkStack;->getService()Landroid/os/IBinder;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-wide/16 v0, 0xc8

    .line 9
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    invoke-static {}, Landroid/net/networkstack/ModuleNetworkStackClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    const-string v2, "Interrupted while waiting for NetworkStack connector"

    .line 20
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p0, p0, Landroid/net/networkstack/ModuleNetworkStackClient$PollingRunner;->this$0:Landroid/net/networkstack/ModuleNetworkStackClient;

    .line 26
    invoke-static {v0}, Landroid/net/INetworkStackConnector$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackConnector;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0, v0}, Landroid/net/networkstack/NetworkStackClientBase;->onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V

    .line 33
    return-void
.end method
