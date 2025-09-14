.class public final synthetic Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/dreams/DreamController$DreamRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/dreams/DreamController$DreamRecord;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 14
    .line 15
    if-ne v1, p0, :cond_1

    .line 16
    .line 17
    iget-boolean v1, v0, Lcom/android/server/dreams/DreamController;->mResetScreenTimeoutOnUnexpectedDreamExit:Z

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const-string v1, "DreamController"

    .line 23
    .line 24
    const-string v3, "Resetting screen timeout"

    .line 25
    .line 26
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    iget-object v0, v0, Lcom/android/server/dreams/DreamController;->mPowerManager:Landroid/os/PowerManager;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    .line 40
    .line 41
    const-string v0, "binder died"

    .line 42
    .line 43
    invoke-virtual {p0, v2, v0}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void

    .line 47
    :pswitch_0
    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    .line 51
    .line 52
    iget-object v1, v0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 53
    .line 54
    if-ne v1, p0, :cond_3

    .line 55
    .line 56
    iget-boolean v1, v0, Lcom/android/server/dreams/DreamController;->mResetScreenTimeoutOnUnexpectedDreamExit:Z

    .line 57
    .line 58
    const/4 v2, 0x1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    const-string v1, "DreamController"

    .line 62
    .line 63
    const-string v3, "Resetting screen timeout"

    .line 64
    .line 65
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide v3

    .line 72
    iget-object v0, v0, Lcom/android/server/dreams/DreamController;->mPowerManager:Landroid/os/PowerManager;

    .line 73
    .line 74
    const/4 v1, 0x0

    .line 75
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 76
    .line 77
    .line 78
    :cond_2
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    .line 79
    .line 80
    const-string/jumbo v0, "service disconnected"

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v2, v0}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_3
    return-void

    .line 87
    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    const-string v0, "DreamController"

    .line 91
    .line 92
    const-string v1, "Stubborn dream did not finish itself in the time allotted"

    .line 93
    .line 94
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    .line 98
    .line 99
    const/4 v1, 0x1

    .line 100
    const-string/jumbo v2, "slow to finish"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopReason:Ljava/lang/String;

    .line 108
    .line 109
    return-void

    .line 110
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    .line 111
    .line 112
    if-eqz v0, :cond_4

    .line 113
    .line 114
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mConnected:Z

    .line 115
    .line 116
    if-nez v0, :cond_4

    .line 117
    .line 118
    const-string v0, "DreamController"

    .line 119
    .line 120
    const-string v1, "Bound dream did not connect in the time allotted"

    .line 121
    .line 122
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    .line 126
    .line 127
    const/4 v0, 0x1

    .line 128
    const-string/jumbo v1, "slow to connect"

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v0, v1}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_4
    return-void

    .line 135
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamController$DreamRecord;->releaseWakeLockIfNeeded()V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    .line 140
    .line 141
    iget-object v1, v0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 142
    .line 143
    if-ne v1, p0, :cond_5

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/android/server/dreams/DreamController;->stopPreviousDreams()V

    .line 146
    .line 147
    .line 148
    :cond_5
    return-void

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
