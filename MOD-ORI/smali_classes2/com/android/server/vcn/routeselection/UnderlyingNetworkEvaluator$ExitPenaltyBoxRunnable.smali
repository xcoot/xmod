.class public final Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator$ExitPenaltyBoxRunnable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator$ExitPenaltyBoxRunnable;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator$ExitPenaltyBoxRunnable;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mIsPenalized:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "Evaluator not being penalized but ExitPenaltyBoxRunnable was scheduled"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->logWtf(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mIsPenalized:Z

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mEvaluatorCallback:Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator$NetworkEvaluatorCallback;

    .line 17
    .line 18
    check-cast p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkEvaluatorCallbackImpl;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkEvaluatorCallbackImpl;->onEvaluationResultChanged()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
