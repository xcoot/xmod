.class public final Lcom/android/server/ibs/sqd/IbsQuickDim$3;
.super Landroid/app/IProcessObserver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/sqd/IbsQuickDim;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onForegroundActivitiesChanged(IIZ)V
    .locals 5

    .line 1
    const-string p1, " stop dim detect because fg click mQuickDimMode = "

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$misSqdCanWork(Lcom/android/server/ibs/sqd/IbsQuickDim;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 18
    .line 19
    iget v2, v1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    if-ne v2, v3, :cond_1

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_1
    if-eqz p3, :cond_8

    .line 30
    .line 31
    iget-object p3, v1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBlockUnDimUidSet:Landroid/util/ArraySet;

    .line 32
    .line 33
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p3, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    const/4 v1, 0x4

    .line 42
    const/4 v2, 0x3

    .line 43
    if-nez p3, :cond_6

    .line 44
    .line 45
    iget-object p3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 46
    .line 47
    iget-boolean v4, p3, Lcom/android/server/ibs/sqd/IbsQuickDim;->mUiControlEnabled:Z

    .line 48
    .line 49
    if-nez v4, :cond_2

    .line 50
    .line 51
    iget-object p3, p3, Lcom/android/server/ibs/sqd/IbsQuickDim;->mAllowDimUidSet:Landroid/util/ArraySet;

    .line 52
    .line 53
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {p3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p3

    .line 61
    if-nez p3, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 65
    .line 66
    iget-boolean p3, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mUiControlEnabled:Z

    .line 67
    .line 68
    if-nez p3, :cond_3

    .line 69
    .line 70
    iget-object p1, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mAllowDimUidSet:Landroid/util/ArraySet;

    .line 71
    .line 72
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_4

    .line 81
    .line 82
    :cond_3
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 83
    .line 84
    iget p1, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    .line 85
    .line 86
    if-eq p1, v2, :cond_5

    .line 87
    .line 88
    :cond_4
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 89
    .line 90
    iget p1, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    .line 91
    .line 92
    if-ne p1, v1, :cond_8

    .line 93
    .line 94
    :cond_5
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 95
    .line 96
    const/4 p1, 0x2

    .line 97
    iput p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    .line 98
    .line 99
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    .line 100
    .line 101
    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_6
    :goto_0
    iget-object p2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 106
    .line 107
    iget p3, p2, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    .line 108
    .line 109
    if-eq p3, v2, :cond_8

    .line 110
    .line 111
    iput v2, p2, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    .line 112
    .line 113
    sget-boolean p2, Lcom/android/server/ibs/sqd/IbsQuickDim;->DEBUG:Z

    .line 114
    .line 115
    if-eqz p2, :cond_7

    .line 116
    .line 117
    const-string p2, "IbsQuickDim"

    .line 118
    .line 119
    new-instance p3, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 125
    .line 126
    iget p1, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    .line 127
    .line 128
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    :cond_7
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$3;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 139
    .line 140
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    .line 141
    .line 142
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 143
    .line 144
    .line 145
    :cond_8
    :goto_1
    monitor-exit v0

    .line 146
    return-void

    .line 147
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    throw p0
.end method

.method public final onForegroundServicesChanged(III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onProcessDied(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
