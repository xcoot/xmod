.class public final Lcom/android/server/notification/NotificationReminder$UpdateEnablePackageTask;
.super Landroid/os/AsyncTask;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationReminder;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationReminder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$UpdateEnablePackageTask;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    const-string p1, "NotificationReminder"

    .line 4
    .line 5
    const-string/jumbo v0, "updateEnablePackageList start"

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$UpdateEnablePackageTask;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 12
    .line 13
    iget v0, p0, Lcom/android/server/notification/NotificationReminder;->mReminderType:I

    .line 14
    .line 15
    const-string v1, ";"

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const-string v3, "defaultDialer : "

    .line 23
    .line 24
    new-instance v4, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v5, "com.samsung.android.messaging"

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    const-string v5, "com.samsung.android.dialer"

    .line 35
    .line 36
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v7, "defaultSms : "

    .line 46
    .line 47
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-static {p1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    :try_start_0
    const-class v5, Landroid/telecom/TelecomManager;

    .line 64
    .line 65
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroid/telecom/TelecomManager;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    const-string v3, "Unexpected exception occurred when getting default dialer package."

    .line 96
    .line 97
    invoke-static {p1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .line 99
    .line 100
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    .line 101
    .line 102
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-eqz v4, :cond_1

    .line 114
    .line 115
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    check-cast v4, Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-eqz v5, :cond_0

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    .line 129
    .line 130
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    goto :goto_2

    .line 139
    :cond_2
    if-ne v0, v2, :cond_3

    .line 140
    .line 141
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mAppSettingList:Ljava/lang/String;

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_3
    const-string v0, ""

    .line 145
    .line 146
    :goto_2
    iget-object v3, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    .line 147
    .line 148
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    new-instance v4, Landroid/content/Intent;

    .line 153
    .line 154
    const-string v5, "android.intent.action.MAIN"

    .line 155
    .line 156
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    const-string v5, "android.intent.category.LAUNCHER"

    .line 160
    .line 161
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    .line 163
    .line 164
    const/4 v5, 0x0

    .line 165
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    const-string/jumbo v5, "selectAll"

    .line 170
    .line 171
    .line 172
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    iget-object v6, p0, Lcom/android/server/notification/NotificationReminder;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 177
    .line 178
    if-eqz v5, :cond_5

    .line 179
    .line 180
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    :catch_1
    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eqz v1, :cond_8

    .line 189
    .line 190
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 195
    .line 196
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 197
    .line 198
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 199
    .line 200
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 201
    .line 202
    const-string/jumbo v5, "updateEnablePackageList SELECT_All pkg = "

    .line 203
    .line 204
    .line 205
    invoke-static {v5, v1, p1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    if-eqz v4, :cond_4

    .line 209
    .line 210
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    invoke-virtual {v6, v4, v1, v2}, Lcom/android/server/notification/PreferencesHelper;->setReminderEnabled(ILjava/lang/String;Z)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 219
    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_5
    if-eqz v0, :cond_8

    .line 223
    .line 224
    new-instance v3, Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    if-eqz v5, :cond_6

    .line 238
    .line 239
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 244
    .line 245
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 246
    .line 247
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-lez v1, :cond_8

    .line 266
    .line 267
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    invoke-virtual {v6, v1}, Lcom/android/server/notification/PreferencesHelper;->removeAllReminderSetting(I)V

    .line 272
    .line 273
    .line 274
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    :catch_2
    :cond_7
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-eqz v1, :cond_8

    .line 283
    .line 284
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    check-cast v1, Ljava/lang/String;

    .line 289
    .line 290
    const-string/jumbo v4, "updateEnablePackageList : "

    .line 291
    .line 292
    .line 293
    invoke-static {v4, v1, p1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    :try_start_2
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v4

    .line 300
    if-eqz v4, :cond_7

    .line 301
    .line 302
    new-instance v4, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .line 306
    .line 307
    const-string v5, "installPackages : "

    .line 308
    .line 309
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .line 321
    .line 322
    iget-object v4, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    .line 323
    .line 324
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 329
    .line 330
    .line 331
    move-result v5

    .line 332
    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 333
    .line 334
    .line 335
    move-result v4

    .line 336
    invoke-virtual {v6, v4, v1, v2}, Lcom/android/server/notification/PreferencesHelper;->setReminderEnabled(ILjava/lang/String;Z)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 337
    .line 338
    .line 339
    goto :goto_5

    .line 340
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationReminder;->mNeedMigration:Z

    .line 341
    .line 342
    if-eqz v0, :cond_9

    .line 343
    .line 344
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    .line 345
    .line 346
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 347
    .line 348
    .line 349
    move-result-object p0

    .line 350
    const-string/jumbo v0, "reminder_migration_finished"

    .line 351
    .line 352
    .line 353
    const/4 v1, -0x2

    .line 354
    invoke-static {p0, v0, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 355
    .line 356
    .line 357
    :cond_9
    const-string/jumbo p0, "updateEnablePackageList finish"

    .line 358
    .line 359
    .line 360
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    .line 362
    .line 363
    const/4 p0, 0x0

    .line 364
    return-object p0
.end method
