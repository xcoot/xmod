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

    .line 3
    iput-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    .line 11
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    .line 13
    iget-object v1, v0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 15
    if-ne v1, p0, :cond_1

    .line 17
    iget-boolean v1, v0, Lcom/android/server/dreams/DreamController;->mResetScreenTimeoutOnUnexpectedDreamExit:Z

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v1, :cond_0

    .line 22
    const-string v1, "DreamController"

    .line 24
    const-string v3, "Resetting screen timeout"

    .line 26
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 32
    move-result-wide v3

    .line 33
    iget-object v0, v0, Lcom/android/server/dreams/DreamController;->mPowerManager:Landroid/os/PowerManager;

    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    .line 41
    const-string v0, "binder died"

    .line 43
    invoke-virtual {p0, v2, v0}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    .line 46
    :cond_1
    return-void

    .line 47
    :pswitch_0
    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    .line 50
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    .line 52
    iget-object v1, v0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 54
    if-ne v1, p0, :cond_3

    .line 56
    iget-boolean v1, v0, Lcom/android/server/dreams/DreamController;->mResetScreenTimeoutOnUnexpectedDreamExit:Z

    .line 58
    const/4 v2, 0x1

    .line 59
    if-eqz v1, :cond_2

    .line 61
    const-string v1, "DreamController"

    .line 63
    const-string v3, "Resetting screen timeout"

    .line 65
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 71
    move-result-wide v3

    .line 72
    iget-object v0, v0, Lcom/android/server/dreams/DreamController;->mPowerManager:Landroid/os/PowerManager;

    .line 74
    const/4 v1, 0x0

    .line 75
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 78
    :cond_2
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    .line 80
    const-string/jumbo v0, "service disconnected"

    .line 83
    invoke-virtual {p0, v2, v0}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    .line 86
    :cond_3
    return-void

    .line 87
    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    const-string v0, "DreamController"

    .line 92
    const-string v1, "Stubborn dream did not finish itself in the time allotted"

    .line 94
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    .line 99
    const/4 v1, 0x1

    .line 100
    const-string/jumbo v2, "slow to finish"

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    .line 106
    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopReason:Ljava/lang/String;

    .line 109
    return-void

    .line 110
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    .line 112
    if-eqz v0, :cond_4

    .line 114
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mConnected:Z

    .line 116
    if-nez v0, :cond_4

    .line 118
    const-string v0, "DreamController"

    .line 120
    const-string v1, "Bound dream did not connect in the time allotted"

    .line 122
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    .line 127
    const/4 v0, 0x1

    .line 128
    const-string/jumbo v1, "slow to connect"

    .line 131
    invoke-virtual {p0, v0, v1}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    .line 134
    :cond_4
    return-void

    .line 135
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamController$DreamRecord;->releaseWakeLockIfNeeded()V

    .line 138
    return-void

    .line 139
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    .line 141
    iget-object v1, v0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 143
    if-ne v1, p0, :cond_5

    .line 145
    invoke-virtual {v0}, Lcom/android/server/dreams/DreamController;->stopPreviousDreams()V

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
