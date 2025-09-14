.class public final Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

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
    const/4 p1, 0x0

    .line 2
    const-string v0, "RestrictionPolicy"

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    iget v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->$r8$classId:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    const-string v3, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const-string/jumbo v4, "updateUsbMode failed"

    .line 24
    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    if-eqz v3, :cond_3

    .line 28
    .line 29
    :try_start_0
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 30
    .line 31
    invoke-static {p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$mupdateUSBMode(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 39
    .line 40
    invoke-virtual {p2, p1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {p2, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setStatusBarExpansionSystemUI(IZ)V

    .line 45
    .line 46
    .line 47
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 48
    .line 49
    invoke-virtual {p2, v5, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {p2, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateUsbStorageStatebyIntent(Z)Z

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 57
    .line 58
    iget-object p2, p2, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 59
    .line 60
    const-string v1, "PlatformSoftwareVersion"

    .line 61
    .line 62
    invoke-virtual {p2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getDatabaseUpgradeValue(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    const-string/jumbo v1, "ro.build.fingerprint"

    .line 67
    .line 68
    .line 69
    const-string/jumbo v2, "unknown"

    .line 70
    .line 71
    .line 72
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_0

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_0
    move-object v5, v1

    .line 84
    :goto_1
    if-eqz p2, :cond_1

    .line 85
    .line 86
    if-eqz v5, :cond_2

    .line 87
    .line 88
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-nez p2, :cond_2

    .line 93
    .line 94
    :cond_1
    const-string/jumbo p2, "isFirmwareChanged : true"

    .line 95
    .line 96
    .line 97
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 101
    .line 102
    invoke-virtual {p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateNonMarketAppOnUserManager()V

    .line 103
    .line 104
    .line 105
    :cond_2
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 106
    .line 107
    const/4 v0, -0x1

    .line 108
    invoke-virtual {p2, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->notifyChanges(I)V

    .line 109
    .line 110
    .line 111
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 112
    .line 113
    invoke-virtual {p2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-nez p1, :cond_a

    .line 118
    .line 119
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->turnOffAirPlaneMode()V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_2

    .line 125
    .line 126
    :cond_3
    const-string v3, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 127
    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_4

    .line 133
    .line 134
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 135
    .line 136
    invoke-static {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$mupdateUSBMode(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    .line 138
    .line 139
    goto/16 :goto_2

    .line 140
    .line 141
    :catch_1
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    goto/16 :goto_2

    .line 145
    .line 146
    :cond_4
    const-string/jumbo v3, "edm.intent.action.internal.sec.DEFAULT_NETWORK_POLICY_APPLIED"

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-eqz v3, :cond_6

    .line 154
    .line 155
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 156
    .line 157
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-eqz v3, :cond_5

    .line 162
    .line 163
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 164
    .line 165
    invoke-virtual {v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDataSavingAllowed()Z

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-nez v3, :cond_6

    .line 170
    .line 171
    :cond_5
    :try_start_2
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->applyBackgroundDataRestriction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 174
    .line 175
    .line 176
    goto/16 :goto_2

    .line 177
    .line 178
    :catch_2
    const-string p0, "Network Policy update failed"

    .line 179
    .line 180
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    goto/16 :goto_2

    .line 184
    .line 185
    :cond_6
    const-string v3, "android.intent.action.USER_SWITCHED"

    .line 186
    .line 187
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    const-string v4, "android.intent.extra.user_handle"

    .line 192
    .line 193
    if-eqz v3, :cond_7

    .line 194
    .line 195
    invoke-virtual {p2, v4, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 196
    .line 197
    .line 198
    move-result p2

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string v3, "Intent.ACTION_USER_SWITCHED occurred!! action:"

    .line 202
    .line 203
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string v2, " userId="

    .line 210
    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    const-string v1, ""

    .line 227
    .line 228
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 232
    .line 233
    sget-object v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->excludedAdminList:[Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(IZ)Z

    .line 236
    .line 237
    .line 238
    move-result p0

    .line 239
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    const-string p1, "/data/system/enterprise.conf"

    .line 247
    .line 248
    const-string/jumbo p2, "screenCaptureEnabled"

    .line 249
    .line 250
    .line 251
    invoke-static {p2, p0, p1}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_2

    .line 255
    .line 256
    :cond_7
    const-string v0, "android.intent.action.USER_ADDED"

    .line 257
    .line 258
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    if-eqz v0, :cond_8

    .line 263
    .line 264
    invoke-virtual {p2, v4, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 269
    .line 270
    sget-object p2, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->excludedAdminList:[Ljava/lang/String;

    .line 271
    .line 272
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 273
    .line 274
    invoke-virtual {p2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->load(I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->notifyChanges(I)V

    .line 278
    .line 279
    .line 280
    goto :goto_2

    .line 281
    :cond_8
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 282
    .line 283
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    if-eqz v0, :cond_9

    .line 288
    .line 289
    invoke-virtual {p2, v4, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 290
    .line 291
    .line 292
    move-result p1

    .line 293
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 294
    .line 295
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 296
    .line 297
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 298
    .line 299
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 300
    .line 301
    .line 302
    move-result-object p2

    .line 303
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 304
    .line 305
    .line 306
    :try_start_3
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCache:Ljava/util/HashMap;

    .line 307
    .line 308
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mApplyingAdmins:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;

    .line 316
    .line 317
    iget-object v0, p2, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->admins:Ljava/util/Map;

    .line 318
    .line 319
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    check-cast v0, Ljava/util/HashMap;

    .line 324
    .line 325
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    iget-object p2, p2, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->adminInfoMap:Ljava/util/Map;

    .line 329
    .line 330
    check-cast p2, Ljava/util/HashMap;

    .line 331
    .line 332
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 333
    .line 334
    .line 335
    move-result-object p2

    .line 336
    new-instance v0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins$$ExternalSyntheticLambda0;

    .line 337
    .line 338
    invoke-direct {v0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins$$ExternalSyntheticLambda0;-><init>(II)V

    .line 339
    .line 340
    .line 341
    invoke-interface {p2, v0}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 342
    .line 343
    .line 344
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCameraDisabledAdmin:Ljava/util/HashMap;

    .line 345
    .line 346
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 351
    .line 352
    .line 353
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 354
    .line 355
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 356
    .line 357
    .line 358
    move-result-object p0

    .line 359
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 360
    .line 361
    .line 362
    goto :goto_2

    .line 363
    :catchall_0
    move-exception p1

    .line 364
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 365
    .line 366
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 367
    .line 368
    .line 369
    move-result-object p0

    .line 370
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 371
    .line 372
    .line 373
    throw p1

    .line 374
    :cond_9
    const-string/jumbo v0, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    .line 375
    .line 376
    .line 377
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    if-eqz v0, :cond_a

    .line 382
    .line 383
    const-string/jumbo v0, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 384
    .line 385
    .line 386
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 387
    .line 388
    .line 389
    move-result p1

    .line 390
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 391
    .line 392
    sget-object p2, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->excludedAdminList:[Ljava/lang/String;

    .line 393
    .line 394
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateSystemUIMonitor$7(I)V

    .line 395
    .line 396
    .line 397
    :cond_a
    :goto_2
    return-void

    .line 398
    :pswitch_0
    const-string v2, "FOTAReceiver: onReceive"

    .line 399
    .line 400
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    .line 402
    .line 403
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    const-string/jumbo v3, "sec.fota.intent.MDM_REGISTER_RESULT"

    .line 408
    .line 409
    .line 410
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v3

    .line 414
    const-string/jumbo v4, "result"

    .line 415
    .line 416
    .line 417
    if-eqz v3, :cond_c

    .line 418
    .line 419
    invoke-virtual {p2, v4, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 420
    .line 421
    .line 422
    move-result p2

    .line 423
    if-eqz p2, :cond_b

    .line 424
    .line 425
    if-eq p2, v1, :cond_b

    .line 426
    .line 427
    const-string p1, "FOTAReceiver: action:sec.fota.intent.MDM_REGISTER_RESULT failure("

    .line 428
    .line 429
    const-string v2, ")"

    .line 430
    .line 431
    invoke-static {p2, p1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 435
    .line 436
    invoke-static {p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$mclearSelectiveFota(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    .line 437
    .line 438
    .line 439
    move p1, v1

    .line 440
    goto :goto_3

    .line 441
    :cond_b
    const-string p2, "action:sec.fota.intent.MDM_REGISTER_RESULT success"

    .line 442
    .line 443
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    .line 445
    .line 446
    :goto_3
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 447
    .line 448
    invoke-static {p1, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$msendSeletiveFotaResult(ILcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    .line 449
    .line 450
    .line 451
    goto :goto_5

    .line 452
    :cond_c
    const-string/jumbo v3, "com.xdm.intent.UPDATE_RESULT"

    .line 453
    .line 454
    .line 455
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    move-result v3

    .line 459
    if-eqz v3, :cond_e

    .line 460
    .line 461
    invoke-virtual {p2, v4, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 462
    .line 463
    .line 464
    move-result p1

    .line 465
    const/4 p2, 0x5

    .line 466
    add-int/2addr p1, p2

    .line 467
    const-string v1, "action:com.xdm.intent.UPDATE_RESULT = "

    .line 468
    .line 469
    invoke-static {p1, v1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    const/16 v0, 0x8

    .line 473
    .line 474
    if-gt p1, v0, :cond_f

    .line 475
    .line 476
    if-ge p1, p2, :cond_d

    .line 477
    .line 478
    goto :goto_5

    .line 479
    :cond_d
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 480
    .line 481
    invoke-static {p1, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$msendSeletiveFotaResult(ILcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    .line 482
    .line 483
    .line 484
    goto :goto_5

    .line 485
    :cond_e
    const-string/jumbo p2, "sec.fota.intent.MDM_UNREGISTER"

    .line 486
    .line 487
    .line 488
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 489
    .line 490
    .line 491
    move-result p2

    .line 492
    if-eqz p2, :cond_f

    .line 493
    .line 494
    const-string p2, "FOTAReceiver: action:sec.fota.intent.MDM_UNREGISTER"

    .line 495
    .line 496
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    .line 498
    .line 499
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 500
    .line 501
    invoke-static {p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$mclearSelectiveFota(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    .line 502
    .line 503
    .line 504
    const-string/jumbo p2, "com.wssyncmldm"

    .line 505
    .line 506
    .line 507
    const-string/jumbo v0, "com.samsung.utagent"

    .line 508
    .line 509
    .line 510
    filled-new-array {p2, v0}, [Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object p2

    .line 514
    :goto_4
    const/4 v0, 0x2

    .line 515
    if-ge p1, v0, :cond_f

    .line 516
    .line 517
    new-instance v0, Landroid/content/Intent;

    .line 518
    .line 519
    const-string/jumbo v2, "sec.fota.intent.MDM_REGISTER"

    .line 520
    .line 521
    .line 522
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    aget-object v2, p2, p1

    .line 526
    .line 527
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    .line 529
    .line 530
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 531
    .line 532
    iget-object v2, v2, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 533
    .line 534
    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 535
    .line 536
    .line 537
    add-int/2addr p1, v1

    .line 538
    goto :goto_4

    .line 539
    :cond_f
    :goto_5
    return-void

    .line 540
    nop

    .line 541
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
