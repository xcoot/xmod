.class public final Lcom/android/server/power/stats/PowerStatsCollector$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/stats/PowerStatsCollector;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/PowerStatsCollector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsCollector$1;->this$0:Lcom/android/server/power/stats/PowerStatsCollector;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAfterIsolatedUidRemoved(II)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/android/server/power/stats/PowerStatsCollector$1;->this$0:Lcom/android/server/power/stats/PowerStatsCollector;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/android/server/power/stats/PowerStatsCollector;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/power/stats/PowerStatsCollector$1$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/android/server/power/stats/PowerStatsCollector$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/PowerStatsCollector$1;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onBeforeIsolatedUidRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onIsolatedUidAdded(II)V
    .locals 0

    .line 1
    return-void
.end method
