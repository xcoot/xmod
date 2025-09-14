.class public final synthetic Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;IIII)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda2;->f$1:I

    .line 6
    .line 7
    iput p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda2;->f$2:I

    .line 8
    .line 9
    iput p4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda2;->f$3:I

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;

    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda2;->f$1:I

    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda2;->f$2:I

    .line 11
    .line 12
    iget p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda2;->f$3:I

    .line 13
    .line 14
    check-cast p1, Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    iput-wide v3, v0, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->mStartTimeMillis:J

    .line 24
    .line 25
    invoke-interface {p1, v1, v2, p0}, Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;->onStart(III)V

    .line 26
    .line 27
    .line 28
    new-instance p0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string/jumbo v1, "notifyStateChangeStart: "

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v1

    .line 47
    iget-wide v3, v0, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->mStartTimeMillis:J

    .line 48
    .line 49
    sub-long/2addr v1, v3

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p0, " took "

    .line 59
    .line 60
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p0, " ms"

    .line 67
    .line 68
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    const-string p1, "LocalDisplayAdapter"

    .line 76
    .line 77
    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;

    .line 82
    .line 83
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda2;->f$1:I

    .line 84
    .line 85
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda2;->f$2:I

    .line 86
    .line 87
    iget p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda2;->f$3:I

    .line 88
    .line 89
    check-cast p1, Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 95
    .line 96
    .line 97
    move-result-wide v3

    .line 98
    iput-wide v3, v0, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->mStartTimeMillis:J

    .line 99
    .line 100
    invoke-interface {p1, v1, v2, p0}, Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;->onFinish(III)V

    .line 101
    .line 102
    .line 103
    new-instance p0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string/jumbo v1, "notifyStateChangeFinish: "

    .line 106
    .line 107
    .line 108
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 119
    .line 120
    .line 121
    move-result-wide v1

    .line 122
    iget-wide v3, v0, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->mStartTimeMillis:J

    .line 123
    .line 124
    sub-long/2addr v1, v3

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string p0, " took "

    .line 134
    .line 135
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string p0, " ms"

    .line 142
    .line 143
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    const-string p1, "LocalDisplayAdapter"

    .line 151
    .line 152
    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    nop

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
