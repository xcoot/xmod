.class public final Lcom/android/server/am/Pageboost$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/am/Pageboost$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .line 1
    const/4 p1, 0x1

    .line 2
    const-string v0, "Pageboost"

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget p0, p0, Lcom/android/server/am/Pageboost$1;->$r8$classId:I

    .line 6
    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    :try_start_0
    sget-object p0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string p1, "android.intent.action.PACKAGE_ADDED"

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const/4 p1, 0x7

    .line 38
    invoke-static {p1, v1, p0}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(IILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    .line 43
    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_2

    .line 49
    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    if-eqz p0, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const/16 p1, 0x8

    .line 61
    .line 62
    invoke-static {p1, v1, p0}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(IILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    sget-boolean p0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 67
    .line 68
    const-string/jumbo p0, "failed to mPackageReceiver by exception"

    .line 69
    .line 70
    .line 71
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_0
    return-void

    .line 75
    :pswitch_0
    const-string p0, "apps "

    .line 76
    .line 77
    const-string/jumbo v2, "package "

    .line 78
    .line 79
    .line 80
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    const-string v4, "android.intent.action.USER_UNLOCKED"

    .line 85
    .line 86
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_3

    .line 91
    .line 92
    sget-boolean p0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 93
    .line 94
    const-string/jumbo p0, "received ACTION_USER_UNLOCKED"

    .line 95
    .line 96
    .line 97
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    sget-boolean p0, Lcom/android/server/am/Pageboost;->user_unlock_done:Z

    .line 101
    .line 102
    if-nez p0, :cond_11

    .line 103
    .line 104
    const-string/jumbo p0, "init mGlobalAppLRU"

    .line 105
    .line 106
    .line 107
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    sput-boolean p1, Lcom/android/server/am/Pageboost;->user_unlock_done:Z

    .line 111
    .line 112
    const/4 v4, -0x1

    .line 113
    const/16 v5, 0x2710

    .line 114
    .line 115
    const/4 v1, 0x4

    .line 116
    const/4 v6, 0x0

    .line 117
    const/4 v2, -0x1

    .line 118
    const/4 v3, -0x1

    .line 119
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/Pageboost;->sendMessage(IIIIILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_7

    .line 123
    .line 124
    :cond_3
    sget-object v4, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 125
    .line 126
    if-nez v4, :cond_4

    .line 127
    .line 128
    goto/16 :goto_7

    .line 129
    .line 130
    :cond_4
    const-string/jumbo v4, "com.sec.android.launcher.action.RUN_APP"

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    const-string/jumbo v5, "package"

    .line 138
    .line 139
    .line 140
    if-nez v4, :cond_9

    .line 141
    .line 142
    :try_start_2
    const-string/jumbo v4, "com.android.server.am.ACTION_PAGEBOOST"

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-eqz v4, :cond_5

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_5
    const-string/jumbo p0, "com.android.server.am.ACTION_VRAMDISK_PREFETCH"

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    if-eqz p0, :cond_6

    .line 160
    .line 161
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    const-string/jumbo p1, "reason"

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-static {p0, p1}, Lcom/android/server/am/Pageboost;->prefetchPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_7

    .line 176
    .line 177
    :cond_6
    const-string p0, "android.intent.action.ACTION_SHUTDOWN"

    .line 178
    .line 179
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result p0

    .line 183
    if-nez p0, :cond_8

    .line 184
    .line 185
    const-string p0, "android.intent.action.REBOOT"

    .line 186
    .line 187
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result p0

    .line 191
    if-eqz p0, :cond_7

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_7
    const-string/jumbo p0, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result p0

    .line 201
    if-eqz p0, :cond_11

    .line 202
    .line 203
    const/4 v4, -0x1

    .line 204
    const/4 v5, 0x0

    .line 205
    const/16 v1, 0xd

    .line 206
    .line 207
    const/4 v6, 0x0

    .line 208
    const/4 v2, -0x1

    .line 209
    const/4 v3, -0x1

    .line 210
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/Pageboost;->sendMessage(IIIIILjava/lang/String;)V

    .line 211
    .line 212
    .line 213
    goto/16 :goto_7

    .line 214
    .line 215
    :cond_8
    :goto_1
    const/4 v10, -0x1

    .line 216
    const/4 v11, 0x0

    .line 217
    const/4 v7, 0x6

    .line 218
    const/4 v12, 0x0

    .line 219
    const/4 v8, -0x1

    .line 220
    const/4 v9, -0x1

    .line 221
    invoke-static/range {v7 .. v12}, Lcom/android/server/am/Pageboost;->sendMessage(IIIIILjava/lang/String;)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_7

    .line 225
    .line 226
    :cond_9
    :goto_2
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    if-eqz v3, :cond_a

    .line 246
    .line 247
    goto :goto_7

    .line 248
    :cond_a
    const-string v2, "apps"

    .line 249
    .line 250
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p2

    .line 254
    if-nez p2, :cond_b

    .line 255
    .line 256
    new-instance p1, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    goto :goto_7

    .line 272
    :cond_b
    const-string p0, " "

    .line 273
    .line 274
    invoke-virtual {p2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p0

    .line 278
    new-instance p2, Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 279
    .line 280
    invoke-direct {p2}, Lcom/android/server/am/Pageboost$PageboostAppList;-><init>()V

    .line 281
    .line 282
    .line 283
    move v2, v1

    .line 284
    :goto_3
    array-length v3, p0

    .line 285
    const/4 v4, 0x2

    .line 286
    if-ge v2, v3, :cond_10

    .line 287
    .line 288
    aget-object v3, p0, v2

    .line 289
    .line 290
    if-nez v3, :cond_c

    .line 291
    .line 292
    goto :goto_6

    .line 293
    :cond_c
    const-string v5, "/"

    .line 294
    .line 295
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    aget-object v3, v3, v1

    .line 300
    .line 301
    if-nez v3, :cond_d

    .line 302
    .line 303
    goto :goto_5

    .line 304
    :cond_d
    sget-object v4, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 305
    .line 306
    if-eqz v4, :cond_e

    .line 307
    .line 308
    invoke-virtual {v4, v3}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    goto :goto_4

    .line 313
    :cond_e
    const/4 v3, 0x0

    .line 314
    :goto_4
    if-eqz v3, :cond_f

    .line 315
    .line 316
    invoke-virtual {p2, v3, v1}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    .line 317
    .line 318
    .line 319
    :cond_f
    :goto_5
    add-int/2addr v2, p1

    .line 320
    goto :goto_3

    .line 321
    :cond_10
    :goto_6
    invoke-static {v4, v1, p2}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(IILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 322
    .line 323
    .line 324
    goto :goto_7

    .line 325
    :catch_1
    sget-boolean p0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 326
    .line 327
    const-string/jumbo p0, "failed to mReceiver by exception"

    .line 328
    .line 329
    .line 330
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .line 332
    .line 333
    :cond_11
    :goto_7
    return-void

    .line 334
    nop

    .line 335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
