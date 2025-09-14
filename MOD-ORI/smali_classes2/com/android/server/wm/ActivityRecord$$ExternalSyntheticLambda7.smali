.class public final synthetic Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/wm/ActivityRecord;

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
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-class v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 24
    .line 25
    new-instance v3, Landroid/app/assist/ActivityId;

    .line 26
    .line 27
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 28
    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    iget v4, v4, Lcom/android/server/wm/Task;->mTaskId:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v4, -0x1

    .line 35
    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->shareableActivityToken:Landroid/os/Binder;

    .line 36
    .line 37
    invoke-direct {v3, v4, v5}, Landroid/app/assist/ActivityId;-><init>(ILandroid/os/IBinder;)V

    .line 38
    .line 39
    .line 40
    const/16 v4, 0x2710

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->notifyActivityEvent(ILandroid/content/ComponentName;ILandroid/app/assist/ActivityId;)V

    .line 43
    .line 44
    .line 45
    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 46
    .line 47
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->shareableActivityToken:Landroid/os/Binder;

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 50
    .line 51
    iget-object v3, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 52
    .line 53
    iget-object v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 54
    .line 55
    monitor-enter v3

    .line 56
    :try_start_0
    iget-object v4, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 57
    .line 58
    iget-boolean v4, v4, Lcom/android/server/contentcapture/ContentCaptureManagerService;->activityStartAssistDataEnabled:Z

    .line 59
    .line 60
    if-nez v4, :cond_1

    .line 61
    .line 62
    monitor-exit v3

    .line 63
    goto :goto_2

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    new-instance v4, Landroid/content/Intent;

    .line 67
    .line 68
    invoke-direct {v4, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    and-int/lit8 p0, p0, -0x43

    .line 76
    .line 77
    invoke-virtual {v4, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    new-instance p0, Landroid/os/Bundle;

    .line 81
    .line 82
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v5, "activity_start_assist_content"

    .line 86
    .line 87
    const/4 v6, 0x1

    .line 88
    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 89
    .line 90
    .line 91
    new-instance v5, Landroid/app/assist/AssistContent;

    .line 92
    .line 93
    invoke-direct {v5, p0}, Landroid/app/assist/AssistContent;-><init>(Landroid/os/Bundle;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, v4}, Landroid/app/assist/AssistContent;->setDefaultIntent(Landroid/content/Intent;)V

    .line 97
    .line 98
    .line 99
    new-instance p0, Landroid/os/Bundle;

    .line 100
    .line 101
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v4, "content"

    .line 105
    .line 106
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 116
    .line 117
    if-eqz v0, :cond_2

    .line 118
    .line 119
    invoke-virtual {v0, v2, p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->sendActivityAssistDataLocked(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    .line 120
    .line 121
    .line 122
    monitor-exit v3

    .line 123
    goto :goto_2

    .line 124
    :cond_2
    monitor-exit v3

    .line 125
    goto :goto_2

    .line 126
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    throw p0

    .line 128
    :cond_3
    :goto_2
    return-void

    .line 129
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 130
    .line 131
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 132
    .line 133
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 134
    .line 135
    .line 136
    monitor-enter v0

    .line 137
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_5

    .line 142
    .line 143
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 144
    .line 145
    iget v1, v1, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    .line 146
    .line 147
    const/4 v2, 0x6

    .line 148
    if-gt v1, v2, :cond_4

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 152
    .line 153
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 155
    .line 156
    .line 157
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 158
    .line 159
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 160
    .line 161
    iget-object v0, v1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 162
    .line 163
    iget v1, v1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 164
    .line 165
    const-string/jumbo v2, "resetConfig"

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/ActivityManagerInternal;->killProcess(Ljava/lang/String;ILjava/lang/String;)V

    .line 169
    .line 170
    .line 171
    goto :goto_4

    .line 172
    :catchall_1
    move-exception p0

    .line 173
    goto :goto_5

    .line 174
    :cond_5
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 175
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 176
    .line 177
    .line 178
    :goto_4
    return-void

    .line 179
    :goto_5
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 180
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 181
    .line 182
    .line 183
    throw p0

    .line 184
    nop

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
