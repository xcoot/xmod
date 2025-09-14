.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;


# static fields
.field static final BAD_QUALITY_COUNT_GUIDED:I = -0x1

.field static final BAD_QUALITY_COUNT_THRESHOLDS:I = 0x1e

.field static final NOTIFICATION_ACTION_CLOSE_BUTTON:Ljava/lang/String; = "close"

.field static final NOTIFICATION_ACTION_KEY:Ljava/lang/String; = "protective_film_notification_action"

.field static final NOTIFICATION_ACTION_SETTINGS_BUTTON:Ljava/lang/String; = "settings"

.field static final NOTIFICATION_ACTION_USER:Ljava/lang/String; = "user"

.field static final NOTIFICATION_INTENT_ACTION_NAME:Ljava/lang/String; = "com.samsung.android.server.biometrics.fingerprint.BIOMETRICS_NOTIFICATION_PF_GUIDE"


# instance fields
.field public final mBadQualityCount:Landroid/util/SparseIntArray;

.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;

.field mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

.field public final mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;

    .line 9
    .line 10
    new-instance p1, Landroid/util/SparseIntArray;

    .line 11
    .line 12
    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mBadQualityCount:Landroid/util/SparseIntArray;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final cancelNotification(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v0, "notification"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/app/NotificationManager;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v1, "FingerprintServiceProtectiveFilm"

    .line 18
    .line 19
    invoke-virtual {p0, v1, v0, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public getBadQualityCount(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mBadQualityCount:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final onAuthenticationAcquire(III)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    if-eq v2, v4, :cond_1

    .line 11
    .line 12
    const/4 v5, 0x6

    .line 13
    if-eq v2, v5, :cond_0

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_0
    const/16 v5, 0x3eb

    .line 18
    .line 19
    if-ne v3, v5, :cond_6

    .line 20
    .line 21
    :cond_1
    iget-object v5, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mBadQualityCount:Landroid/util/SparseIntArray;

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    invoke-virtual {v5, v1, v6}, Landroid/util/SparseIntArray;->get(II)I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    sget-boolean v7, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 29
    .line 30
    if-eqz v7, :cond_2

    .line 31
    .line 32
    const-string/jumbo v7, "onAcquire["

    .line 33
    .line 34
    .line 35
    const-string v8, "]: "

    .line 36
    .line 37
    const-string v9, ", "

    .line 38
    .line 39
    invoke-static {v1, v2, v7, v8, v9}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const-string v3, "SemFpProtectiveFilmGuide"

    .line 57
    .line 58
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :cond_2
    const/4 v2, -0x1

    .line 62
    if-ne v5, v2, :cond_3

    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    add-int/2addr v5, v4

    .line 66
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mBadQualityCount:Landroid/util/SparseIntArray;

    .line 67
    .line 68
    invoke-virtual {v3, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 69
    .line 70
    .line 71
    const/16 v3, 0x1e

    .line 72
    .line 73
    if-ne v5, v3, :cond_6

    .line 74
    .line 75
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    iget-object v5, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;

    .line 78
    .line 79
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    const-string/jumbo v5, "fingerprint_protective_film_guideline_displayed"

    .line 87
    .line 88
    .line 89
    invoke-static {v3, v5, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-ltz v3, :cond_4

    .line 94
    .line 95
    goto/16 :goto_0

    .line 96
    .line 97
    :cond_4
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    .line 99
    const-string/jumbo v7, "com.samsung.android.server.biometrics.fingerprint.BIOMETRICS_NOTIFICATION_PF_GUIDE"

    .line 100
    .line 101
    .line 102
    if-nez v3, :cond_5

    .line 103
    .line 104
    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$1;

    .line 105
    .line 106
    invoke-direct {v3, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;)V

    .line 107
    .line 108
    .line 109
    iput-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    .line 111
    new-instance v10, Landroid/content/IntentFilter;

    .line 112
    .line 113
    invoke-direct {v10, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mContext:Landroid/content/Context;

    .line 117
    .line 118
    iget-object v9, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    .line 120
    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 121
    .line 122
    sget-object v3, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 123
    .line 124
    invoke-virtual {v3}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    .line 125
    .line 126
    .line 127
    move-result-object v13

    .line 128
    const/4 v14, 0x2

    .line 129
    const/4 v12, 0x0

    .line 130
    invoke-static/range {v8 .. v14}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Handler;I)V

    .line 131
    .line 132
    .line 133
    :cond_5
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mContext:Landroid/content/Context;

    .line 134
    .line 135
    const-string/jumbo v8, "notification"

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    check-cast v3, Landroid/app/NotificationManager;

    .line 143
    .line 144
    new-instance v8, Landroid/app/NotificationChannel;

    .line 145
    .line 146
    iget-object v9, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mContext:Landroid/content/Context;

    .line 147
    .line 148
    const v10, 0x1040e18

    .line 149
    .line 150
    .line 151
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    const/4 v11, 0x4

    .line 156
    const-string v12, "FingerprintProtectiveFilmNotificationChannel"

    .line 157
    .line 158
    invoke-direct {v8, v12, v9, v11}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, v8}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 162
    .line 163
    .line 164
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mContext:Landroid/content/Context;

    .line 165
    .line 166
    new-instance v9, Landroid/app/Notification$Builder;

    .line 167
    .line 168
    invoke-direct {v9, v8, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const v11, 0x1080ac4

    .line 172
    .line 173
    .line 174
    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 175
    .line 176
    .line 177
    move-result-object v9

    .line 178
    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v11

    .line 182
    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 183
    .line 184
    .line 185
    move-result-object v9

    .line 186
    const v11, 0x1040e1d

    .line 187
    .line 188
    .line 189
    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v11

    .line 193
    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 194
    .line 195
    .line 196
    move-result-object v9

    .line 197
    invoke-static {v8}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;->getContentText(Landroid/content/Context;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v11

    .line 201
    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    invoke-virtual {v9, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 206
    .line 207
    .line 208
    move-result-object v9

    .line 209
    invoke-virtual {v9, v4}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 210
    .line 211
    .line 212
    move-result-object v9

    .line 213
    invoke-virtual {v9, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 214
    .line 215
    .line 216
    move-result-object v9

    .line 217
    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v10

    .line 221
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 222
    .line 223
    .line 224
    move-result-object v9

    .line 225
    new-instance v10, Landroid/app/Notification$Action$Builder;

    .line 226
    .line 227
    const v11, 0x1040d86

    .line 228
    .line 229
    .line 230
    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v11

    .line 234
    new-instance v12, Landroid/content/Intent;

    .line 235
    .line 236
    invoke-direct {v12, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    const-string/jumbo v13, "protective_film_notification_action"

    .line 240
    .line 241
    .line 242
    const-string/jumbo v14, "close"

    .line 243
    .line 244
    .line 245
    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    .line 247
    .line 248
    const-string/jumbo v14, "user"

    .line 249
    .line 250
    .line 251
    invoke-virtual {v12, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    .line 253
    .line 254
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 255
    .line 256
    .line 257
    move-result-object v15

    .line 258
    const/high16 v2, 0x4000000

    .line 259
    .line 260
    invoke-static {v8, v6, v12, v2, v15}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 261
    .line 262
    .line 263
    move-result-object v12

    .line 264
    const/4 v15, 0x0

    .line 265
    invoke-direct {v10, v15, v11, v12}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v10}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 269
    .line 270
    .line 271
    move-result-object v10

    .line 272
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 273
    .line 274
    .line 275
    move-result-object v9

    .line 276
    new-instance v10, Landroid/app/Notification$Action$Builder;

    .line 277
    .line 278
    const v11, 0x1040d87

    .line 279
    .line 280
    .line 281
    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v11

    .line 285
    new-instance v12, Landroid/content/Intent;

    .line 286
    .line 287
    invoke-direct {v12, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    const-string/jumbo v7, "settings"

    .line 291
    .line 292
    .line 293
    invoke-virtual {v12, v13, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v12, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 297
    .line 298
    .line 299
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 300
    .line 301
    .line 302
    move-result-object v7

    .line 303
    invoke-static {v8, v4, v12, v2, v7}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    invoke-direct {v10, v15, v11, v2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v10}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    new-instance v7, Landroid/app/Notification$BigTextStyle;

    .line 319
    .line 320
    invoke-direct {v7}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 321
    .line 322
    .line 323
    invoke-static {v8}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;->getContentText(Landroid/content/Context;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v9

    .line 327
    invoke-virtual {v7, v9}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 328
    .line 329
    .line 330
    move-result-object v7

    .line 331
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    const v7, 0x106001c

    .line 336
    .line 337
    .line 338
    invoke-virtual {v8, v7}, Landroid/content/Context;->getColor(I)I

    .line 339
    .line 340
    .line 341
    move-result v7

    .line 342
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 351
    .line 352
    .line 353
    move-result-object v7

    .line 354
    const-string v8, "FingerprintServiceProtectiveFilm"

    .line 355
    .line 356
    invoke-virtual {v3, v8, v4, v2, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 357
    .line 358
    .line 359
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mContext:Landroid/content/Context;

    .line 360
    .line 361
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    invoke-static {v2, v5, v6, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 366
    .line 367
    .line 368
    :goto_0
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mBadQualityCount:Landroid/util/SparseIntArray;

    .line 369
    .line 370
    const/4 v2, -0x1

    .line 371
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 372
    .line 373
    .line 374
    :cond_6
    :goto_1
    return-void
.end method

.method public final onEnrollFinished(II)V
    .locals 2

    .line 1
    sget-boolean p1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-string/jumbo p1, "onEnrollFinished["

    .line 6
    .line 7
    .line 8
    const-string v0, "]"

    .line 9
    .line 10
    const-string v1, "SemFpProtectiveFilmGuide"

    .line 11
    .line 12
    invoke-static {p2, p1, v0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string/jumbo v0, "fingerprint_protective_film_guideline_displayed"

    .line 27
    .line 28
    .line 29
    const/4 v1, -0x1

    .line 30
    invoke-static {p1, v0, v1, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-ltz p1, :cond_1

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mBadQualityCount:Landroid/util/SparseIntArray;

    .line 37
    .line 38
    invoke-virtual {p0, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mBadQualityCount:Landroid/util/SparseIntArray;

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method public final onEnrollStarted(II)V
    .locals 2

    .line 1
    sget-boolean p1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-string/jumbo p1, "onEnrollStarted["

    .line 6
    .line 7
    .line 8
    const-string v0, "]"

    .line 9
    .line 10
    const-string v1, "SemFpProtectiveFilmGuide"

    .line 11
    .line 12
    invoke-static {p2, p1, v0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->cancelNotification(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
