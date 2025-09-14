.class public final Lcom/android/server/job/JobConcurrencyManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/JobConcurrencyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobConcurrencyManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 5
    move-result-object p2

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, -0x1

    .line 11
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 14
    move-result v2

    .line 15
    sparse-switch v2, :sswitch_data_0

    .line 18
    goto :goto_0

    .line 19
    :sswitch_0
    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 21
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result p2

    .line 25
    if-nez p2, :cond_0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x3

    .line 29
    goto :goto_0

    .line 30
    :sswitch_1
    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 32
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result p2

    .line 36
    if-nez p2, :cond_1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x2

    .line 40
    goto :goto_0

    .line 41
    :sswitch_2
    const-string v2, "android.intent.action.SCREEN_ON"

    .line 43
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result p2

    .line 47
    if-nez p2, :cond_2

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move v1, p1

    .line 51
    goto :goto_0

    .line 52
    :sswitch_3
    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 54
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result p2

    .line 58
    if-nez p2, :cond_3

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    move v1, v0

    .line 62
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 65
    goto :goto_2

    .line 66
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    .line 68
    iget-object p1, p1, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    .line 70
    if-eqz p1, :cond_6

    .line 72
    invoke-virtual {p1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_6

    .line 78
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    .line 80
    iget-object p1, p1, Lcom/android/server/job/JobConcurrencyManager;->mLock:Ljava/lang/Object;

    .line 82
    monitor-enter p1

    .line 83
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    .line 85
    const-string p2, "battery saver"

    .line 87
    invoke-static {p0, p2}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$mstopOvertimeJobsLocked(Lcom/android/server/job/JobConcurrencyManager;Ljava/lang/String;)V

    .line 90
    monitor-exit p1

    .line 91
    goto :goto_2

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    throw p0

    .line 95
    :pswitch_1
    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    .line 97
    iget-object p2, p2, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    .line 99
    if-eqz p2, :cond_6

    .line 101
    invoke-virtual {p2}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    .line 104
    move-result p2

    .line 105
    if-eqz p2, :cond_6

    .line 107
    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    .line 109
    iget-object p2, p2, Lcom/android/server/job/JobConcurrencyManager;->mLock:Ljava/lang/Object;

    .line 111
    monitor-enter p2

    .line 112
    :try_start_1
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    .line 114
    :goto_1
    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 116
    check-cast v2, Ljava/util/ArrayList;

    .line 118
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 121
    move-result v2

    .line 122
    if-ge v0, v2, :cond_5

    .line 124
    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 126
    check-cast v2, Ljava/util/ArrayList;

    .line 128
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 131
    move-result-object v2

    .line 132
    check-cast v2, Lcom/android/server/job/JobServiceContext;

    .line 134
    iget-object v3, v2, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 136
    if-eqz v3, :cond_4

    .line 138
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->canRunInDoze()Z

    .line 141
    move-result v3

    .line 142
    if-nez v3, :cond_4

    .line 144
    const-string/jumbo v3, "cancelled due to doze"

    .line 147
    const/4 v4, 0x4

    .line 148
    invoke-virtual {v2, v4, v4, v3}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    .line 151
    :cond_4
    add-int/2addr v0, p1

    .line 152
    goto :goto_1

    .line 153
    :cond_5
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    .line 155
    const-string/jumbo p1, "deep doze"

    .line 158
    invoke-static {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$mstopOvertimeJobsLocked(Lcom/android/server/job/JobConcurrencyManager;Ljava/lang/String;)V

    .line 161
    monitor-exit p2

    .line 162
    goto :goto_2

    .line 163
    :catchall_1
    move-exception p0

    .line 164
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 165
    throw p0

    .line 166
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->onInteractiveStateChanged(Z)V

    .line 171
    goto :goto_2

    .line 172
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    .line 174
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobConcurrencyManager;->onInteractiveStateChanged(Z)V

    .line 177
    :cond_6
    :goto_2
    return-void

    .line 178
    nop

    .line 179
    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_3
        -0x56ac2893 -> :sswitch_2
        0x33e5d967 -> :sswitch_1
        0x6a0dd473 -> :sswitch_0
    .end sparse-switch

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
