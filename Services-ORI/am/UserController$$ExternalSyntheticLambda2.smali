.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/UserController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserController$$ExternalSyntheticLambda1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/UserController;

    iput p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserController$$ExternalSyntheticLambda4;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/UserController;

    iput p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/UserController;

    .line 7
    .line 8
    iget v7, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$1:I

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v8, Lcom/android/server/am/UserController$$ExternalSyntheticLambda26;

    .line 16
    .line 17
    check-cast p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;

    .line 18
    .line 19
    invoke-direct {v8, v0, p0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;)V

    .line 20
    .line 21
    .line 22
    new-instance p0, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string/jumbo v2, "dispatchOnBeforeUserSwitching-"

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-direct {v9, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/android/server/am/UserController;->getUserSwitchTimeoutMs()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    int-to-long v10, v1

    .line 56
    iget-object v12, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 57
    .line 58
    new-instance v13, Lcom/android/server/am/UserController$$ExternalSyntheticLambda28;

    .line 59
    .line 60
    move-object v1, v13

    .line 61
    move-object v2, v0

    .line 62
    move-object v3, v9

    .line 63
    move-wide v4, v10

    .line 64
    move-object v6, v8

    .line 65
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/am/UserController;Ljava/util/concurrent/atomic/AtomicBoolean;JLcom/android/server/am/UserController$$ExternalSyntheticLambda26;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v12, v13, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 69
    .line 70
    .line 71
    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;

    .line 72
    .line 73
    const/4 v2, 0x1

    .line 74
    invoke-direct {v1, v7, v2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;-><init>(II)V

    .line 75
    .line 76
    .line 77
    new-instance v2, Lcom/android/server/am/UserController$$ExternalSyntheticLambda25;

    .line 78
    .line 79
    invoke-direct {v2, v9, v8}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda25;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/server/am/UserController$$ExternalSyntheticLambda26;)V

    .line 80
    .line 81
    .line 82
    const-string/jumbo v3, "onBeforeUserSwitching"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/UserController;->informUserSwitchObservers(Ljava/util/function/BiConsumer;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/UserController;

    .line 93
    .line 94
    iget v1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$1:I

    .line 95
    .line 96
    iget-object p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Runnable;

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    new-instance v3, Landroid/content/Intent;

    .line 102
    .line 103
    const-string v2, "android.intent.action.USER_STOPPING"

    .line 104
    .line 105
    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const/high16 v2, 0x40000000    # 2.0f

    .line 109
    .line 110
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    const-string v2, "android.intent.extra.user_handle"

    .line 114
    .line 115
    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    const-string v2, "android.intent.extra.SHUTDOWN_USERSPACE_ONLY"

    .line 119
    .line 120
    const/4 v4, 0x1

    .line 121
    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 122
    .line 123
    .line 124
    new-instance v4, Lcom/android/server/am/UserController$5;

    .line 125
    .line 126
    check-cast p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;

    .line 127
    .line 128
    invoke-direct {v4, v1, p0}, Lcom/android/server/am/UserController$5;-><init>(ILcom/android/server/am/UserController$$ExternalSyntheticLambda1;)V

    .line 129
    .line 130
    .line 131
    new-instance p0, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 132
    .line 133
    invoke-direct {p0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 134
    .line 135
    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string/jumbo v5, "clearBroadcastQueueForUser-"

    .line 139
    .line 140
    .line 141
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v5, "-[stopUser]"

    .line 148
    .line 149
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {p0, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 160
    .line 161
    iget-object v5, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 162
    .line 163
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 164
    .line 165
    .line 166
    monitor-enter v5

    .line 167
    :try_start_0
    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 168
    .line 169
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueueModernImpl;

    .line 170
    .line 171
    const/4 v6, 0x0

    .line 172
    invoke-virtual {v2, v1, v6, v6}, Lcom/android/server/am/BroadcastQueueModernImpl;->cleanupDisabledPackageReceiversLocked(ILjava/lang/String;Ljava/util/Set;)Z

    .line 173
    .line 174
    .line 175
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 180
    .line 181
    .line 182
    new-instance p0, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    const-string/jumbo v2, "broadcast-ACTION_USER_STOPPING-"

    .line 185
    .line 186
    .line 187
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v2, "-[stopUser]"

    .line 194
    .line 195
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    invoke-static {v1, p0}, Lcom/android/server/am/UserController;->asyncTraceBegin(ILjava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 206
    .line 207
    const-string p0, "android.permission.INTERACT_ACROSS_USERS"

    .line 208
    .line 209
    filled-new-array {p0}, [Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    sget v7, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 214
    .line 215
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 216
    .line 217
    .line 218
    move-result v8

    .line 219
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 220
    .line 221
    .line 222
    move-result v9

    .line 223
    const/4 v6, 0x0

    .line 224
    const/4 v10, -0x1

    .line 225
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :catchall_0
    move-exception p0

    .line 230
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 232
    .line 233
    .line 234
    throw p0

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
