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

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
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

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, -0x1

    .line 11
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    sparse-switch v2, :sswitch_data_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :sswitch_0
    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 20
    .line 21
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-nez p2, :cond_0

    .line 26
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

    .line 31
    .line 32
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-nez p2, :cond_1

    .line 37
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

    .line 42
    .line 43
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-nez p2, :cond_2

    .line 48
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

    .line 53
    .line 54
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-nez p2, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    move v1, v0

    .line 62
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    .line 69
    .line 70
    if-eqz p1, :cond_6

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_6

    .line 77
    .line 78
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    .line 79
    .line 80
    iget-object p1, p1, Lcom/android/server/job/JobConcurrencyManager;->mLock:Ljava/lang/Object;

    .line 81
    .line 82
    monitor-enter p1

    .line 83
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    .line 84
    .line 85
    const-string p2, "battery saver"

    .line 86
    .line 87
    invoke-static {p0, p2}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$mstopOvertimeJobsLocked(Lcom/android/server/job/JobConcurrencyManager;Ljava/lang/String;)V

    .line 88
    .line 89
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

    .line 96
    .line 97
    iget-object p2, p2, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    .line 98
    .line 99
    if-eqz p2, :cond_6

    .line 100
    .line 101
    invoke-virtual {p2}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    if-eqz p2, :cond_6

    .line 106
    .line 107
    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    .line 108
    .line 109
    iget-object p2, p2, Lcom/android/server/job/JobConcurrencyManager;->mLock:Ljava/lang/Object;

    .line 110
    .line 111
    monitor-enter p2

    .line 112
    :try_start_1
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    .line 113
    .line 114
    :goto_1
    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 115
    .line 116
    check-cast v2, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-ge v0, v2, :cond_5

    .line 123
    .line 124
    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 125
    .line 126
    check-cast v2, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    check-cast v2, Lcom/android/server/job/JobServiceContext;

    .line 133
    .line 134
    iget-object v3, v2, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 135
    .line 136
    if-eqz v3, :cond_4

    .line 137
    .line 138
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->canRunInDoze()Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-nez v3, :cond_4

    .line 143
    .line 144
    const-string/jumbo v3, "cancelled due to doze"

    .line 145
    .line 146
    .line 147
    const/4 v4, 0x4

    .line 148
    invoke-virtual {v2, v4, v4, v3}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    .line 149
    .line 150
    .line 151
    :cond_4
    add-int/2addr v0, p1

    .line 152
    goto :goto_1

    .line 153
    :cond_5
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    .line 154
    .line 155
    const-string/jumbo p1, "deep doze"

    .line 156
    .line 157
    .line 158
    invoke-static {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$mstopOvertimeJobsLocked(Lcom/android/server/job/JobConcurrencyManager;Ljava/lang/String;)V

    .line 159
    .line 160
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

    .line 167
    .line 168
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->onInteractiveStateChanged(Z)V

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    .line 173
    .line 174
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobConcurrencyManager;->onInteractiveStateChanged(Z)V

    .line 175
    .line 176
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

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
