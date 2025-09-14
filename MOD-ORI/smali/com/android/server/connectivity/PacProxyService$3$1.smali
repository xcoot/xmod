.class public final Lcom/android/server/connectivity/PacProxyService$3$1;
.super Lcom/android/net/IProxyPortListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/connectivity/PacProxyService$2;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/PacProxyService$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService$3$1;->this$1:Lcom/android/server/connectivity/PacProxyService$2;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/net/IProxyPortListener$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final setProxyPort(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService$3$1;->this$1:Lcom/android/server/connectivity/PacProxyService$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    .line 4
    .line 5
    iget v1, v0, Lcom/android/server/connectivity/PacProxyService;->mLastPort:I

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, v0, Lcom/android/server/connectivity/PacProxyService;->mHasSentBroadcast:Z

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService$3$1;->this$1:Lcom/android/server/connectivity/PacProxyService$2;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    .line 16
    .line 17
    iput p1, v0, Lcom/android/server/connectivity/PacProxyService;->mLastPort:I

    .line 18
    .line 19
    const-string v0, "PacProxyService"

    .line 20
    .line 21
    if-eq p1, v2, :cond_1

    .line 22
    .line 23
    const-string v1, "Local proxy is bound on "

    .line 24
    .line 25
    invoke-static {p1, v1, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService$3$1;->this$1:Lcom/android/server/connectivity/PacProxyService$2;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    .line 31
    .line 32
    invoke-static {p0}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$msendProxyIfNeeded(Lcom/android/server/connectivity/PacProxyService;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string p0, "Received invalid port from Local Proxy, PAC will not be operational"

    .line 37
    .line 38
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method
