.class public final Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    iget p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Landroid/os/RemoteCallback;

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-virtual {p0, p2}, Landroid/content/BroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p1, p0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "android.intent.extra.user_handle"

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const-string v1, "android.intent.action.USER_STARTED"

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isNetworkLoggingEnabledInternalLocked()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_0

    .line 62
    .line 63
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 66
    .line 67
    invoke-virtual {v3, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setNetworkLoggingActiveInternal(Z)V

    .line 68
    .line 69
    .line 70
    :cond_0
    monitor-exit v1

    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p0

    .line 75
    :cond_1
    :goto_0
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 76
    .line 77
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->calculateHasIncompatibleAccounts()V

    .line 88
    .line 89
    .line 90
    :cond_2
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 91
    .line 92
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_4

    .line 97
    .line 98
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 101
    .line 102
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserId()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-ne v0, v1, :cond_4

    .line 109
    .line 110
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 113
    .line 114
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mBugreportCollectionManager:Lcom/android/server/devicepolicy/RemoteBugreportManager;

    .line 115
    .line 116
    iget-object v3, v1, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 117
    .line 118
    invoke-virtual {v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerRemoteBugreportUriAndHash()Landroid/util/Pair;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    if-nez v3, :cond_3

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    const-string/jumbo v3, "com.android.server.action.REMOTE_BUGREPORT_SHARING_DECLINED"

    .line 126
    .line 127
    .line 128
    const-string/jumbo v4, "com.android.server.action.REMOTE_BUGREPORT_SHARING_ACCEPTED"

    .line 129
    .line 130
    .line 131
    invoke-static {v3, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    iget-object v4, v1, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    .line 136
    .line 137
    iget-object v5, v1, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportConsentReceiver:Lcom/android/server/devicepolicy/RemoteBugreportManager$1;

    .line 138
    .line 139
    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    .line 141
    .line 142
    const/4 v3, 0x3

    .line 143
    invoke-virtual {v1, v3}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->notify(I)V

    .line 144
    .line 145
    .line 146
    :cond_4
    :goto_1
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 147
    .line 148
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-nez v1, :cond_5

    .line 153
    .line 154
    const-string/jumbo v1, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_6

    .line 162
    .line 163
    :cond_5
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 166
    .line 167
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 168
    .line 169
    new-instance v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1$1;

    .line 170
    .line 171
    invoke-direct {v3, p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1$1;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    .line 176
    .line 177
    :cond_6
    const-string v1, "android.intent.action.USER_ADDED"

    .line 178
    .line 179
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_7

    .line 184
    .line 185
    const-string p1, "android.app.action.USER_ADDED"

    .line 186
    .line 187
    invoke-virtual {p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->sendDeviceOwnerUserCommand(ILjava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 193
    .line 194
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    monitor-enter v1

    .line 199
    :try_start_1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->maybePauseDeviceWideLoggingLocked()V

    .line 204
    .line 205
    .line 206
    monitor-exit v1

    .line 207
    goto/16 :goto_5

    .line 208
    .line 209
    :catchall_1
    move-exception p0

    .line 210
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 211
    throw p0

    .line 212
    :cond_7
    const-string v1, "android.intent.action.USER_REMOVED"

    .line 213
    .line 214
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-eqz v1, :cond_9

    .line 219
    .line 220
    const-string p1, "android.app.action.USER_REMOVED"

    .line 221
    .line 222
    invoke-virtual {p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->sendDeviceOwnerUserCommand(ILjava/lang/String;)V

    .line 223
    .line 224
    .line 225
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 228
    .line 229
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    monitor-enter v1

    .line 234
    :try_start_2
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 237
    .line 238
    invoke-virtual {p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isUserAffiliatedWithDeviceLocked(I)Z

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast p2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 245
    .line 246
    invoke-virtual {p2, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeUserData(I)V

    .line 247
    .line 248
    .line 249
    if-nez p1, :cond_8

    .line 250
    .line 251
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 252
    .line 253
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 254
    .line 255
    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mdiscardDeviceWideLogsLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    .line 256
    .line 257
    .line 258
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 261
    .line 262
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->areAllUsersAffiliatedWithDeviceLocked()Z

    .line 263
    .line 264
    .line 265
    move-result p2

    .line 266
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isOrganizationOwnedDeviceWithManagedProfile()Z

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    iget-object v3, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 271
    .line 272
    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda158;

    .line 273
    .line 274
    invoke-direct {v4, p1, p2, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda158;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ZZ)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    invoke-static {v4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 281
    .line 282
    .line 283
    goto :goto_2

    .line 284
    :catchall_2
    move-exception p0

    .line 285
    goto :goto_3

    .line 286
    :cond_8
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 287
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 288
    .line 289
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 290
    .line 291
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 292
    .line 293
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->handleUserRemoved(I)V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_5

    .line 297
    .line 298
    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 299
    throw p0

    .line 300
    :cond_9
    const-string v1, "android.intent.action.USER_STARTED"

    .line 301
    .line 302
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    const/4 v3, 0x0

    .line 307
    const/4 v4, 0x0

    .line 308
    if-eqz v1, :cond_b

    .line 309
    .line 310
    const-string p1, "android.app.action.USER_STARTED"

    .line 311
    .line 312
    invoke-virtual {p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->sendDeviceOwnerUserCommand(ILjava/lang/String;)V

    .line 313
    .line 314
    .line 315
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 318
    .line 319
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    monitor-enter v1

    .line 324
    :try_start_4
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 325
    .line 326
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 327
    .line 328
    invoke-static {p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mmaybeSendAdminEnabledBroadcastLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 329
    .line 330
    .line 331
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 332
    .line 333
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 334
    .line 335
    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    .line 336
    .line 337
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 338
    .line 339
    .line 340
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 341
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 342
    .line 343
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 344
    .line 345
    invoke-static {v0, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mhandlePackagesChanged(ILcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 349
    .line 350
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 351
    .line 352
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getManagedUserId(I)I

    .line 353
    .line 354
    .line 355
    move-result p1

    .line 356
    if-ltz p1, :cond_a

    .line 357
    .line 358
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePersonalAppsSuspension(I)Z

    .line 359
    .line 360
    .line 361
    goto/16 :goto_5

    .line 362
    .line 363
    :cond_a
    invoke-virtual {p0, v0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->suspendPersonalAppsInternal(IIZ)V

    .line 364
    .line 365
    .line 366
    goto/16 :goto_5

    .line 367
    .line 368
    :catchall_3
    move-exception p0

    .line 369
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 370
    throw p0

    .line 371
    :cond_b
    const-string v1, "android.intent.action.USER_STOPPED"

    .line 372
    .line 373
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v1

    .line 377
    if-eqz v1, :cond_c

    .line 378
    .line 379
    const-string p1, "android.app.action.USER_STOPPED"

    .line 380
    .line 381
    invoke-virtual {p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->sendDeviceOwnerUserCommand(ILjava/lang/String;)V

    .line 382
    .line 383
    .line 384
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 385
    .line 386
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 387
    .line 388
    invoke-virtual {p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedProfile(I)Z

    .line 389
    .line 390
    .line 391
    move-result p1

    .line 392
    if-eqz p1, :cond_1e

    .line 393
    .line 394
    const-string p1, "DevicePolicyManager"

    .line 395
    .line 396
    const-string p2, "Managed profile was stopped"

    .line 397
    .line 398
    invoke-static {p1, p2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    .line 400
    .line 401
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 402
    .line 403
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 404
    .line 405
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePersonalAppsSuspension(I)Z

    .line 406
    .line 407
    .line 408
    goto/16 :goto_5

    .line 409
    .line 410
    :cond_c
    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 411
    .line 412
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    move-result v1

    .line 416
    if-eqz v1, :cond_d

    .line 417
    .line 418
    const-string p1, "android.app.action.USER_SWITCHED"

    .line 419
    .line 420
    invoke-virtual {p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->sendDeviceOwnerUserCommand(ILjava/lang/String;)V

    .line 421
    .line 422
    .line 423
    goto/16 :goto_5

    .line 424
    .line 425
    :cond_d
    const-string v1, "android.intent.action.USER_UNLOCKED"

    .line 426
    .line 427
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    if-eqz v1, :cond_e

    .line 432
    .line 433
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 434
    .line 435
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 436
    .line 437
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    monitor-enter v1

    .line 442
    :try_start_6
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 443
    .line 444
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 445
    .line 446
    invoke-static {p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mmaybeSendAdminEnabledBroadcastLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 447
    .line 448
    .line 449
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 450
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 451
    .line 452
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 453
    .line 454
    invoke-virtual {p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedProfile(I)Z

    .line 455
    .line 456
    .line 457
    move-result p1

    .line 458
    if-eqz p1, :cond_1e

    .line 459
    .line 460
    const-string p1, "DevicePolicyManager"

    .line 461
    .line 462
    const-string p2, "Managed profile became unlocked"

    .line 463
    .line 464
    invoke-static {p1, p2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .line 466
    .line 467
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 468
    .line 469
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 470
    .line 471
    invoke-virtual {p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePersonalAppsSuspension(I)Z

    .line 472
    .line 473
    .line 474
    move-result p1

    .line 475
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 476
    .line 477
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 478
    .line 479
    invoke-static {v0, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mtriggerPolicyComplianceCheckIfNeeded(ILcom/android/server/devicepolicy/DevicePolicyManagerService;Z)V

    .line 480
    .line 481
    .line 482
    goto/16 :goto_5

    .line 483
    .line 484
    :catchall_4
    move-exception p0

    .line 485
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 486
    throw p0

    .line 487
    :cond_e
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 488
    .line 489
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result v1

    .line 493
    if-eqz v1, :cond_f

    .line 494
    .line 495
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 496
    .line 497
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 498
    .line 499
    invoke-static {v0, p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mhandlePackagesChanged(ILcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    goto/16 :goto_5

    .line 503
    .line 504
    :cond_f
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 505
    .line 506
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    move-result v1

    .line 510
    if-eqz v1, :cond_10

    .line 511
    .line 512
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 513
    .line 514
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 515
    .line 516
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object p1

    .line 524
    invoke-static {v0, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mhandlePackagesChanged(ILcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    goto/16 :goto_5

    .line 528
    .line 529
    :cond_10
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 530
    .line 531
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 532
    .line 533
    .line 534
    move-result v1

    .line 535
    if-eqz v1, :cond_14

    .line 536
    .line 537
    const-string p1, "android.intent.extra.REPLACING"

    .line 538
    .line 539
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 540
    .line 541
    .line 542
    move-result p1

    .line 543
    if-eqz p1, :cond_11

    .line 544
    .line 545
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 546
    .line 547
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 548
    .line 549
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 550
    .line 551
    .line 552
    move-result-object p1

    .line 553
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object p1

    .line 557
    invoke-static {v0, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mhandlePackagesChanged(ILcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    goto/16 :goto_5

    .line 561
    .line 562
    :cond_11
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 563
    .line 564
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 565
    .line 566
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 567
    .line 568
    .line 569
    move-result-object p1

    .line 570
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object p1

    .line 574
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 575
    .line 576
    .line 577
    move-result-object p2

    .line 578
    iget-boolean p2, p2, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    .line 579
    .line 580
    if-nez p2, :cond_12

    .line 581
    .line 582
    goto/16 :goto_5

    .line 583
    .line 584
    :cond_12
    filled-new-array {p1}, [Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object p2

    .line 588
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 589
    .line 590
    invoke-virtual {v1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManager(I)Landroid/content/pm/PackageManager;

    .line 591
    .line 592
    .line 593
    move-result-object v1

    .line 594
    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getUnsuspendablePackages([Ljava/lang/String;)[Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v1

    .line 598
    array-length v1, v1

    .line 599
    if-eqz v1, :cond_13

    .line 600
    .line 601
    new-instance p0, Ljava/lang/StringBuilder;

    .line 602
    .line 603
    const-string p2, "Newly installed package is unsuspendable: "

    .line 604
    .line 605
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object p0

    .line 615
    const-string p1, "DevicePolicyManager"

    .line 616
    .line 617
    invoke-static {p1, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    .line 619
    .line 620
    goto/16 :goto_5

    .line 621
    .line 622
    :cond_13
    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setCrossProfileAppToIgnored(Ljava/lang/String;I)V

    .line 623
    .line 624
    .line 625
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 626
    .line 627
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 628
    .line 629
    .line 630
    invoke-static {}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 631
    .line 632
    .line 633
    move-result-object p0

    .line 634
    invoke-virtual {p0, v0, v2, p2}, Landroid/content/pm/PackageManagerInternal;->setPackagesSuspendedByAdmin(IZ[Ljava/lang/String;)[Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    goto/16 :goto_5

    .line 638
    .line 639
    :cond_14
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 640
    .line 641
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 642
    .line 643
    .line 644
    move-result v1

    .line 645
    if-eqz v1, :cond_15

    .line 646
    .line 647
    const-string v1, "android.intent.extra.REPLACING"

    .line 648
    .line 649
    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 650
    .line 651
    .line 652
    move-result v1

    .line 653
    if-nez v1, :cond_15

    .line 654
    .line 655
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 656
    .line 657
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 658
    .line 659
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 660
    .line 661
    .line 662
    move-result-object v1

    .line 663
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v1

    .line 667
    invoke-static {v0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mhandlePackagesChanged(ILcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;)V

    .line 668
    .line 669
    .line 670
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 671
    .line 672
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 673
    .line 674
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 675
    .line 676
    .line 677
    move-result-object p1

    .line 678
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object p1

    .line 682
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mBackgroundHandler:Landroid/os/Handler;

    .line 683
    .line 684
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda27;

    .line 685
    .line 686
    const/4 v1, 0x2

    .line 687
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/Object;I)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 691
    .line 692
    .line 693
    goto/16 :goto_5

    .line 694
    .line 695
    :cond_15
    const-string p2, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 696
    .line 697
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 698
    .line 699
    .line 700
    move-result p2

    .line 701
    if-eqz p2, :cond_16

    .line 702
    .line 703
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 704
    .line 705
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 706
    .line 707
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 708
    .line 709
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    .line 710
    .line 711
    .line 712
    move-result-object p0

    .line 713
    const/16 p1, 0x3e9

    .line 714
    .line 715
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 716
    .line 717
    .line 718
    goto/16 :goto_5

    .line 719
    .line 720
    :cond_16
    const-string p2, "android.intent.action.DATE_CHANGED"

    .line 721
    .line 722
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 723
    .line 724
    .line 725
    move-result p2

    .line 726
    if-nez p2, :cond_1d

    .line 727
    .line 728
    const-string p2, "android.intent.action.TIME_SET"

    .line 729
    .line 730
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 731
    .line 732
    .line 733
    move-result p2

    .line 734
    if-eqz p2, :cond_17

    .line 735
    .line 736
    goto/16 :goto_4

    .line 737
    .line 738
    :cond_17
    const-string/jumbo p2, "com.android.server.ACTION_PROFILE_OFF_DEADLINE"

    .line 739
    .line 740
    .line 741
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 742
    .line 743
    .line 744
    move-result p2

    .line 745
    if-eqz p2, :cond_19

    .line 746
    .line 747
    const-string p1, "DevicePolicyManager"

    .line 748
    .line 749
    const-string p2, "Profile off deadline alarm was triggered"

    .line 750
    .line 751
    invoke-static {p1, p2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    .line 753
    .line 754
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 755
    .line 756
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 757
    .line 758
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getMainUserId()I

    .line 759
    .line 760
    .line 761
    move-result p2

    .line 762
    invoke-virtual {p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getManagedUserId(I)I

    .line 763
    .line 764
    .line 765
    move-result p1

    .line 766
    if-ltz p1, :cond_18

    .line 767
    .line 768
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 769
    .line 770
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 771
    .line 772
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePersonalAppsSuspension(I)Z

    .line 773
    .line 774
    .line 775
    goto/16 :goto_5

    .line 776
    .line 777
    :cond_18
    const-string p0, "DevicePolicyManager"

    .line 778
    .line 779
    const-string p1, "Got deadline alarm for nonexistent profile"

    .line 780
    .line 781
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    .line 783
    .line 784
    goto/16 :goto_5

    .line 785
    .line 786
    :cond_19
    const-string/jumbo p2, "com.android.server.ACTION_TURN_PROFILE_ON_NOTIFICATION"

    .line 787
    .line 788
    .line 789
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 790
    .line 791
    .line 792
    move-result p2

    .line 793
    if-eqz p2, :cond_1a

    .line 794
    .line 795
    const-string p1, "DevicePolicyManager"

    .line 796
    .line 797
    new-instance p2, Ljava/lang/StringBuilder;

    .line 798
    .line 799
    const-string/jumbo v1, "requesting to turn on the profile: "

    .line 800
    .line 801
    .line 802
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 803
    .line 804
    .line 805
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 806
    .line 807
    .line 808
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object p2

    .line 812
    invoke-static {p1, p2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    .line 814
    .line 815
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 816
    .line 817
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 818
    .line 819
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 820
    .line 821
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 822
    .line 823
    .line 824
    move-result-object p1

    .line 825
    invoke-virtual {p0, v4, p1}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;)Z

    .line 826
    .line 827
    .line 828
    goto :goto_5

    .line 829
    :cond_1a
    const-string p2, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 830
    .line 831
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 832
    .line 833
    .line 834
    move-result p2

    .line 835
    if-eqz p2, :cond_1b

    .line 836
    .line 837
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 838
    .line 839
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 840
    .line 841
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 842
    .line 843
    .line 844
    move-result-object p2

    .line 845
    invoke-static {p1, p2, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mnotifyIfManagedSubscriptionsAreUnavailable(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/UserHandle;Z)V

    .line 846
    .line 847
    .line 848
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 849
    .line 850
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 851
    .line 852
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePersonalAppsSuspension(I)Z

    .line 853
    .line 854
    .line 855
    goto :goto_5

    .line 856
    :cond_1b
    const-string p2, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 857
    .line 858
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 859
    .line 860
    .line 861
    move-result p2

    .line 862
    if-eqz p2, :cond_1c

    .line 863
    .line 864
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 865
    .line 866
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 867
    .line 868
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 869
    .line 870
    .line 871
    move-result-object p2

    .line 872
    invoke-static {p1, p2, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mnotifyIfManagedSubscriptionsAreUnavailable(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/UserHandle;Z)V

    .line 873
    .line 874
    .line 875
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 876
    .line 877
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 878
    .line 879
    invoke-virtual {p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePersonalAppsSuspension(I)Z

    .line 880
    .line 881
    .line 882
    move-result p1

    .line 883
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 884
    .line 885
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 886
    .line 887
    invoke-static {v0, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mtriggerPolicyComplianceCheckIfNeeded(ILcom/android/server/devicepolicy/DevicePolicyManagerService;Z)V

    .line 888
    .line 889
    .line 890
    goto :goto_5

    .line 891
    :cond_1c
    const-string p2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    .line 892
    .line 893
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 894
    .line 895
    .line 896
    move-result p1

    .line 897
    if-eqz p1, :cond_1e

    .line 898
    .line 899
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 900
    .line 901
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 902
    .line 903
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->calculateHasIncompatibleAccounts()V

    .line 904
    .line 905
    .line 906
    goto :goto_5

    .line 907
    :cond_1d
    :goto_4
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 908
    .line 909
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 910
    .line 911
    invoke-virtual {p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateSystemUpdateFreezePeriodsRecord(Z)V

    .line 912
    .line 913
    .line 914
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 915
    .line 916
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 917
    .line 918
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getMainUserId()I

    .line 919
    .line 920
    .line 921
    move-result p2

    .line 922
    invoke-virtual {p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getManagedUserId(I)I

    .line 923
    .line 924
    .line 925
    move-result p1

    .line 926
    if-ltz p1, :cond_1e

    .line 927
    .line 928
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 929
    .line 930
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 931
    .line 932
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePersonalAppsSuspension(I)Z

    .line 933
    .line 934
    .line 935
    :cond_1e
    :goto_5
    return-void

    .line 936
    nop

    .line 937
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public sendDeviceOwnerUserCommand(ILjava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerAdminLocked()Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    new-instance v5, Landroid/os/Bundle;

    .line 21
    .line 22
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v1, "android.intent.extra.USER"

    .line 26
    .line 27
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v5, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 35
    .line 36
    move-object v2, p0

    .line 37
    check-cast v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    const/4 v7, 0x1

    .line 41
    move-object v4, p2

    .line 42
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;Z)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    :goto_0
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method
