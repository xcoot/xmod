.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda58;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda58;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda58;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

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
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda58;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda58;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNetworkLoggingNotificationUserId:I

    .line 9
    .line 10
    const-string v1, "DevicePolicyManager"

    .line 11
    .line 12
    const/16 v2, -0x2710

    .line 13
    .line 14
    if-ne v0, v2, :cond_0

    .line 15
    .line 16
    const-string p0, "Not cancelling network logging notification for USER_NULL"

    .line 17
    .line 18
    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v3, "Cancelling network logging notification for user %d"

    .line 31
    .line 32
    invoke-static {v1, v3, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNetworkLoggingNotificationUserId:I

    .line 42
    .line 43
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const/4 v3, 0x0

    .line 48
    const/16 v4, 0x3ea

    .line 49
    .line 50
    invoke-virtual {v0, v3, v4, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 51
    .line 52
    .line 53
    iput v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNetworkLoggingNotificationUserId:I

    .line 54
    .line 55
    :goto_0
    return-void

    .line 56
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v1, Landroid/content/Intent;

    .line 66
    .line 67
    const-string v2, "android.app.action.SHOW_DEVICE_MONITORING_DIALOG"

    .line 68
    .line 69
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getCurrentForegroundUserId()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNetworkLoggingNotificationUserId:I

    .line 88
    .line 89
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 90
    .line 91
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 92
    .line 93
    const/high16 v3, 0x4000000

    .line 94
    .line 95
    const/4 v4, 0x0

    .line 96
    invoke-static {v0, v4, v1, v3, v2}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    new-array v1, v4, [Ljava/lang/Object;

    .line 101
    .line 102
    const-string v2, "Core.NETWORK_LOGGING_TITLE"

    .line 103
    .line 104
    const v3, 0x10408e5

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUpdatableString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    new-array v2, v4, [Ljava/lang/Object;

    .line 112
    .line 113
    const-string v3, "Core.NETWORK_LOGGING_MESSAGE"

    .line 114
    .line 115
    const v4, 0x10408e4

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v3, v4, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUpdatableString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    new-instance v3, Landroid/app/Notification$Builder;

    .line 123
    .line 124
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 125
    .line 126
    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    .line 127
    .line 128
    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const v4, 0x1080441

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    const/4 v3, 0x1

    .line 151
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    .line 160
    .line 161
    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNetworkLoggingNotificationUserId:I

    .line 177
    .line 178
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    const-string v2, "DevicePolicyManager"

    .line 187
    .line 188
    const-string v3, "Sending network logging notification to user %d"

    .line 189
    .line 190
    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 194
    .line 195
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNetworkLoggingNotificationUserId:I

    .line 200
    .line 201
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    const/4 v2, 0x0

    .line 206
    const/16 v3, 0x3ea

    .line 207
    .line 208
    invoke-virtual {v1, v2, v3, v0, p0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 209
    .line 210
    .line 211
    return-void

    .line 212
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    monitor-enter v0

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 218
    .line 219
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    add-int/lit8 v2, v2, -0x1

    .line 228
    .line 229
    :goto_1
    if-ltz v2, :cond_1

    .line 230
    .line 231
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 236
    .line 237
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 238
    .line 239
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 240
    .line 241
    invoke-virtual {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminPackagesLocked(I)Ljava/util/Set;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    check-cast v4, Lcom/android/server/usage/UsageStatsService$LocalService;

    .line 246
    .line 247
    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 248
    .line 249
    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 250
    .line 251
    invoke-interface {v4, v5, v3}, Lcom/android/server/usage/AppStandbyInternal;->setActiveAdminApps(Ljava/util/Set;I)V

    .line 252
    .line 253
    .line 254
    add-int/lit8 v2, v2, -0x1

    .line 255
    .line 256
    goto :goto_1

    .line 257
    :catchall_0
    move-exception p0

    .line 258
    goto :goto_4

    .line 259
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 261
    .line 262
    check-cast v0, Lcom/android/server/usage/UsageStatsService$LocalService;

    .line 263
    .line 264
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 265
    .line 266
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 267
    .line 268
    invoke-interface {v0}, Lcom/android/server/usage/AppStandbyInternal;->onAdminDataAvailable()V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    monitor-enter v1

    .line 276
    :try_start_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 277
    .line 278
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    add-int/lit8 v2, v2, -0x1

    .line 287
    .line 288
    :goto_2
    if-ltz v2, :cond_2

    .line 289
    .line 290
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 295
    .line 296
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 297
    .line 298
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 299
    .line 300
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    const-class v4, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    .line 304
    .line 305
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    check-cast v4, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    .line 310
    .line 311
    invoke-virtual {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getMeteredDisabledPackages(I)Ljava/util/Set;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    iget-object v4, v4, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 316
    .line 317
    iget-object v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 318
    .line 319
    const/16 v6, 0x11

    .line 320
    .line 321
    const/4 v7, 0x0

    .line 322
    invoke-virtual {v4, v6, v3, v7, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 327
    .line 328
    .line 329
    add-int/lit8 v2, v2, -0x1

    .line 330
    .line 331
    goto :goto_2

    .line 332
    :catchall_1
    move-exception p0

    .line 333
    goto :goto_3

    .line 334
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 335
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 336
    .line 337
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    const-class p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    .line 341
    .line 342
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object p0

    .line 346
    check-cast p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    .line 347
    .line 348
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 349
    .line 350
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    .line 351
    .line 352
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 353
    .line 354
    .line 355
    return-void

    .line 356
    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 357
    throw p0

    .line 358
    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 359
    throw p0

    .line 360
    nop

    .line 361
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
