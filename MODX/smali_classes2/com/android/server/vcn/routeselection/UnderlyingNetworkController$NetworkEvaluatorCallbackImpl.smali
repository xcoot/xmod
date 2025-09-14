.class Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkEvaluatorCallbackImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator$NetworkEvaluatorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkEvaluatorCallbackImpl;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onEvaluationResultChanged()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkEvaluatorCallbackImpl;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->isFlagNetworkMetricMonitorEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/android/server/vcn/VcnContext;->isFlagIpSecTransformStateEnabled()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->reevaluateNetworks()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    :goto_0
    const-string v0, "#onEvaluationResultChanged: unexpected call; flags missing"

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->logWtf(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
