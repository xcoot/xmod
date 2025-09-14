.class public final Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mNotifiedA11yServices:Landroid/util/ArraySet;

.field public mSendNotification:Z

.field public final mSentA11yServiceNotification:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mNotifiedA11yServices:Landroid/util/ArraySet;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mSentA11yServiceNotification:Ljava/util/List;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-class v0, Landroid/app/NotificationManager;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/app/NotificationManager;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public getEnabledServiceInfos()Ljava/util/List;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, -0x1

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-class v0, Landroid/content/ComponentName;

    .line 6
    .line 7
    const-string v1, "android.intent.extra.COMPONENT_NAME"

    .line 8
    .line 9
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/content/ComponentName;

    .line 14
    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_b

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_0
    const-string v2, "android.intent.extra.TIME"

    .line 26
    .line 27
    const-wide/16 v3, 0x0

    .line 28
    .line 29
    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v5

    .line 33
    cmp-long v2, v5, v3

    .line 34
    .line 35
    if-lez v2, :cond_1

    .line 36
    .line 37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    sub-long v3, v2, v5

    .line 42
    .line 43
    :cond_1
    const-string v2, "android.intent.extra.USER_ID"

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    sget-object v2, Lcom/android/server/accessibility/PolicyWarningUIController;->ACTION_SEND_NOTIFICATION:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    const/16 v6, 0x3ed

    .line 57
    .line 58
    if-eqz v2, :cond_6

    .line 59
    .line 60
    iget p1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mCurrentUserId:I

    .line 61
    .line 62
    if-eq p2, p1, :cond_2

    .line 63
    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :cond_2
    iget-boolean p1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mSendNotification:Z

    .line 67
    .line 68
    if-nez p1, :cond_3

    .line 69
    .line 70
    goto/16 :goto_2

    .line 71
    .line 72
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->getEnabledServiceInfos()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-ge v5, v1, :cond_b

    .line 81
    .line 82
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_5

    .line 105
    .line 106
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->isAccessibilityTool()Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-nez p1, :cond_b

    .line 111
    .line 112
    iget-object p1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mNotifiedA11yServices:Landroid/util/ArraySet;

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-nez p1, :cond_b

    .line 119
    .line 120
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 125
    .line 126
    iget-object v2, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    .line 127
    .line 128
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {p1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iget-object v2, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    .line 141
    .line 142
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    iget-object v2, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    .line 151
    .line 152
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    const/high16 v5, 0x1050000

    .line 157
    .line 158
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    invoke-static {v1, v2, v2}, Lcom/android/internal/util/ImageUtils;->buildScaledBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    new-instance v2, Landroid/app/Notification$Builder;

    .line 167
    .line 168
    iget-object v5, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    .line 169
    .line 170
    sget-object v7, Lcom/android/internal/notification/SystemNotificationChannels;->ACCESSIBILITY_SECURITY_POLICY:Ljava/lang/String;

    .line 171
    .line 172
    invoke-direct {v2, v5, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    const v5, 0x1080386

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    const v7, 0x10808c8

    .line 183
    .line 184
    .line 185
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    iget-object v7, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    .line 190
    .line 191
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    const v8, 0x10600f4

    .line 196
    .line 197
    .line 198
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    .line 199
    .line 200
    .line 201
    move-result v7

    .line 202
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    const-string/jumbo v7, "recommendation"

    .line 207
    .line 208
    .line 209
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    iget-object v7, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    .line 214
    .line 215
    const v8, 0x1041005

    .line 216
    .line 217
    .line 218
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    iget-object v7, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    .line 227
    .line 228
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v9

    .line 232
    const v10, 0x1041004

    .line 233
    .line 234
    .line 235
    invoke-virtual {v7, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    new-instance v7, Landroid/app/Notification$BigTextStyle;

    .line 244
    .line 245
    invoke-direct {v7}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 246
    .line 247
    .line 248
    iget-object v9, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    .line 249
    .line 250
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    invoke-virtual {v9, v10, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    invoke-virtual {v7, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-virtual {v5, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    iget-object v5, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    .line 267
    .line 268
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    invoke-virtual {p1, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    const/4 v5, 0x1

    .line 277
    invoke-virtual {p1, v5}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    iget-object v5, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    .line 282
    .line 283
    sget-object v7, Lcom/android/server/accessibility/PolicyWarningUIController;->ACTION_DISMISS_NOTIFICATION:Ljava/lang/String;

    .line 284
    .line 285
    invoke-static {v5, p2, v7, v0}, Lcom/android/server/accessibility/PolicyWarningUIController;->createPendingIntent(Landroid/content/Context;ILjava/lang/String;Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    invoke-virtual {p1, v5}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    iget-object v5, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    .line 294
    .line 295
    sget-object v7, Lcom/android/server/accessibility/PolicyWarningUIController;->ACTION_A11Y_SETTINGS:Ljava/lang/String;

    .line 296
    .line 297
    invoke-static {v5, p2, v7, v0}, Lcom/android/server/accessibility/PolicyWarningUIController;->createPendingIntent(Landroid/content/Context;ILjava/lang/String;Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    .line 298
    .line 299
    .line 300
    move-result-object p2

    .line 301
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 302
    .line 303
    .line 304
    if-eqz v1, :cond_4

    .line 305
    .line 306
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 307
    .line 308
    .line 309
    :cond_4
    iget-object p1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 310
    .line 311
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p2

    .line 315
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-virtual {p1, p2, v6, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 320
    .line 321
    .line 322
    iget-object p0, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mSentA11yServiceNotification:Ljava/util/List;

    .line 323
    .line 324
    check-cast p0, Ljava/util/ArrayList;

    .line 325
    .line 326
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p0

    .line 333
    sget p1, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->ACCESSIBILITY_PRIVACY_WARNING_STATUS_SHOWN:I

    .line 334
    .line 335
    invoke-static {p0, p1, v3, v4}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logNonA11yToolServiceWarningReported(Ljava/lang/String;IJ)V

    .line 336
    .line 337
    .line 338
    goto/16 :goto_2

    .line 339
    .line 340
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 341
    .line 342
    goto/16 :goto_0

    .line 343
    .line 344
    :cond_6
    sget-object v2, Lcom/android/server/accessibility/PolicyWarningUIController;->ACTION_A11Y_SETTINGS:Ljava/lang/String;

    .line 345
    .line 346
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    if-eqz v2, :cond_9

    .line 351
    .line 352
    iget p1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mCurrentUserId:I

    .line 353
    .line 354
    if-eq p2, p1, :cond_7

    .line 355
    .line 356
    goto :goto_1

    .line 357
    :cond_7
    const-string p1, "android.settings.ACCESSIBILITY_DETAILS_SETTINGS"

    .line 358
    .line 359
    const v2, 0x10008000

    .line 360
    .line 361
    .line 362
    invoke-static {v2, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    .line 372
    .line 373
    const-string/jumbo v1, "start_time_to_log_a11y_tool"

    .line 374
    .line 375
    .line 376
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 377
    .line 378
    .line 379
    move-result-wide v7

    .line 380
    invoke-virtual {p1, v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 381
    .line 382
    .line 383
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    iget-object v2, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    .line 388
    .line 389
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    .line 390
    .line 391
    .line 392
    move-result v2

    .line 393
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    iget-object v2, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    .line 402
    .line 403
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 404
    .line 405
    .line 406
    move-result-object v5

    .line 407
    invoke-virtual {v2, p1, v1, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 408
    .line 409
    .line 410
    iget-object p1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    .line 411
    .line 412
    const-class v1, Landroid/app/StatusBarManager;

    .line 413
    .line 414
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object p1

    .line 418
    check-cast p1, Landroid/app/StatusBarManager;

    .line 419
    .line 420
    invoke-virtual {p1}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object p1

    .line 427
    sget v1, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->ACCESSIBILITY_PRIVACY_WARNING_STATUS_CLICKED:I

    .line 428
    .line 429
    invoke-static {p1, v1, v3, v4}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logNonA11yToolServiceWarningReported(Ljava/lang/String;IJ)V

    .line 430
    .line 431
    .line 432
    :goto_1
    iget-object p1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 433
    .line 434
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    invoke-virtual {p1, v1, v6}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 439
    .line 440
    .line 441
    iget-object p1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mSentA11yServiceNotification:Ljava/util/List;

    .line 442
    .line 443
    check-cast p1, Ljava/util/ArrayList;

    .line 444
    .line 445
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    iget p1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mCurrentUserId:I

    .line 449
    .line 450
    if-eq p2, p1, :cond_8

    .line 451
    .line 452
    goto :goto_2

    .line 453
    :cond_8
    iget-object p1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mNotifiedA11yServices:Landroid/util/ArraySet;

    .line 454
    .line 455
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    move-result p1

    .line 459
    if-eqz p1, :cond_b

    .line 460
    .line 461
    iget-object p1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mNotifiedA11yServices:Landroid/util/ArraySet;

    .line 462
    .line 463
    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->writeNotifiedServiceList(ILandroid/util/ArraySet;)V

    .line 464
    .line 465
    .line 466
    goto :goto_2

    .line 467
    :cond_9
    sget-object v1, Lcom/android/server/accessibility/PolicyWarningUIController;->ACTION_DISMISS_NOTIFICATION:Ljava/lang/String;

    .line 468
    .line 469
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result p1

    .line 473
    if-eqz p1, :cond_b

    .line 474
    .line 475
    iget-object p1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mSentA11yServiceNotification:Ljava/util/List;

    .line 476
    .line 477
    check-cast p1, Ljava/util/ArrayList;

    .line 478
    .line 479
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    iget p1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mCurrentUserId:I

    .line 483
    .line 484
    if-eq p2, p1, :cond_a

    .line 485
    .line 486
    goto :goto_2

    .line 487
    :cond_a
    iget-object p1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mNotifiedA11yServices:Landroid/util/ArraySet;

    .line 488
    .line 489
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result p1

    .line 493
    if-eqz p1, :cond_b

    .line 494
    .line 495
    iget-object p1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mNotifiedA11yServices:Landroid/util/ArraySet;

    .line 496
    .line 497
    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->writeNotifiedServiceList(ILandroid/util/ArraySet;)V

    .line 498
    .line 499
    .line 500
    :cond_b
    :goto_2
    return-void
.end method

.method public final writeNotifiedServiceList(ILandroid/util/ArraySet;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    if-lez v1, :cond_0

    .line 14
    .line 15
    const/16 v2, 0x3a

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/content/ComponentName;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string/jumbo p2, "notified_non_accessibility_category_services"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {p0, p2, v0, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 50
    .line 51
    .line 52
    return-void
.end method
