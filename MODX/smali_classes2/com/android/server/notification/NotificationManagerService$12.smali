.class public final Lcom/android/server/notification/NotificationManagerService$12;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

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
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/notification/NotificationManagerService$17;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mWakeLockForAssistantDelay:Landroid/os/PowerManager$WakeLock;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lcom/android/server/notification/NotificationManagerService$17;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mWakeLockForAssistantDelay:Landroid/os/PowerManager$WakeLock;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Lcom/android/server/notification/NotificationManagerService$17;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 38
    .line 39
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mWakeLockForAssistantDelay:Landroid/os/PowerManager$WakeLock;

    .line 40
    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-class v2, Landroid/os/PowerManager;

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroid/os/PowerManager;

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    const-string v3, "Prevent Sleep by AssistantDelay"

    .line 57
    .line 58
    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mWakeLockForAssistantDelay:Landroid/os/PowerManager$WakeLock;

    .line 63
    .line 64
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p0, Lcom/android/server/notification/NotificationManagerService$17;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mWakeLockForAssistantDelay:Landroid/os/PowerManager$WakeLock;

    .line 71
    .line 72
    const-wide/16 v0, 0x1f4

    .line 73
    .line 74
    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_0
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 79
    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    const-string v0, "NotificationService"

    .line 83
    .line 84
    const-string v1, "handleSaveScpmNotificationPoliciesFile runnable"

    .line 85
    .line 86
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    :cond_2
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mScpmNotificationPoliciesFile:Landroid/util/AtomicFile;

    .line 94
    .line 95
    monitor-enter v0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v1, Lcom/android/server/notification/NotificationManagerService;

    .line 99
    .line 100
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mScpmNotificationPoliciesFile:Landroid/util/AtomicFile;

    .line 101
    .line 102
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 103
    .line 104
    .line 105
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :try_start_1
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    .line 109
    .line 110
    invoke-static {v2, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mwriteScpmNotificationPoliciesJson(Lcom/android/server/notification/NotificationManagerService;Ljava/io/FileOutputStream;)V

    .line 111
    .line 112
    .line 113
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    .line 116
    .line 117
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mScpmNotificationPoliciesFile:Landroid/util/AtomicFile;

    .line 118
    .line 119
    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :catchall_0
    move-exception p0

    .line 124
    goto :goto_2

    .line 125
    :catch_0
    move-exception v2

    .line 126
    :try_start_2
    const-string v3, "NotificationService"

    .line 127
    .line 128
    const-string v4, "Failed to save SCPM notification policies file, restoring backup"

    .line 129
    .line 130
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .line 132
    .line 133
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast p0, Lcom/android/server/notification/NotificationManagerService;

    .line 136
    .line 137
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mScpmNotificationPoliciesFile:Landroid/util/AtomicFile;

    .line 138
    .line 139
    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 140
    .line 141
    .line 142
    :goto_0
    monitor-exit v0

    .line 143
    goto :goto_1

    .line 144
    :catch_1
    move-exception p0

    .line 145
    const-string v1, "NotificationService"

    .line 146
    .line 147
    const-string v2, "Failed to save SCPM notification policies file"

    .line 148
    .line 149
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    .line 151
    .line 152
    monitor-exit v0

    .line 153
    :goto_1
    return-void

    .line 154
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    throw p0

    .line 156
    :pswitch_1
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 157
    .line 158
    if-eqz v0, :cond_3

    .line 159
    .line 160
    const-string v0, "NotificationService"

    .line 161
    .line 162
    const-string v1, "handleSavePolicyFile"

    .line 163
    .line 164
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    :cond_3
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    .line 170
    .line 171
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 172
    .line 173
    monitor-enter v0

    .line 174
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v1, Lcom/android/server/notification/NotificationManagerService;

    .line 177
    .line 178
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 179
    .line 180
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 181
    .line 182
    .line 183
    move-result-object v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 184
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    .line 187
    .line 188
    const/4 v3, 0x0

    .line 189
    const/4 v4, -0x1

    .line 190
    invoke-static {v2, v1, v3, v4}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mwritePolicyXml(Lcom/android/server/notification/NotificationManagerService;Ljava/io/OutputStream;ZI)V

    .line 191
    .line 192
    .line 193
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    .line 196
    .line 197
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 198
    .line 199
    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 200
    .line 201
    .line 202
    goto :goto_3

    .line 203
    :catchall_1
    move-exception p0

    .line 204
    goto :goto_5

    .line 205
    :catch_2
    move-exception v2

    .line 206
    :try_start_5
    const-string v3, "NotificationService"

    .line 207
    .line 208
    const-string v4, "Failed to save policy file, restoring backup"

    .line 209
    .line 210
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    .line 212
    .line 213
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    .line 216
    .line 217
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 218
    .line 219
    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 220
    .line 221
    .line 222
    :goto_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 223
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast p0, Lcom/android/server/notification/NotificationManagerService;

    .line 226
    .line 227
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    invoke-static {p0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    goto :goto_4

    .line 239
    :catch_3
    move-exception p0

    .line 240
    :try_start_6
    const-string v1, "NotificationService"

    .line 241
    .line 242
    const-string v2, "Failed to save policy file"

    .line 243
    .line 244
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    .line 246
    .line 247
    monitor-exit v0

    .line 248
    :goto_4
    return-void

    .line 249
    :goto_5
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 250
    throw p0

    .line 251
    :pswitch_2
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 252
    .line 253
    if-eqz v0, :cond_4

    .line 254
    .line 255
    const-string v0, "NotificationService"

    .line 256
    .line 257
    const-string v1, "handleSaveOngoingDismissExceptionPolicyFile runnable"

    .line 258
    .line 259
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    :cond_4
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    .line 265
    .line 266
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mOngoingDismissExceptionPolicyFile:Landroid/util/AtomicFile;

    .line 267
    .line 268
    monitor-enter v0

    .line 269
    :try_start_7
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    .line 270
    .line 271
    check-cast v1, Lcom/android/server/notification/NotificationManagerService;

    .line 272
    .line 273
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mOngoingDismissExceptionPolicyFile:Landroid/util/AtomicFile;

    .line 274
    .line 275
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 276
    .line 277
    .line 278
    move-result-object v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 279
    :try_start_8
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    .line 282
    .line 283
    invoke-static {v2, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mwriteOngoingDismissExceptionPolicyJson(Lcom/android/server/notification/NotificationManagerService;Ljava/io/FileOutputStream;)V

    .line 284
    .line 285
    .line 286
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    .line 287
    .line 288
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    .line 289
    .line 290
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mOngoingDismissExceptionPolicyFile:Landroid/util/AtomicFile;

    .line 291
    .line 292
    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 293
    .line 294
    .line 295
    goto :goto_6

    .line 296
    :catchall_2
    move-exception p0

    .line 297
    goto :goto_8

    .line 298
    :catch_4
    move-exception v2

    .line 299
    :try_start_9
    const-string v3, "NotificationService"

    .line 300
    .line 301
    const-string v4, "Failed to save ongoing dismiss exception policy file, restoring backup"

    .line 302
    .line 303
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    .line 305
    .line 306
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    .line 307
    .line 308
    check-cast p0, Lcom/android/server/notification/NotificationManagerService;

    .line 309
    .line 310
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mOngoingDismissExceptionPolicyFile:Landroid/util/AtomicFile;

    .line 311
    .line 312
    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 313
    .line 314
    .line 315
    :goto_6
    monitor-exit v0

    .line 316
    goto :goto_7

    .line 317
    :catch_5
    move-exception p0

    .line 318
    const-string v1, "NotificationService"

    .line 319
    .line 320
    const-string v2, "Failed to save ongoing dismiss exception policy file"

    .line 321
    .line 322
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    .line 324
    .line 325
    monitor-exit v0

    .line 326
    :goto_7
    return-void

    .line 327
    :goto_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 328
    throw p0

    .line 329
    :pswitch_3
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 330
    .line 331
    if-eqz v0, :cond_5

    .line 332
    .line 333
    const-string v0, "NotificationService"

    .line 334
    .line 335
    const-string v1, "handleSaveConversationPackagePolicyFile runnable"

    .line 336
    .line 337
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .line 339
    .line 340
    :cond_5
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    .line 341
    .line 342
    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    .line 343
    .line 344
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mConversationAppPolicyFile:Landroid/util/AtomicFile;

    .line 345
    .line 346
    monitor-enter v0

    .line 347
    :try_start_a
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    .line 348
    .line 349
    check-cast v1, Lcom/android/server/notification/NotificationManagerService;

    .line 350
    .line 351
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mConversationAppPolicyFile:Landroid/util/AtomicFile;

    .line 352
    .line 353
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 354
    .line 355
    .line 356
    move-result-object v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 357
    :try_start_b
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    .line 358
    .line 359
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    .line 360
    .line 361
    invoke-static {v2, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mwriteConversationAppPolicyJson(Lcom/android/server/notification/NotificationManagerService;Ljava/io/FileOutputStream;)V

    .line 362
    .line 363
    .line 364
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    .line 365
    .line 366
    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    .line 367
    .line 368
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mConversationAppPolicyFile:Landroid/util/AtomicFile;

    .line 369
    .line 370
    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 371
    .line 372
    .line 373
    goto :goto_9

    .line 374
    :catchall_3
    move-exception p0

    .line 375
    goto :goto_b

    .line 376
    :catch_6
    move-exception v2

    .line 377
    :try_start_c
    const-string v3, "NotificationService"

    .line 378
    .line 379
    const-string v4, "Failed to save conversation package policy file, restoring backup"

    .line 380
    .line 381
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    .line 383
    .line 384
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    .line 385
    .line 386
    check-cast p0, Lcom/android/server/notification/NotificationManagerService;

    .line 387
    .line 388
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mConversationAppPolicyFile:Landroid/util/AtomicFile;

    .line 389
    .line 390
    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 391
    .line 392
    .line 393
    :goto_9
    monitor-exit v0

    .line 394
    goto :goto_a

    .line 395
    :catch_7
    move-exception p0

    .line 396
    const-string v1, "NotificationService"

    .line 397
    .line 398
    const-string v2, "Failed to save conversation package policy file"

    .line 399
    .line 400
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    .line 402
    .line 403
    monitor-exit v0

    .line 404
    :goto_a
    return-void

    .line 405
    :goto_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 406
    throw p0

    .line 407
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    .line 408
    .line 409
    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    .line 410
    .line 411
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mWakeLockForAssistantDelay:Landroid/os/PowerManager$WakeLock;

    .line 412
    .line 413
    if-eqz v0, :cond_6

    .line 414
    .line 415
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 416
    .line 417
    .line 418
    move-result v0

    .line 419
    if-eqz v0, :cond_6

    .line 420
    .line 421
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    .line 422
    .line 423
    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    .line 424
    .line 425
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mWakeLockForAssistantDelay:Landroid/os/PowerManager$WakeLock;

    .line 426
    .line 427
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 428
    .line 429
    .line 430
    :cond_6
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    .line 431
    .line 432
    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    .line 433
    .line 434
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mWakeLockForAssistantDelay:Landroid/os/PowerManager$WakeLock;

    .line 435
    .line 436
    if-nez v1, :cond_7

    .line 437
    .line 438
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    const-class v2, Landroid/os/PowerManager;

    .line 443
    .line 444
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    check-cast v1, Landroid/os/PowerManager;

    .line 449
    .line 450
    const/4 v2, 0x1

    .line 451
    const-string v3, "Prevent Sleep by AssistantDelay"

    .line 452
    .line 453
    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mWakeLockForAssistantDelay:Landroid/os/PowerManager$WakeLock;

    .line 458
    .line 459
    :cond_7
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    .line 460
    .line 461
    check-cast p0, Lcom/android/server/notification/NotificationManagerService;

    .line 462
    .line 463
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mWakeLockForAssistantDelay:Landroid/os/PowerManager$WakeLock;

    .line 464
    .line 465
    const-wide/16 v0, 0x1f4

    .line 466
    .line 467
    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 468
    .line 469
    .line 470
    return-void

    .line 471
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    .line 472
    .line 473
    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    .line 474
    .line 475
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 476
    .line 477
    iget v1, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 478
    .line 479
    if-eqz v1, :cond_8

    .line 480
    .line 481
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    if-eqz v0, :cond_8

    .line 486
    .line 487
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    .line 488
    .line 489
    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    .line 490
    .line 491
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 492
    .line 493
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 498
    .line 499
    goto :goto_c

    .line 500
    :cond_8
    const/4 v0, 0x0

    .line 501
    :goto_c
    const-string/jumbo v1, "notifyZenPolicy : suppressed = "

    .line 502
    .line 503
    .line 504
    const-string v2, "NotificationService"

    .line 505
    .line 506
    invoke-static {v0, v1, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    .line 510
    .line 511
    check-cast p0, Lcom/android/server/notification/NotificationManagerService;

    .line 512
    .line 513
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    .line 514
    .line 515
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 516
    .line 517
    iput v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mSuppressed:I

    .line 518
    .line 519
    return-void

    .line 520
    nop

    .line 521
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
