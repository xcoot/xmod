.class public final Lcom/android/server/wm/LaunchObserverRegistryImpl;
.super Lcom/android/server/wm/ActivityMetricsLaunchObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final onActivityLaunchCancelled(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, v2}, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda0;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onActivityLaunchFinished(JLandroid/content/ComponentName;JI)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda2;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2}, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda2;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    move-object v2, p0

    .line 22
    move-object v4, p3

    .line 23
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onActivityLaunched(IIJLandroid/content/ComponentName;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda2;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, v2}, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda2;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    move-object v2, p0

    .line 22
    move-object v4, p5

    .line 23
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onIntentFailed(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-direct {v1, v2}, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda0;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onIntentStarted(Landroid/content/Intent;J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda3;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2}, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda3;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-static {v1, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onReportFullyDrawn(JJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda3;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, v2}, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda3;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {v1, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method
