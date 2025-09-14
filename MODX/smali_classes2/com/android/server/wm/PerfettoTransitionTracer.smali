.class public final Lcom/android/server/wm/PerfettoTransitionTracer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/TransitionTracer;


# instance fields
.field public final mActiveTraces:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mDataSource:Landroid/tracing/transition/TransitionDataSource;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/wm/PerfettoTransitionTracer;->mActiveTraces:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    new-instance v2, Landroid/tracing/transition/TransitionDataSource;

    .line 13
    .line 14
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    new-instance v3, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-direct {v3, v0, v4}, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;I)V

    .line 21
    .line 22
    .line 23
    new-instance v4, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda2;

    .line 24
    .line 25
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    new-instance v5, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    const/4 v6, 0x1

    .line 34
    invoke-direct {v5, v0, v6}, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;I)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, v3, v4, v5}, Landroid/tracing/transition/TransitionDataSource;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Lcom/android/server/wm/PerfettoTransitionTracer;->mDataSource:Landroid/tracing/transition/TransitionDataSource;

    .line 41
    .line 42
    sget-object p0, Landroid/tracing/perfetto/InitArguments;->DEFAULTS:Landroid/tracing/perfetto/InitArguments;

    .line 43
    .line 44
    invoke-static {p0}, Landroid/tracing/perfetto/Producer;->init(Landroid/tracing/perfetto/InitArguments;)V

    .line 45
    .line 46
    .line 47
    new-instance p0, Landroid/tracing/perfetto/DataSourceParams$Builder;

    .line 48
    .line 49
    invoke-direct {p0}, Landroid/tracing/perfetto/DataSourceParams$Builder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v1}, Landroid/tracing/perfetto/DataSourceParams$Builder;->setBufferExhaustedPolicy(I)Landroid/tracing/perfetto/DataSourceParams$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Landroid/tracing/perfetto/DataSourceParams$Builder;->build()Landroid/tracing/perfetto/DataSourceParams;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {v2, p0}, Landroid/tracing/transition/TransitionDataSource;->register(Landroid/tracing/perfetto/DataSourceParams;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public final isTracing()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/PerfettoTransitionTracer;->mActiveTraces:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-lez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final logAbortedTransition(Lcom/android/server/wm/Transition;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/PerfettoTransitionTracer;->isTracing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-wide/16 v0, 0x20

    .line 9
    .line 10
    const-string v2, "logAbortedTransition"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/PerfettoTransitionTracer;->mDataSource:Landroid/tracing/transition/TransitionDataSource;

    .line 16
    .line 17
    new-instance v2, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda2;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-direct {v2, v3, p1}, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v2}, Landroid/tracing/transition/TransitionDataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 32
    .line 33
    .line 34
    throw p0
.end method

.method public final logFinishedTransition(Lcom/android/server/wm/Transition;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/PerfettoTransitionTracer;->isTracing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-wide/16 v0, 0x20

    .line 9
    .line 10
    const-string v2, "logFinishedTransition"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/PerfettoTransitionTracer;->mDataSource:Landroid/tracing/transition/TransitionDataSource;

    .line 16
    .line 17
    new-instance v2, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda2;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v3, p1}, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v2}, Landroid/tracing/transition/TransitionDataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 32
    .line 33
    .line 34
    throw p0
.end method

.method public final logRemovingStartingWindow(Lcom/android/server/wm/StartingData;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/PerfettoTransitionTracer;->isTracing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-wide/16 v0, 0x20

    .line 9
    .line 10
    const-string v2, "logRemovingStartingWindow"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/PerfettoTransitionTracer;->mDataSource:Landroid/tracing/transition/TransitionDataSource;

    .line 16
    .line 17
    new-instance v2, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda2;

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    invoke-direct {v2, v3, p1}, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v2}, Landroid/tracing/transition/TransitionDataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 32
    .line 33
    .line 34
    throw p0
.end method

.method public final logSentTransition(Lcom/android/server/wm/Transition;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/PerfettoTransitionTracer;->isTracing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-wide/16 v0, 0x20

    .line 9
    .line 10
    const-string v2, "logSentTransition"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/PerfettoTransitionTracer;->mDataSource:Landroid/tracing/transition/TransitionDataSource;

    .line 16
    .line 17
    new-instance v3, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda5;

    .line 18
    .line 19
    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/PerfettoTransitionTracer;Lcom/android/server/wm/Transition;Ljava/util/ArrayList;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v3}, Landroid/tracing/transition/TransitionDataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public final saveForBugreport(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final startTrace(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final stopTrace(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    return-void
.end method
