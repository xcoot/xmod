.class public final synthetic Lcom/android/server/dreams/DreamManagerService$BinderService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/dreams/DreamManagerService$BinderService;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/dreams/DreamManagerService$BinderService;Landroid/content/Intent;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$BinderService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/dreams/DreamManagerService$BinderService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/dreams/DreamManagerService$BinderService$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/dreams/DreamManagerService$BinderService$$ExternalSyntheticLambda0;->f$3:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/dreams/DreamManagerService$BinderService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService$BinderService$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    .line 4
    .line 5
    iget v8, p0, Lcom/android/server/dreams/DreamManagerService$BinderService$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService$$ExternalSyntheticLambda0;->f$3:I

    .line 8
    .line 9
    iget-object v2, v0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v2

    .line 14
    :try_start_0
    iget-object v3, v0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 15
    .line 16
    iget-object v3, v3, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    .line 17
    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    const-string p0, "DreamManagerService"

    .line 21
    .line 22
    const-string v0, "Attempt to start DreamActivity, but the device is not dreaming. Aborting without starting the DreamActivity."

    .line 23
    .line 24
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    monitor-exit v2

    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto/16 :goto_4

    .line 32
    .line 33
    :cond_0
    iget-object v9, v3, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->token:Landroid/os/Binder;

    .line 34
    .line 35
    iget-object v3, v3, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->name:Landroid/content/ComponentName;

    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v10

    .line 41
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v11

    .line 46
    const-string v12, "DreamManagerService"

    .line 47
    .line 48
    if-eqz v10, :cond_7

    .line 49
    .line 50
    if-nez v11, :cond_1

    .line 51
    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :cond_1
    iget-object v2, v0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 55
    .line 56
    iget-object v2, v2, Lcom/android/server/dreams/DreamManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 57
    .line 58
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 63
    .line 64
    const-wide/16 v5, 0x0

    .line 65
    .line 66
    move v3, v8

    .line 67
    move-object v7, v11

    .line 68
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->isSameApp(IIJLjava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-nez v2, :cond_2

    .line 73
    .line 74
    new-instance p0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v0, "Cannot launch dream activity because package="

    .line 77
    .line 78
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, " does not match callingUid="

    .line 85
    .line 86
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-static {v12, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    goto/16 :goto_2

    .line 100
    .line 101
    :cond_2
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_6

    .line 106
    .line 107
    iget-object v2, v0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 108
    .line 109
    iget-object v2, v2, Lcom/android/server/dreams/DreamManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 110
    .line 111
    invoke-virtual {v2, v8, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startDreamActivity(IILandroid/content/Intent;)Lcom/android/server/wm/AppTaskImpl;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    if-nez p0, :cond_3

    .line 116
    .line 117
    const-string p0, "DreamManagerService"

    .line 118
    .line 119
    const-string v1, "Could not start dream activity."

    .line 120
    .line 121
    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    iget-object p0, v0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 125
    .line 126
    const-string v0, "DreamActivity not started"

    .line 127
    .line 128
    const/4 v1, 0x1

    .line 129
    invoke-virtual {p0, v0, v1}, Lcom/android/server/dreams/DreamManagerService;->stopDreamInternal(Ljava/lang/String;Z)V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_3

    .line 133
    .line 134
    :cond_3
    iget-object v0, v0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 135
    .line 136
    iget-object v0, v0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    .line 137
    .line 138
    iget-object v1, v0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 139
    .line 140
    if-eqz v1, :cond_5

    .line 141
    .line 142
    iget-object v2, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    .line 143
    .line 144
    if-ne v2, v9, :cond_5

    .line 145
    .line 146
    iget-object v2, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mAppTask:Landroid/app/IAppTask;

    .line 147
    .line 148
    if-eqz v2, :cond_4

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_4
    iput-object p0, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mAppTask:Landroid/app/IAppTask;

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_5
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string v2, "Illegal dream activity start. mCurrentDream.mToken = "

    .line 157
    .line 158
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-object v0, v0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 162
    .line 163
    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    .line 164
    .line 165
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v0, ", illegal dreamToken = "

    .line 169
    .line 170
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v0, ". Ending this dream activity."

    .line 177
    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    const-string v1, "DreamController"

    .line 186
    .line 187
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppTaskImpl;->finishAndRemoveTask()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 191
    .line 192
    .line 193
    goto :goto_3

    .line 194
    :catch_0
    const-string p0, "Unable to stop illegal dream activity."

    .line 195
    .line 196
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    const-string v0, "Dream packageName does not match active dream. Package "

    .line 203
    .line 204
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v0, " does not match "

    .line 211
    .line 212
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    invoke-static {v12, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    goto :goto_2

    .line 226
    :cond_7
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string v0, "Cannot launch dream activity due to invalid state. dream component= "

    .line 229
    .line 230
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v0, ", packageName="

    .line 237
    .line 238
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    invoke-static {v12, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    :goto_2
    const-string p0, "DreamManagerService"

    .line 252
    .line 253
    const-string v0, "The dream activity can be started only when the device is dreaming and only by the active dream package."

    .line 254
    .line 255
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    :goto_3
    return-void

    .line 259
    :goto_4
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 260
    throw p0
.end method
