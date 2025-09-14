.class public final Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;
.super Landroid/window/ITransitionMetricsReporter$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mMetricConsumers:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/window/ITransitionMetricsReporter$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;->mMetricConsumers:Landroid/util/ArrayMap;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final reportAnimationStart(Landroid/os/IBinder;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;->mMetricConsumers:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;->mMetricConsumers:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;->mMetricConsumers:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Ljava/util/function/LongConsumer;

    .line 23
    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    invoke-interface {p0, p2, p3}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void

    .line 31
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p0
.end method
