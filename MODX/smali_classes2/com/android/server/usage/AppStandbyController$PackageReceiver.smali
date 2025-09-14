.class public final Lcom/android/server/usage/AppStandbyController$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/usage/AppStandbyController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usage/AppStandbyController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

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
    .locals 13

    .line 1
    const/4 p1, -0x1

    .line 2
    const/4 v0, 0x1

    .line 3
    const/4 v1, 0x0

    .line 4
    iget v2, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->$r8$classId:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    sparse-switch v2, :sswitch_data_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :sswitch_0
    const-string v2, "android.os.action.CHARGING"

    .line 25
    .line 26
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-nez p2, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x2

    .line 34
    goto :goto_0

    .line 35
    :sswitch_1
    const-string v2, "android.os.action.DISCHARGING"

    .line 36
    .line 37
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-nez p2, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move p1, v0

    .line 45
    goto :goto_0

    .line 46
    :sswitch_2
    const-string v2, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    .line 47
    .line 48
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-nez p2, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    move p1, v1

    .line 56
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/android/server/usage/AppStandbyController;->setChargingState(Z)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 67
    .line 68
    invoke-virtual {p0, v1}, Lcom/android/server/usage/AppStandbyController;->setChargingState(Z)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 73
    .line 74
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    .line 75
    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 79
    .line 80
    new-instance p2, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda0;

    .line 81
    .line 82
    invoke-direct {p2, p0, v1}, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usage/AppStandbyController;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    .line 87
    .line 88
    :cond_3
    :goto_1
    return-void

    .line 89
    :pswitch_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 102
    .line 103
    .line 104
    move-result v12

    .line 105
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    .line 106
    .line 107
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-nez v4, :cond_4

    .line 112
    .line 113
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    .line 114
    .line 115
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-eqz v4, :cond_8

    .line 120
    .line 121
    :cond_4
    const-string v4, "android.intent.extra.changed_component_name_list"

    .line 122
    .line 123
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    if-eqz v4, :cond_5

    .line 128
    .line 129
    array-length v5, v4

    .line 130
    if-ne v5, v0, :cond_7

    .line 131
    .line 132
    aget-object v0, v4, v1

    .line 133
    .line 134
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_7

    .line 139
    .line 140
    :cond_5
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController;->clearCarrierPrivilegedApps()V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 146
    .line 147
    iget-boolean v4, v0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    .line 148
    .line 149
    if-nez v4, :cond_6

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_6
    :try_start_0
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 153
    .line 154
    const v5, 0x1c0200

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4, v3, v5, v12}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    invoke-virtual {v0, v4}, Lcom/android/server/usage/AppStandbyController;->maybeUpdateHeadlessSystemAppCache(Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :catch_0
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    .line 166
    .line 167
    monitor-enter v4

    .line 168
    :try_start_1
    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    .line 169
    .line 170
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 174
    :cond_7
    :goto_2
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 175
    .line 176
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_8

    .line 181
    .line 182
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 183
    .line 184
    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 185
    .line 186
    const/16 v4, 0xb

    .line 187
    .line 188
    invoke-virtual {v0, v4, v12, p1, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 193
    .line 194
    .line 195
    :cond_8
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 196
    .line 197
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-nez v0, :cond_9

    .line 202
    .line 203
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 204
    .line 205
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-eqz v0, :cond_d

    .line 210
    .line 211
    :cond_9
    const-string v0, "android.intent.extra.REPLACING"

    .line 212
    .line 213
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_a

    .line 218
    .line 219
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 220
    .line 221
    invoke-virtual {v0, v3, v12}, Lcom/android/server/usage/AppStandbyController;->maybeUnrestrictBuggyApp(Ljava/lang/String;I)V

    .line 222
    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_a
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 226
    .line 227
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-nez v0, :cond_b

    .line 232
    .line 233
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 234
    .line 235
    invoke-virtual {v0, v3, v12}, Lcom/android/server/usage/AppStandbyController;->clearAppIdleForPackage(Ljava/lang/String;I)V

    .line 236
    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_b
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 240
    .line 241
    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mAppsToRestoreToRare:Landroid/util/SparseSetArray;

    .line 242
    .line 243
    invoke-virtual {v0, v12, v3}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-eqz v0, :cond_d

    .line 248
    .line 249
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 250
    .line 251
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 252
    .line 253
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 257
    .line 258
    .line 259
    move-result-wide v10

    .line 260
    const/4 v9, 0x0

    .line 261
    move-object v4, v0

    .line 262
    move-object v5, v3

    .line 263
    move v6, v12

    .line 264
    move-wide v7, v10

    .line 265
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/usage/AppStandbyController;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    const/16 v4, 0x32

    .line 270
    .line 271
    if-ne v1, v4, :cond_c

    .line 272
    .line 273
    const/4 v1, 0x0

    .line 274
    const/16 v7, 0x102

    .line 275
    .line 276
    const/16 v6, 0x28

    .line 277
    .line 278
    move-object v4, v0

    .line 279
    move v5, v12

    .line 280
    move-wide v8, v10

    .line 281
    move-object v10, v3

    .line 282
    move v11, v1

    .line 283
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(IIIJLjava/lang/String;Z)V

    .line 284
    .line 285
    .line 286
    :cond_c
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 287
    .line 288
    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mAppsToRestoreToRare:Landroid/util/SparseSetArray;

    .line 289
    .line 290
    invoke-virtual {v0, v12, v3}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 294
    .line 295
    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mSystemExemptionAppOpMode:Landroid/util/SparseIntArray;

    .line 296
    .line 297
    monitor-enter v0

    .line 298
    :try_start_2
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 299
    .line 300
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    if-eqz v1, :cond_e

    .line 305
    .line 306
    const-string v1, "android.intent.extra.UID"

    .line 307
    .line 308
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 309
    .line 310
    .line 311
    move-result p1

    .line 312
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 313
    .line 314
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemExemptionAppOpMode:Landroid/util/SparseIntArray;

    .line 315
    .line 316
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 317
    .line 318
    .line 319
    goto :goto_4

    .line 320
    :catchall_0
    move-exception p0

    .line 321
    goto :goto_5

    .line 322
    :cond_e
    :goto_4
    monitor-exit v0

    .line 323
    return-void

    .line 324
    :goto_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 325
    throw p0

    .line 326
    :catchall_1
    move-exception p0

    .line 327
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 328
    throw p0

    .line 329
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    :sswitch_data_0
    .sparse-switch
        -0x3e97d1f -> :sswitch_2
        -0x3465cce -> :sswitch_1
        0x388694fe -> :sswitch_0
    .end sparse-switch

    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
