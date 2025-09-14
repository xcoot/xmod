.class public final Lcom/android/server/wm/LegacyTransitionTracer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/TransitionTracer;


# instance fields
.field public volatile mActiveTracingEnabled:Z

.field public final mEnabledLock:Ljava/lang/Object;

.field public final mTraceBuffer:Lcom/android/internal/util/TraceBuffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/internal/util/TraceBuffer;

    .line 5
    .line 6
    const/16 v1, 0x3c00

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/android/internal/util/TraceBuffer;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/wm/LegacyTransitionTracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/Object;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/wm/LegacyTransitionTracer;->mEnabledLock:Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/android/server/wm/LegacyTransitionTracer;->mActiveTracingEnabled:Z

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final dumpTransitionTargetsToProto(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/wm/Transition;Ljava/util/ArrayList;)V
    .locals 9

    .line 1
    const-string v0, "TransitionTracer#dumpTransitionTargetsToProto"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/server/wm/LegacyTransitionTracer;->mActiveTracingEnabled:Z

    .line 7
    .line 8
    const-wide v1, 0x10500000001L

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget v0, p2, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 16
    .line 17
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget v0, p2, Lcom/android/server/wm/Transition;->mType:I

    .line 21
    .line 22
    const-wide v3, 0x10500000007L

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 28
    .line 29
    .line 30
    iget p2, p2, Lcom/android/server/wm/Transition;->mFlags:I

    .line 31
    .line 32
    const-wide v3, 0x10500000009L

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v3, v4, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 38
    .line 39
    .line 40
    const/4 p2, 0x0

    .line 41
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-ge p2, v0, :cond_3

    .line 46
    .line 47
    const-wide v3, 0x20b00000008L

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 53
    .line 54
    .line 55
    move-result-wide v3

    .line 56
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 61
    .line 62
    iget-object v5, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 63
    .line 64
    iget-object v5, v5, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 65
    .line 66
    invoke-virtual {v5}, Landroid/view/SurfaceControl;->isValid()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_1

    .line 71
    .line 72
    iget-object v5, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 73
    .line 74
    iget-object v5, v5, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 75
    .line 76
    invoke-virtual {v5}, Landroid/view/SurfaceControl;->getLayerId()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    const/4 v5, -0x1

    .line 82
    :goto_1
    iget v6, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mReadyMode:I

    .line 83
    .line 84
    invoke-virtual {p1, v1, v2, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 85
    .line 86
    .line 87
    const-wide v6, 0x10500000004L

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    iget v8, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mReadyFlags:I

    .line 93
    .line 94
    invoke-virtual {p1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 95
    .line 96
    .line 97
    const-wide v6, 0x10500000002L

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 103
    .line 104
    .line 105
    iget-boolean v5, p0, Lcom/android/server/wm/LegacyTransitionTracer;->mActiveTracingEnabled:Z

    .line 106
    .line 107
    if-eqz v5, :cond_2

    .line 108
    .line 109
    iget-object v0, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 110
    .line 111
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    const-wide v5, 0x10500000003L

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 121
    .line 122
    .line 123
    :cond_2
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 124
    .line 125
    .line 126
    add-int/lit8 p2, p2, 0x1

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public final isTracing()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/wm/LegacyTransitionTracer;->mActiveTracingEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final logAbortedTransition(Lcom/android/server/wm/Transition;)V
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-wide v1, 0x20b00000002L

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    iget v3, p1, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 18
    .line 19
    const-wide v4, 0x10500000001L

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p1, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    .line 28
    .line 29
    iget-wide v3, p1, Lcom/android/server/wm/TransitionController$Logger;->mAbortTimeNs:J

    .line 30
    .line 31
    const-wide v5, 0x1030000000aL

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/wm/LegacyTransitionTracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    const-string p1, "TransitionTracer"

    .line 50
    .line 51
    const-string v0, "Unexpected exception thrown while logging transitions"

    .line 52
    .line 53
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method public final logFinishedTransition(Lcom/android/server/wm/Transition;)V
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-wide v1, 0x20b00000002L

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    iget v3, p1, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 18
    .line 19
    const-wide v4, 0x10500000001L

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p1, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    .line 28
    .line 29
    iget-wide v3, p1, Lcom/android/server/wm/TransitionController$Logger;->mFinishTimeNs:J

    .line 30
    .line 31
    const-wide v5, 0x10300000006L

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/wm/LegacyTransitionTracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    const-string p1, "TransitionTracer"

    .line 50
    .line 51
    const-string v0, "Unexpected exception thrown while logging transitions"

    .line 52
    .line 53
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method public final logRemovingStartingWindow(Lcom/android/server/wm/StartingData;)V
    .locals 7

    .line 1
    iget v0, p1, Lcom/android/server/wm/StartingData;->mTransitionId:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    .line 7
    .line 8
    const/16 v1, 0x40

    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(I)V

    .line 11
    .line 12
    .line 13
    const-wide v1, 0x20b00000002L

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    iget p1, p1, Lcom/android/server/wm/StartingData;->mTransitionId:I

    .line 23
    .line 24
    const-wide v3, 0x10500000001L

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3, v4, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    const-wide v5, 0x1030000000bL

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/wm/LegacyTransitionTracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p0

    .line 54
    const-string p1, "TransitionTracer"

    .line 55
    .line 56
    const-string v0, "Unexpected exception thrown while logging transitions"

    .line 57
    .line 58
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void
.end method

.method public final logSentTransition(Lcom/android/server/wm/Transition;Ljava/util/ArrayList;)V
    .locals 9

    .line 1
    :try_start_0
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-wide v1, 0x20b00000002L

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    iget v3, p1, Lcom/android/server/wm/Transition;->mSyncId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    iget-object v4, p1, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    .line 20
    .line 21
    const-wide v5, 0x10500000001L

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    :try_start_1
    invoke-virtual {v0, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 27
    .line 28
    .line 29
    iget-wide v5, v4, Lcom/android/server/wm/TransitionController$Logger;->mCreateTimeNs:J

    .line 30
    .line 31
    const-wide v7, 0x10300000004L

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 37
    .line 38
    .line 39
    iget-wide v3, v4, Lcom/android/server/wm/TransitionController$Logger;->mSendTimeNs:J

    .line 40
    .line 41
    const-wide v5, 0x10300000005L

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->getStartTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->getId()J

    .line 54
    .line 55
    .line 56
    move-result-wide v3

    .line 57
    const-wide v5, 0x10400000002L

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->getFinishTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->getId()J

    .line 70
    .line 71
    .line 72
    move-result-wide v3

    .line 73
    const-wide v5, 0x10400000003L

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/LegacyTransitionTracer;->dumpTransitionTargetsToProto(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/wm/Transition;Ljava/util/ArrayList;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 85
    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/server/wm/LegacyTransitionTracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 88
    .line 89
    invoke-virtual {p0, v0}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catch_0
    move-exception p0

    .line 94
    const-string p1, "TransitionTracer"

    .line 95
    .line 96
    const-string p2, "Unexpected exception thrown while logging transitions"

    .line 97
    .line 98
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .line 100
    .line 101
    :goto_0
    return-void
.end method

.method public final saveForBugreport(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lcom/android/server/wm/LegacyTransitionTracer$LogAndPrintln;->-$$Nest$sme(Ljava/io/PrintWriter;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string v0, "TransitionTracer#saveForBugreport"

    .line 10
    .line 11
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/wm/LegacyTransitionTracer;->mEnabledLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 18
    .line 19
    const-string v2, "/data/misc/wmtrace/wm_transition_trace.winscope"

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/LegacyTransitionTracer;->writeTraceToFileLocked(Ljava/io/File;Ljava/io/PrintWriter;)V

    .line 25
    .line 26
    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p0
.end method

.method public final startTrace(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lcom/android/server/wm/LegacyTransitionTracer$LogAndPrintln;->-$$Nest$sme(Ljava/io/PrintWriter;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string v0, "TransitionTracer#startTrace"

    .line 10
    .line 11
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "Starting shell transition trace."

    .line 15
    .line 16
    const-string v1, "TransitionTracer"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/LegacyTransitionTracer;->mEnabledLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter p1

    .line 32
    const/4 v0, 0x1

    .line 33
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/wm/LegacyTransitionTracer;->mActiveTracingEnabled:Z

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/wm/LegacyTransitionTracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/wm/LegacyTransitionTracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 41
    .line 42
    const v0, 0x4e2000

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/android/internal/util/TraceBuffer;->setCapacity(I)V

    .line 46
    .line 47
    .line 48
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    throw p0
.end method

.method public final stopTrace(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/data/misc/wmtrace/wm_transition_trace.winscope"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-boolean v1, Landroid/os/Build;->IS_USER:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lcom/android/server/wm/LegacyTransitionTracer$LogAndPrintln;->-$$Nest$sme(Ljava/io/PrintWriter;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v1, "TransitionTracer#stopTrace"

    .line 17
    .line 18
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "Stopping shell transition trace."

    .line 22
    .line 23
    const-string v2, "TransitionTracer"

    .line 24
    .line 25
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/LegacyTransitionTracer;->mEnabledLock:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-enter v1

    .line 39
    const/4 v2, 0x0

    .line 40
    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/wm/LegacyTransitionTracer;->mActiveTracingEnabled:Z

    .line 41
    .line 42
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/LegacyTransitionTracer;->writeTraceToFileLocked(Ljava/io/File;Ljava/io/PrintWriter;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/server/wm/LegacyTransitionTracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/wm/LegacyTransitionTracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 51
    .line 52
    const/16 p1, 0x3c00

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/internal/util/TraceBuffer;->setCapacity(I)V

    .line 55
    .line 56
    .line 57
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    throw p0
.end method

.method public final writeTraceToFileLocked(Ljava/io/File;Ljava/io/PrintWriter;)V
    .locals 7

    .line 1
    const-string v0, "TransitionTracer"

    .line 2
    .line 3
    const-string v1, "Writing file to "

    .line 4
    .line 5
    const-string v2, "TransitionTracer#writeTraceToFileLocked"

    .line 6
    .line 7
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    .line 11
    .line 12
    const/16 v3, 0x40

    .line 13
    .line 14
    invoke-direct {v2, v3}, Landroid/util/proto/ProtoOutputStream;-><init>(I)V

    .line 15
    .line 16
    .line 17
    const-wide v3, 0x10600000001L

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    const-wide v5, 0x45434152544e5254L    # 4.655612620392399E25

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 28
    .line 29
    .line 30
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 31
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v4

    .line 36
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 41
    .line 42
    .line 43
    move-result-wide v5

    .line 44
    sub-long/2addr v3, v5

    .line 45
    const-wide v5, 0x10600000003L

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v1, " from process "

    .line 70
    .line 71
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    if-eqz p2, :cond_0

    .line 85
    .line 86
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 90
    .line 91
    .line 92
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/LegacyTransitionTracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 93
    .line 94
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/util/TraceBuffer;->writeTraceToFile(Ljava/io/File;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catch_0
    move-exception p0

    .line 99
    const-string p1, "Unable to write buffer to file"

    .line 100
    .line 101
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .line 103
    .line 104
    if-eqz p2, :cond_1

    .line 105
    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v0, "ERROR: Unable to write buffer to file ::\n "

    .line 109
    .line 110
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 124
    .line 125
    .line 126
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 127
    .line 128
    .line 129
    return-void
.end method
