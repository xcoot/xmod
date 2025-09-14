.class public final Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/PersonaActivityHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/PersonaActivityHelper;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

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
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto/16 :goto_5

    .line 8
    .line 9
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 16
    .line 17
    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 18
    .line 19
    const-string v0, "Current focused persona service handled id set to : "

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v2

    .line 24
    :try_start_0
    sget-boolean v1, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    const-string v1, "PersonaManagerService"

    .line 29
    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedUserId:I

    .line 36
    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedUserId:I

    .line 51
    .line 52
    monitor-exit v2

    .line 53
    goto/16 :goto_5

    .line 54
    .line 55
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0

    .line 57
    :pswitch_1
    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 58
    .line 59
    :try_start_1
    const-string/jumbo p1, "trust"

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    invoke-interface {p1, p0, v1}, Landroid/app/trust/ITrustManager;->setDeviceLockedForUser(IZ)V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_5

    .line 76
    .line 77
    :catch_0
    move-exception p0

    .line 78
    goto :goto_2

    .line 79
    :cond_1
    const-string p0, "PersonaActivityHandler"

    .line 80
    .line 81
    const-string p1, "device lock failed. trustmanager may be null."

    .line 82
    .line 83
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    .line 85
    .line 86
    goto/16 :goto_5

    .line 87
    .line 88
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_5

    .line 92
    .line 93
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 94
    .line 95
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p1, Landroid/os/Bundle;

    .line 98
    .line 99
    const-string v1, "isHomeActivity"

    .line 100
    .line 101
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    const-string v2, "componentName"

    .line 106
    .line 107
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    new-instance v2, Landroid/content/Intent;

    .line 112
    .line 113
    const-string v3, "com.samsung.android.knox.container.LOCK_SECUREFOLDER"

    .line 114
    .line 115
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const-string/jumbo v3, "userid"

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    .line 123
    .line 124
    const-string v0, "isHomeActivity"

    .line 125
    .line 126
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    .line 128
    .line 129
    const-string v0, "componentName"

    .line 130
    .line 131
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    .line 133
    .line 134
    const-string p1, "com.samsung.android.knox.containercore"

    .line 135
    .line 136
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    .line 140
    .line 141
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    .line 142
    .line 143
    sget-object p1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 144
    .line 145
    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 146
    .line 147
    .line 148
    goto :goto_5

    .line 149
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    .line 150
    .line 151
    iget-object p1, p1, Lcom/android/server/wm/PersonaActivityHelper;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 152
    .line 153
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 154
    .line 155
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 156
    .line 157
    .line 158
    monitor-enter p1

    .line 159
    :try_start_2
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    .line 160
    .line 161
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 162
    .line 163
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 164
    .line 165
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    sub-int/2addr v0, v1

    .line 172
    :goto_3
    if-ltz v0, :cond_4

    .line 173
    .line 174
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    check-cast v2, Lcom/android/server/wm/Task;

    .line 181
    .line 182
    iget v3, v2, Lcom/android/server/wm/Task;->mUserId:I

    .line 183
    .line 184
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    if-nez v3, :cond_2

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/Task;)Z

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    if-eqz v3, :cond_3

    .line 196
    .line 197
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, v2, v1, v1}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/Task;ZZ)V

    .line 203
    .line 204
    .line 205
    :cond_3
    :goto_4
    add-int/lit8 v0, v0, -0x1

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_4
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 209
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 210
    .line 211
    .line 212
    goto :goto_5

    .line 213
    :catchall_1
    move-exception p0

    .line 214
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 215
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 216
    .line 217
    .line 218
    throw p0

    .line 219
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    .line 220
    .line 221
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    .line 222
    .line 223
    const p1, 0x1040718

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    const/4 v0, 0x0

    .line 235
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 240
    .line 241
    .line 242
    :goto_5
    return-void

    .line 243
    :pswitch_data_0
    .packed-switch 0x259
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
