.class public final synthetic Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/tracing/perfetto/TraceFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/PerfettoTransitionTracer;

.field public final synthetic f$1:Lcom/android/server/wm/Transition;

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/PerfettoTransitionTracer;Lcom/android/server/wm/Transition;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/PerfettoTransitionTracer;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/wm/Transition;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda5;->f$2:Ljava/util/ArrayList;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final trace(Landroid/tracing/perfetto/TracingContext;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/PerfettoTransitionTracer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/wm/Transition;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda5;->f$2:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-wide v2, 0x10b00000060L

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    iget v0, v1, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 24
    .line 25
    const-wide v4, 0x10500000001L

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 31
    .line 32
    .line 33
    iget-object v0, v1, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    .line 34
    .line 35
    iget-wide v6, v0, Lcom/android/server/wm/TransitionController$Logger;->mCreateTimeNs:J

    .line 36
    .line 37
    const-wide v8, 0x10300000002L

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 43
    .line 44
    .line 45
    const-wide v6, 0x10300000003L

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    iget-wide v8, v0, Lcom/android/server/wm/TransitionController$Logger;->mSendTimeNs:J

    .line 51
    .line 52
    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/android/server/wm/Transition;->getStartTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->getId()J

    .line 60
    .line 61
    .line 62
    move-result-wide v6

    .line 63
    const-wide v8, 0x1040000000aL

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/android/server/wm/Transition;->getFinishTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->getId()J

    .line 76
    .line 77
    .line 78
    move-result-wide v6

    .line 79
    const-wide v8, 0x1040000000bL

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 85
    .line 86
    .line 87
    const-wide v6, 0x1050000000dL

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    iget v0, v1, Lcom/android/server/wm/Transition;->mType:I

    .line 93
    .line 94
    invoke-virtual {p1, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 95
    .line 96
    .line 97
    iget v0, v1, Lcom/android/server/wm/Transition;->mFlags:I

    .line 98
    .line 99
    const-wide v6, 0x10500000010L

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 105
    .line 106
    .line 107
    const/4 v0, 0x0

    .line 108
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-ge v0, v1, :cond_1

    .line 113
    .line 114
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 119
    .line 120
    iget-object v6, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 121
    .line 122
    iget-object v6, v6, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 123
    .line 124
    invoke-virtual {v6}, Landroid/view/SurfaceControl;->isValid()Z

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    iget-object v7, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 129
    .line 130
    if-eqz v6, :cond_0

    .line 131
    .line 132
    iget-object v6, v7, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 133
    .line 134
    invoke-virtual {v6}, Landroid/view/SurfaceControl;->getLayerId()I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    goto :goto_1

    .line 139
    :cond_0
    const/4 v6, -0x1

    .line 140
    :goto_1
    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    const-wide v8, 0x20b0000000eL

    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 150
    .line 151
    .line 152
    move-result-wide v8

    .line 153
    iget v10, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mReadyMode:I

    .line 154
    .line 155
    invoke-virtual {p1, v4, v5, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 156
    .line 157
    .line 158
    const-wide v10, 0x10500000004L

    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    iget v1, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mReadyFlags:I

    .line 164
    .line 165
    invoke-virtual {p1, v10, v11, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 166
    .line 167
    .line 168
    const-wide v10, 0x10500000002L

    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, v10, v11, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 174
    .line 175
    .line 176
    const-wide v10, 0x10500000003L

    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 185
    .line 186
    .line 187
    add-int/lit8 v0, v0, 0x1

    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 191
    .line 192
    .line 193
    return-void
.end method
