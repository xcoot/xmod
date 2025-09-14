.class public final Lcom/android/server/am/ServiceRecord$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ServiceRecord;

.field public final synthetic val$_foregroundNoti:Landroid/app/Notification;

.field public final synthetic val$appPid:I

.field public final synthetic val$appUid:I

.field public final synthetic val$byForegroundService:Z

.field public final synthetic val$localForegroundId:I

.field public final synthetic val$localPackageName:Ljava/lang/String;

.field public final synthetic val$record:Lcom/android/server/am/ServiceRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;ILandroid/app/Notification;IIZLcom/android/server/am/ServiceRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/ServiceRecord$2;->val$localPackageName:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/am/ServiceRecord$2;->val$appUid:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/am/ServiceRecord$2;->val$_foregroundNoti:Landroid/app/Notification;

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/am/ServiceRecord$2;->val$appPid:I

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/am/ServiceRecord$2;->val$localForegroundId:I

    .line 15
    .line 16
    iput-boolean p7, p0, Lcom/android/server/am/ServiceRecord$2;->val$byForegroundService:Z

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/server/am/ServiceRecord$2;->val$record:Lcom/android/server/am/ServiceRecord;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string/jumbo v0, "invalid service notification: "

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "invalid channel for service notification: "

    .line 7
    .line 8
    .line 9
    const-string v3, "Attempted to start a foreground service ("

    .line 10
    .line 11
    const-class v4, Lcom/android/server/notification/NotificationManagerInternal;

    .line 12
    .line 13
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Lcom/android/server/notification/NotificationManagerInternal;

    .line 18
    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 23
    .line 24
    iget v6, v1, Lcom/android/server/am/ServiceRecord$2;->val$appUid:I

    .line 25
    .line 26
    move-object v7, v4

    .line 27
    check-cast v7, Lcom/android/server/notification/NotificationManagerService$18;

    .line 28
    .line 29
    iget-object v8, v7, Lcom/android/server/notification/NotificationManagerService$18;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 30
    .line 31
    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    .line 32
    .line 33
    invoke-virtual {v8, v6}, Lcom/android/server/notification/PermissionHelper;->hasPermission(I)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    iput-boolean v6, v5, Lcom/android/server/am/ServiceRecord;->mFgsHasNotificationPermission:Z

    .line 38
    .line 39
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord$2;->val$_foregroundNoti:Landroid/app/Notification;

    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    :try_start_0
    invoke-virtual {v5}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    if-nez v8, :cond_2

    .line 47
    .line 48
    const-string v8, "ActivityManager"

    .line 49
    .line 50
    new-instance v9, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v3, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 56
    .line 57
    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v3, ") with a broken notification (no icon: "

    .line 63
    .line 64
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v3, ")"

    .line 71
    .line 72
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-static {v8, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    iget-object v3, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 83
    .line 84
    iget-object v8, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 85
    .line 86
    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 87
    .line 88
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 89
    .line 90
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v8, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    if-nez v3, :cond_1

    .line 99
    .line 100
    iget-object v3, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 101
    .line 102
    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 103
    .line 104
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    goto/16 :goto_3

    .line 109
    .line 110
    :cond_1
    :goto_0
    :try_start_1
    iget-object v8, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 111
    .line 112
    iget-object v9, v8, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 113
    .line 114
    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 117
    .line 118
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 119
    .line 120
    new-instance v10, Landroid/os/UserHandle;

    .line 121
    .line 122
    iget-object v11, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 123
    .line 124
    iget v11, v11, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 125
    .line 126
    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v9, v8, v6, v10}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    new-instance v9, Landroid/app/Notification$Builder;

    .line 134
    .line 135
    invoke-virtual {v5}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v10

    .line 139
    invoke-direct {v9, v8, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object v8, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 143
    .line 144
    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 145
    .line 146
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 147
    .line 148
    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 149
    .line 150
    .line 151
    const/16 v8, 0x40

    .line 152
    .line 153
    const/4 v10, 0x1

    .line 154
    invoke-virtual {v9, v8, v10}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 155
    .line 156
    .line 157
    new-instance v13, Landroid/content/Intent;

    .line 158
    .line 159
    const-string v8, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 160
    .line 161
    invoke-direct {v13, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const-string/jumbo v8, "package"

    .line 165
    .line 166
    .line 167
    iget-object v10, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 168
    .line 169
    iget-object v10, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 170
    .line 171
    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 172
    .line 173
    const/4 v11, 0x0

    .line 174
    invoke-static {v8, v10, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    invoke-virtual {v13, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 179
    .line 180
    .line 181
    iget-object v8, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 182
    .line 183
    iget-object v10, v8, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 184
    .line 185
    iget-object v11, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 186
    .line 187
    iget v8, v8, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 188
    .line 189
    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 190
    .line 191
    .line 192
    move-result-object v16

    .line 193
    const/high16 v14, 0xc000000

    .line 194
    .line 195
    const/4 v15, 0x0

    .line 196
    const/4 v12, 0x0

    .line 197
    invoke-static/range {v11 .. v16}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    iget-object v10, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 202
    .line 203
    iget-object v10, v10, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 204
    .line 205
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 206
    .line 207
    const v11, 0x106001c

    .line 208
    .line 209
    .line 210
    invoke-virtual {v10, v11}, Landroid/content/Context;->getColor(I)I

    .line 211
    .line 212
    .line 213
    move-result v10

    .line 214
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 215
    .line 216
    .line 217
    iget-object v10, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 218
    .line 219
    iget-object v10, v10, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 220
    .line 221
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 222
    .line 223
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v11

    .line 227
    const v12, 0x10401e8

    .line 228
    .line 229
    .line 230
    invoke-virtual {v10, v12, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v10

    .line 234
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 235
    .line 236
    .line 237
    iget-object v10, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 238
    .line 239
    iget-object v10, v10, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 240
    .line 241
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 242
    .line 243
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    const v11, 0x10401e7

    .line 248
    .line 249
    .line 250
    invoke-virtual {v10, v11, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v9}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 261
    .line 262
    .line 263
    move-result-object v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 264
    :catch_1
    :cond_2
    :try_start_2
    iget-object v3, v1, Lcom/android/server/am/ServiceRecord$2;->val$localPackageName:Ljava/lang/String;

    .line 265
    .line 266
    iget v8, v1, Lcom/android/server/am/ServiceRecord$2;->val$appUid:I

    .line 267
    .line 268
    invoke-virtual {v5}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v9

    .line 272
    invoke-virtual {v7, v8, v3, v9}, Lcom/android/server/notification/NotificationManagerService$18;->getNotificationChannel(ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 273
    .line 274
    .line 275
    move-result-object v3
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 276
    if-nez v3, :cond_4

    .line 277
    .line 278
    const/16 v3, 0x1b

    .line 279
    .line 280
    :try_start_3
    iget-object v7, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 281
    .line 282
    iget-object v7, v7, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 283
    .line 284
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 285
    .line 286
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 287
    .line 288
    .line 289
    move-result-object v7

    .line 290
    iget-object v8, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 291
    .line 292
    iget-object v9, v8, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 293
    .line 294
    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 295
    .line 296
    iget v8, v8, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 297
    .line 298
    invoke-virtual {v7, v9, v6, v8}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 299
    .line 300
    .line 301
    move-result-object v7

    .line 302
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 303
    .line 304
    goto :goto_1

    .line 305
    :catch_2
    move v7, v3

    .line 306
    :goto_1
    if-ge v7, v3, :cond_3

    .line 307
    .line 308
    goto :goto_2

    .line 309
    :cond_3
    :try_start_4
    new-instance v0, Ljava/lang/RuntimeException;

    .line 310
    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 317
    .line 318
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 319
    .line 320
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    throw v0

    .line 331
    :cond_4
    :goto_2
    invoke-virtual {v5}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    if-eqz v2, :cond_5

    .line 336
    .line 337
    iget-object v10, v1, Lcom/android/server/am/ServiceRecord$2;->val$localPackageName:Ljava/lang/String;

    .line 338
    .line 339
    iget v11, v1, Lcom/android/server/am/ServiceRecord$2;->val$appUid:I

    .line 340
    .line 341
    iget v12, v1, Lcom/android/server/am/ServiceRecord$2;->val$appPid:I

    .line 342
    .line 343
    iget v14, v1, Lcom/android/server/am/ServiceRecord$2;->val$localForegroundId:I

    .line 344
    .line 345
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 346
    .line 347
    iget v0, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 348
    .line 349
    iget-boolean v2, v1, Lcom/android/server/am/ServiceRecord$2;->val$byForegroundService:Z

    .line 350
    .line 351
    check-cast v4, Lcom/android/server/notification/NotificationManagerService$18;

    .line 352
    .line 353
    iget-object v8, v4, Lcom/android/server/notification/NotificationManagerService$18;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 354
    .line 355
    const/4 v13, 0x0

    .line 356
    const/16 v17, 0x0

    .line 357
    .line 358
    move-object v9, v10

    .line 359
    move-object v15, v5

    .line 360
    move/from16 v16, v0

    .line 361
    .line 362
    move/from16 v18, v2

    .line 363
    .line 364
    invoke-virtual/range {v8 .. v18}, Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;IZZ)V

    .line 365
    .line 366
    .line 367
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 368
    .line 369
    iput-object v5, v0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 370
    .line 371
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 372
    .line 373
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 374
    .line 375
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 376
    .line 377
    iget v3, v1, Lcom/android/server/am/ServiceRecord$2;->val$localForegroundId:I

    .line 378
    .line 379
    invoke-static {v3, v0, v2, v6}, Lcom/android/server/am/ServiceRecord;->-$$Nest$msignalForegroundServiceNotification(ILcom/android/server/am/ServiceRecord;Ljava/lang/String;Z)V

    .line 380
    .line 381
    .line 382
    goto :goto_5

    .line 383
    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    .line 384
    .line 385
    new-instance v3, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 391
    .line 392
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 393
    .line 394
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    throw v2
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 405
    :goto_3
    const-string v2, "ActivityManager"

    .line 406
    .line 407
    const-string v3, "Error showing notification for service"

    .line 408
    .line 409
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    .line 411
    .line 412
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    .line 413
    .line 414
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 415
    .line 416
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 417
    .line 418
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord$2;->val$record:Lcom/android/server/am/ServiceRecord;

    .line 419
    .line 420
    iget v8, v1, Lcom/android/server/am/ServiceRecord$2;->val$appUid:I

    .line 421
    .line 422
    iget v9, v1, Lcom/android/server/am/ServiceRecord$2;->val$appPid:I

    .line 423
    .line 424
    iget-object v10, v1, Lcom/android/server/am/ServiceRecord$2;->val$localPackageName:Ljava/lang/String;

    .line 425
    .line 426
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 427
    .line 428
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 429
    .line 430
    .line 431
    monitor-enter v1

    .line 432
    :try_start_5
    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->destroying:Z

    .line 433
    .line 434
    if-nez v3, :cond_6

    .line 435
    .line 436
    invoke-virtual {v0, v2, v6}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 437
    .line 438
    .line 439
    goto :goto_4

    .line 440
    :catchall_0
    move-exception v0

    .line 441
    goto :goto_6

    .line 442
    :cond_6
    iget v3, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 443
    .line 444
    invoke-virtual {v0, v3}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 445
    .line 446
    .line 447
    move-result-object v3

    .line 448
    iget-object v3, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 449
    .line 450
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    .line 451
    .line 452
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 457
    .line 458
    if-eqz v2, :cond_7

    .line 459
    .line 460
    invoke-virtual {v0, v2, v6}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 461
    .line 462
    .line 463
    :cond_7
    :goto_4
    iget-object v7, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 464
    .line 465
    const-string v12, "Bad notification for startForeground"

    .line 466
    .line 467
    const/4 v14, 0x2

    .line 468
    const/4 v15, 0x0

    .line 469
    const/4 v11, -0x1

    .line 470
    const/4 v13, 0x1

    .line 471
    invoke-virtual/range {v7 .. v15}, Lcom/android/server/am/ActivityManagerService;->crashApplicationWithTypeWithExtras(IILjava/lang/String;ILjava/lang/String;ZILandroid/os/Bundle;)V

    .line 472
    .line 473
    .line 474
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 475
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 476
    .line 477
    .line 478
    :goto_5
    return-void

    .line 479
    :goto_6
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 480
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 481
    .line 482
    .line 483
    throw v0
.end method
