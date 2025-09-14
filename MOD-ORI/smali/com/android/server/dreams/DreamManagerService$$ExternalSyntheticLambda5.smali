.class public final synthetic Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/dreams/DreamManagerService;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:Landroid/os/Binder;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z

.field public final synthetic f$5:I

.field public final synthetic f$6:Landroid/os/PowerManager$WakeLock;

.field public final synthetic f$7:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/dreams/DreamManagerService;Landroid/content/ComponentName;Landroid/os/Binder;ZZILandroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/dreams/DreamManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda5;->f$1:Landroid/content/ComponentName;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda5;->f$2:Landroid/os/Binder;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda5;->f$3:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda5;->f$4:Z

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda5;->f$5:I

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda5;->f$6:Landroid/os/PowerManager$WakeLock;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda5;->f$7:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/dreams/DreamManagerService;

    .line 4
    .line 5
    iget-object v10, v0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda5;->f$1:Landroid/content/ComponentName;

    .line 6
    .line 7
    iget-object v4, v0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda5;->f$2:Landroid/os/Binder;

    .line 8
    .line 9
    iget-boolean v6, v0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda5;->f$3:Z

    .line 10
    .line 11
    iget-boolean v7, v0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda5;->f$4:Z

    .line 12
    .line 13
    iget v11, v0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda5;->f$5:I

    .line 14
    .line 15
    iget-object v9, v0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda5;->f$6:Landroid/os/PowerManager$WakeLock;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda5;->f$7:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/android/server/dreams/DreamManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 20
    .line 21
    invoke-virtual {v2, v10}, Lcom/android/server/wm/ActivityTaskManagerInternal;->notifyActiveDreamChanged(Landroid/content/ComponentName;)V

    .line 22
    .line 23
    .line 24
    iget-object v12, v1, Lcom/android/server/dreams/DreamManagerService;->mDreamOverlayServiceName:Landroid/content/ComponentName;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const-string v13, "DreamController"

    .line 32
    .line 33
    const-string v14, "Unable to bind dream service: "

    .line 34
    .line 35
    const-string v2, "Starting dream: name="

    .line 36
    .line 37
    const-string/jumbo v3, "startDream"

    .line 38
    .line 39
    .line 40
    move-object/from16 p0, v14

    .line 41
    .line 42
    const-wide/32 v14, 0x20000

    .line 43
    .line 44
    .line 45
    invoke-static {v14, v15, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :try_start_0
    iget-object v3, v1, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    iget-object v5, v1, Lcom/android/server/dreams/DreamController;->mCloseNotificationShadeIntent:Landroid/content/Intent;

    .line 51
    .line 52
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 53
    .line 54
    iget-object v14, v1, Lcom/android/server/dreams/DreamController;->mCloseNotificationShadeOptions:Landroid/os/Bundle;

    .line 55
    .line 56
    const/4 v15, 0x0

    .line 57
    invoke-virtual {v3, v5, v8, v15, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 58
    .line 59
    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v2, ", isPreviewMode="

    .line 69
    .line 70
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v2, ", canDoze="

    .line 77
    .line 78
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v2, ", userId="

    .line 85
    .line 86
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v2, ", reason=\'"

    .line 93
    .line 94
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v0, "\'"

    .line 101
    .line 102
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    iget-object v0, v1, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 113
    .line 114
    new-instance v14, Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 115
    .line 116
    move-object v2, v14

    .line 117
    move-object v3, v1

    .line 118
    move-object v5, v10

    .line 119
    move v8, v11

    .line 120
    invoke-direct/range {v2 .. v9}, Lcom/android/server/dreams/DreamController$DreamRecord;-><init>(Lcom/android/server/dreams/DreamController;Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V

    .line 121
    .line 122
    .line 123
    iput-object v14, v1, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 124
    .line 125
    const/4 v2, 0x1

    .line 126
    if-eqz v0, :cond_1

    .line 127
    .line 128
    iget-object v3, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mName:Landroid/content/ComponentName;

    .line 129
    .line 130
    iget-object v4, v14, Lcom/android/server/dreams/DreamController$DreamRecord;->mName:Landroid/content/ComponentName;

    .line 131
    .line 132
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-eqz v3, :cond_0

    .line 137
    .line 138
    const-string/jumbo v3, "restarting same dream"

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/dreams/DreamController;->stopDreamInstance(ZLjava/lang/String;Lcom/android/server/dreams/DreamController$DreamRecord;)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    .line 146
    const-wide/32 v1, 0x20000

    .line 147
    .line 148
    .line 149
    goto/16 :goto_5

    .line 150
    .line 151
    :cond_0
    iget-object v3, v1, Lcom/android/server/dreams/DreamController;->mPreviousDreams:Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 157
    .line 158
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 159
    .line 160
    .line 161
    move-result-wide v3

    .line 162
    iput-wide v3, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mDreamStartTime:J

    .line 163
    .line 164
    iget-object v0, v1, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    .line 165
    .line 166
    iget-object v3, v1, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 167
    .line 168
    iget-boolean v3, v3, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    .line 169
    .line 170
    if-eqz v3, :cond_2

    .line 171
    .line 172
    const/16 v3, 0xdf

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_2
    const/16 v3, 0xde

    .line 176
    .line 177
    :goto_1
    invoke-static {v0, v3}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 178
    .line 179
    .line 180
    new-instance v3, Landroid/content/Intent;

    .line 181
    .line 182
    const-string v0, "android.service.dreams.DreamService"

    .line 183
    .line 184
    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 188
    .line 189
    .line 190
    const/high16 v0, 0x800000

    .line 191
    .line 192
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 193
    .line 194
    .line 195
    invoke-static {v3, v12}, Landroid/service/dreams/DreamService;->setDreamOverlayComponent(Landroid/content/Intent;Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    .line 197
    .line 198
    :try_start_1
    iget-object v0, v1, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    .line 199
    .line 200
    iget-object v4, v1, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 201
    .line 202
    new-instance v5, Landroid/os/UserHandle;

    .line 203
    .line 204
    invoke-direct {v5, v11}, Landroid/os/UserHandle;-><init>(I)V

    .line 205
    .line 206
    .line 207
    const v6, 0x4000001

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v3, v4, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-nez v0, :cond_3

    .line 215
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    .line 218
    move-object/from16 v4, p0

    .line 219
    .line 220
    :try_start_2
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    const-string v0, "bindService failed"

    .line 234
    .line 235
    invoke-virtual {v1, v2, v0}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 236
    .line 237
    .line 238
    const-wide/32 v1, 0x20000

    .line 239
    .line 240
    .line 241
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 242
    .line 243
    .line 244
    goto :goto_4

    .line 245
    :catch_0
    move-exception v0

    .line 246
    goto :goto_3

    .line 247
    :catch_1
    move-exception v0

    .line 248
    move-object/from16 v4, p0

    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_3
    :try_start_3
    iget-object v0, v1, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 252
    .line 253
    iput-boolean v2, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    .line 254
    .line 255
    iget-object v1, v1, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    .line 256
    .line 257
    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopUnconnectedDreamRunnable:Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    .line 258
    .line 259
    const-wide/16 v2, 0x1388

    .line 260
    .line 261
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 262
    .line 263
    .line 264
    const-wide/32 v1, 0x20000

    .line 265
    .line 266
    .line 267
    goto :goto_2

    .line 268
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-static {v13, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    .line 282
    .line 283
    const-string/jumbo v0, "unable to bind service: SecExp."

    .line 284
    .line 285
    .line 286
    invoke-virtual {v1, v2, v0}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 287
    .line 288
    .line 289
    const-wide/32 v1, 0x20000

    .line 290
    .line 291
    .line 292
    goto :goto_2

    .line 293
    :goto_4
    return-void

    .line 294
    :goto_5
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 295
    .line 296
    .line 297
    throw v0
.end method
