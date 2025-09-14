.class public final Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;
.super Landroid/app/IProcessObserver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

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
    iget-object p3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 2
    .line 3
    iget-object v0, p3, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p3, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-string v1, "activity"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/app/ActivityManager;

    .line 17
    .line 18
    iput-object v0, p3, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    .line 19
    .line 20
    const/4 p3, -0x1

    .line 21
    const/4 v0, 0x1

    .line 22
    if-eq p1, p3, :cond_1

    .line 23
    .line 24
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide p1

    .line 28
    iget-object p3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 29
    .line 30
    iget-object p3, p3, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    .line 31
    .line 32
    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 36
    .line 37
    iget-object p3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    .line 38
    .line 39
    iget p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

    .line 40
    .line 41
    int-to-long v1, p0

    .line 42
    add-long/2addr p1, v1

    .line 43
    invoke-virtual {p3, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    iget-object p3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 48
    .line 49
    iget-object p3, p3, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    const/4 v2, 0x0

    .line 53
    if-eqz p3, :cond_6

    .line 54
    .line 55
    invoke-virtual {p3, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    if-eqz p3, :cond_6

    .line 60
    .line 61
    iget-object p3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 62
    .line 63
    iget-object p3, p3, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    .line 64
    .line 65
    invoke-virtual {p3, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-gtz v0, :cond_2

    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 81
    .line 82
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 95
    .line 96
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    goto :goto_0

    .line 103
    :cond_3
    move-object v0, v1

    .line 104
    :goto_0
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 109
    .line 110
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 111
    .line 112
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    if-eqz v3, :cond_4

    .line 117
    .line 118
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p3

    .line 122
    check-cast p3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 123
    .line 124
    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 125
    .line 126
    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    :cond_4
    if-eqz v0, :cond_5

    .line 131
    .line 132
    const-string p3, "com.att.iqi"

    .line 133
    .line 134
    invoke-virtual {v0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 135
    .line 136
    .line 137
    move-result p3

    .line 138
    if-nez p3, :cond_5

    .line 139
    .line 140
    const-string p3, " packageName : "

    .line 141
    .line 142
    const-string v3, "    className : "

    .line 143
    .line 144
    const-string v4, "MdnieScenarioControlService"

    .line 145
    .line 146
    invoke-static {p3, v0, v3, v1, v4}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :cond_5
    iget-object p3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 150
    .line 151
    iput-object v0, p3, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    .line 152
    .line 153
    move-object p3, v1

    .line 154
    move-object v1, v0

    .line 155
    goto :goto_1

    .line 156
    :cond_6
    move-object p3, v1

    .line 157
    :goto_1
    if-eqz v1, :cond_7

    .line 158
    .line 159
    if-eqz p3, :cond_7

    .line 160
    .line 161
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 162
    .line 163
    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    .line 164
    .line 165
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    iput v2, v0, Landroid/os/Message;->what:I

    .line 170
    .line 171
    invoke-virtual {v1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p3

    .line 175
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 176
    .line 177
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 178
    .line 179
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 180
    .line 181
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 182
    .line 183
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    .line 184
    .line 185
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 186
    .line 187
    .line 188
    :cond_7
    return-void
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
