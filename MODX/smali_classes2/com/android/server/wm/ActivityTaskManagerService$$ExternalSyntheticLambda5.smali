.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Ljava/lang/CharSequence;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/android/server/wm/FactoryErrorDialog;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 20
    .line 21
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/FactoryErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 27
    .line 28
    .line 29
    iget-object p0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->ensureBootCompleted()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Lcom/android/server/wm/WindowProcessController;

    .line 42
    .line 43
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 44
    .line 45
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mIdsLock:Ljava/lang/Object;

    .line 46
    .line 47
    monitor-enter v1

    .line 48
    :try_start_0
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getIdsClearSet()Ljava/util/Set;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 57
    .line 58
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 59
    :try_start_1
    iget v3, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 60
    .line 61
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    if-eqz v2, :cond_0

    .line 66
    .line 67
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_0

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    .line 74
    .line 75
    .line 76
    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    if-eqz v4, :cond_0

    .line 78
    .line 79
    :try_start_2
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 80
    .line 81
    const/4 v4, 0x1

    .line 82
    invoke-interface {p0, v4}, Landroid/app/IApplicationThread;->clearIdsTrainingData(Z)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    goto :goto_3

    .line 91
    :catch_0
    :try_start_3
    const-string p0, "ActivityTaskManager"

    .line 92
    .line 93
    const-string v3, "Failed to clear Ids Training Data"

    .line 94
    .line 95
    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    :cond_0
    const/4 v4, 0x0

    .line 99
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    if-eqz v4, :cond_1

    .line 101
    .line 102
    :try_start_4
    new-instance p0, Ljava/io/ObjectOutputStream;

    .line 103
    .line 104
    new-instance v0, Ljava/io/FileOutputStream;

    .line 105
    .line 106
    const-string v3, "/data/system/idsFile.txt"

    .line 107
    .line 108
    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 112
    .line 113
    .line 114
    :try_start_5
    invoke-virtual {p0, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 115
    .line 116
    .line 117
    :try_start_6
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :catchall_1
    move-exception p0

    .line 122
    goto :goto_4

    .line 123
    :catchall_2
    move-exception v0

    .line 124
    :try_start_7
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :catchall_3
    move-exception p0

    .line 129
    :try_start_8
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 130
    .line 131
    .line 132
    :goto_1
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 133
    :catch_1
    :try_start_9
    const-string p0, "ActivityTaskManager"

    .line 134
    .line 135
    const-string v0, "Error writing IDS file during bindApplication."

    .line 136
    .line 137
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    :cond_1
    :goto_2
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 141
    return-void

    .line 142
    :goto_3
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 143
    :try_start_b
    throw p0

    .line 144
    :goto_4
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 145
    throw p0

    .line 146
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService;

    .line 149
    .line 150
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    .line 153
    .line 154
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    .line 155
    .line 156
    iget-object v2, v1, Lcom/android/server/wm/VrController;->mVrService:Lcom/android/server/vr/VrManagerService$LocalService;

    .line 157
    .line 158
    const/4 v3, 0x1

    .line 159
    const/4 v4, 0x0

    .line 160
    if-nez v2, :cond_2

    .line 161
    .line 162
    move v12, v4

    .line 163
    goto :goto_b

    .line 164
    :cond_2
    iget-object v5, v1, Lcom/android/server/wm/VrController;->mGlobalAmLock:Ljava/lang/Object;

    .line 165
    .line 166
    monitor-enter v5

    .line 167
    :try_start_c
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    .line 168
    .line 169
    if-eqz v8, :cond_3

    .line 170
    .line 171
    move v7, v3

    .line 172
    goto :goto_5

    .line 173
    :cond_3
    move v7, v4

    .line 174
    :goto_5
    iget v9, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 175
    .line 176
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 177
    .line 178
    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 179
    .line 180
    .line 181
    move-result-object v11

    .line 182
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 183
    .line 184
    iget v10, v1, Lcom/android/server/wm/VrController;->mVrState:I

    .line 185
    .line 186
    if-eqz v7, :cond_4

    .line 187
    .line 188
    iget v12, v1, Lcom/android/server/wm/VrController;->mVrState:I

    .line 189
    .line 190
    or-int/2addr v12, v3

    .line 191
    iput v12, v1, Lcom/android/server/wm/VrController;->mVrState:I

    .line 192
    .line 193
    goto :goto_6

    .line 194
    :cond_4
    iget v12, v1, Lcom/android/server/wm/VrController;->mVrState:I

    .line 195
    .line 196
    and-int/lit8 v12, v12, -0x2

    .line 197
    .line 198
    iput v12, v1, Lcom/android/server/wm/VrController;->mVrState:I

    .line 199
    .line 200
    :goto_6
    iget v12, v1, Lcom/android/server/wm/VrController;->mVrState:I

    .line 201
    .line 202
    if-eq v10, v12, :cond_5

    .line 203
    .line 204
    move v12, v3

    .line 205
    goto :goto_7

    .line 206
    :cond_5
    move v12, v4

    .line 207
    :goto_7
    if-eqz v12, :cond_7

    .line 208
    .line 209
    if-eqz v6, :cond_6

    .line 210
    .line 211
    iget v10, v6, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    .line 212
    .line 213
    if-lez v10, :cond_7

    .line 214
    .line 215
    iget v6, v6, Lcom/android/server/wm/WindowProcessController;->mCurSchedGroup:I

    .line 216
    .line 217
    invoke-virtual {v1, v10, v6, v4}, Lcom/android/server/wm/VrController;->setVrRenderThreadLocked(IIZ)I

    .line 218
    .line 219
    .line 220
    goto :goto_8

    .line 221
    :cond_6
    invoke-virtual {v1, v4, v4}, Lcom/android/server/wm/VrController;->updateVrRenderThreadLocked(IZ)I

    .line 222
    .line 223
    .line 224
    :cond_7
    :goto_8
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 225
    .line 226
    if-eqz p0, :cond_8

    .line 227
    .line 228
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 229
    .line 230
    :goto_9
    move v10, p0

    .line 231
    goto :goto_a

    .line 232
    :cond_8
    const/4 p0, -0x1

    .line 233
    goto :goto_9

    .line 234
    :goto_a
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 235
    iget-object v6, v2, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 236
    .line 237
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/vr/VrManagerService;->setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    .line 238
    .line 239
    .line 240
    :goto_b
    if-nez v12, :cond_9

    .line 241
    .line 242
    goto :goto_e

    .line 243
    :cond_9
    iget-object p0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 244
    .line 245
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 246
    .line 247
    .line 248
    monitor-enter p0

    .line 249
    :try_start_d
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    .line 250
    .line 251
    iget v1, v1, Lcom/android/server/wm/VrController;->mVrState:I

    .line 252
    .line 253
    if-eqz v1, :cond_a

    .line 254
    .line 255
    goto :goto_c

    .line 256
    :cond_a
    move v3, v4

    .line 257
    :goto_c
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 258
    .line 259
    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerService;->disableNonVrUi(Z)V

    .line 260
    .line 261
    .line 262
    if-eqz v3, :cond_b

    .line 263
    .line 264
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 265
    .line 266
    const/4 v1, 0x2

    .line 267
    filled-new-array {v1}, [I

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->removeRootTasksInWindowingModes([I)V

    .line 272
    .line 273
    .line 274
    goto :goto_d

    .line 275
    :catchall_4
    move-exception v0

    .line 276
    goto :goto_f

    .line 277
    :cond_b
    :goto_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 278
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 279
    .line 280
    .line 281
    :goto_e
    return-void

    .line 282
    :goto_f
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 283
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 284
    .line 285
    .line 286
    throw v0

    .line 287
    :catchall_5
    move-exception p0

    .line 288
    :try_start_f
    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 289
    throw p0

    .line 290
    nop

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
