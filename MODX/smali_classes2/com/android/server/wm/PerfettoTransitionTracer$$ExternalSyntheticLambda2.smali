.class public final synthetic Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/tracing/perfetto/TraceFunction;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final trace(Landroid/tracing/perfetto/TracingContext;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/android/server/wm/StartingData;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-wide v0, 0x10b00000060L

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    const-wide v2, 0x10500000001L

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    iget p0, p0, Lcom/android/server/wm/StartingData;->mTransitionId:I

    .line 29
    .line 30
    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 31
    .line 32
    .line 33
    const-wide v2, 0x10300000011L

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_0
    check-cast p0, Lcom/android/server/wm/Transition;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-wide v0, 0x10b00000060L

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    iget v2, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 65
    .line 66
    const-wide v3, 0x10500000001L

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 72
    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    .line 75
    .line 76
    iget-wide v2, p0, Lcom/android/server/wm/TransitionController$Logger;->mAbortTimeNs:J

    .line 77
    .line 78
    const-wide v4, 0x10300000008L

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :pswitch_1
    check-cast p0, Lcom/android/server/wm/Transition;

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const-wide v0, 0x10b00000060L

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 102
    .line 103
    .line 104
    move-result-wide v0

    .line 105
    iget v2, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 106
    .line 107
    const-wide v3, 0x10500000001L

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 113
    .line 114
    .line 115
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    .line 116
    .line 117
    iget-wide v2, p0, Lcom/android/server/wm/TransitionController$Logger;->mFinishTimeNs:J

    .line 118
    .line 119
    const-wide v4, 0x10300000009L

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
