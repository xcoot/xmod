.class public final Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/sqd/IbsQuickDim;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$misSqdCanWork(Lcom/android/server/ibs/sqd/IbsQuickDim;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    .line 11
    .line 12
    const-string v0, "IbsQuickDim"

    .line 13
    .line 14
    const-wide/16 v1, 0x1f40

    .line 15
    .line 16
    const/4 v3, -0x2

    .line 17
    const/4 v4, -0x1

    .line 18
    const/4 v5, 0x2

    .line 19
    const/4 v6, 0x1

    .line 20
    if-eq p1, v6, :cond_7

    .line 21
    .line 22
    if-eq p1, v5, :cond_3

    .line 23
    .line 24
    const/4 v0, 0x3

    .line 25
    if-eq p1, v0, :cond_2

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    if-eq p1, v0, :cond_1

    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :cond_1
    iput v4, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastFPS:I

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->removeAllmessage()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->removeAllmessage()V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    .line 42
    .line 43
    invoke-virtual {p0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    iget p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    .line 48
    .line 49
    if-ne p1, v6, :cond_4

    .line 50
    .line 51
    return-void

    .line 52
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->getFpsFromSurfaceFlinger()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-ne p1, v3, :cond_5

    .line 57
    .line 58
    return-void

    .line 59
    :cond_5
    iget v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastFPS:I

    .line 60
    .line 61
    if-eq p1, v3, :cond_6

    .line 62
    .line 63
    iput p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastFPS:I

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    .line 66
    .line 67
    invoke-virtual {p0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_6
    const-string/jumbo p1, "setScreenBright!!!"

    .line 72
    .line 73
    .line 74
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    iput v6, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    .line 78
    .line 79
    iput v4, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastFPS:I

    .line 80
    .line 81
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 82
    .line 83
    invoke-virtual {p1, v6}, Landroid/os/PowerManagerInternal;->setScreenDimDurationOverrideFromSqd(Z)V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v0

    .line 90
    iput-wide v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mDimStartTime:J

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->removeAllmessage()V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_7
    iget p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    .line 97
    .line 98
    if-ne p1, v5, :cond_b

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->getFpsFromSurfaceFlinger()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-ne p1, v3, :cond_8

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_8
    iget v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastFPS:I

    .line 108
    .line 109
    if-ne v3, v4, :cond_9

    .line 110
    .line 111
    const-string/jumbo v3, "checkQuickDimStatus first check!"

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    iput p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastFPS:I

    .line 118
    .line 119
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    .line 120
    .line 121
    invoke-virtual {p0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_9
    if-ne v3, p1, :cond_a

    .line 126
    .line 127
    if-ge v3, v6, :cond_a

    .line 128
    .line 129
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    .line 130
    .line 131
    invoke-virtual {p0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_a
    iput p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastFPS:I

    .line 136
    .line 137
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    .line 138
    .line 139
    invoke-virtual {p0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 140
    .line 141
    .line 142
    :cond_b
    :goto_0
    return-void
.end method
