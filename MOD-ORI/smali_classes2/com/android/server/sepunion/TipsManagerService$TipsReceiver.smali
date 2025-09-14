.class public final Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/TipsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/TipsManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

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
    .locals 7

    .line 1
    const-string v0, "USER_SWITCHED isNetworkGranted "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string/jumbo v2, "user_setup_complete"

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, -0x2

    .line 16
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move p1, v3

    .line 32
    :goto_0
    const-string v2, "TipsManagerService"

    .line 33
    .line 34
    const/4 v5, 0x1

    .line 35
    if-ne v1, v5, :cond_b

    .line 36
    .line 37
    if-nez p1, :cond_b

    .line 38
    .line 39
    iget-object v6, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 40
    .line 41
    iget-boolean v6, v6, Lcom/android/server/sepunion/TipsManagerService;->mTipsPackageExist:Z

    .line 42
    .line 43
    if-nez v6, :cond_1

    .line 44
    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object v1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 52
    .line 53
    iget-boolean v6, v1, Lcom/android/server/sepunion/TipsManagerService;->mTipsHUNAlreadyShown:Z

    .line 54
    .line 55
    if-nez v6, :cond_2

    .line 56
    .line 57
    iget-boolean v1, v1, Lcom/android/server/sepunion/TipsManagerService;->mWaitingCallEnd:Z

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 70
    .line 71
    iput-boolean v5, p0, Lcom/android/server/sepunion/TipsManagerService;->mWaitingCallEnd:Z

    .line 72
    .line 73
    goto/16 :goto_2

    .line 74
    .line 75
    :cond_2
    iget-object v1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 76
    .line 77
    iget-boolean v1, v1, Lcom/android/server/sepunion/TipsManagerService;->mWaitingCallEnd:Z

    .line 78
    .line 79
    if-eqz v1, :cond_5

    .line 80
    .line 81
    const-string v1, "android.intent.action.PHONE_STATE"

    .line 82
    .line 83
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_5

    .line 88
    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_a

    .line 94
    .line 95
    const-string/jumbo p2, "state"

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_a

    .line 109
    .line 110
    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 111
    .line 112
    iput-boolean v3, p1, Lcom/android/server/sepunion/TipsManagerService;->mWaitingCallEnd:Z

    .line 113
    .line 114
    iget p2, p1, Lcom/android/server/sepunion/TipsManagerService;->mDialCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    .line 116
    const/4 v0, 0x5

    .line 117
    const-string/jumbo v1, "tips_trigger_count"

    .line 118
    .line 119
    .line 120
    if-ne p2, v0, :cond_4

    .line 121
    .line 122
    :try_start_1
    sget-object p1, Lcom/android/server/sepunion/TipsManagerService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 123
    .line 124
    const-string p1, "[GalaxyTips]TIPS Activitation!! WAKE UP"

    .line 125
    .line 126
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 130
    .line 131
    iget-object p1, p1, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    const/16 p2, 0x3e8

    .line 138
    .line 139
    invoke-static {p1, v1, p2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 143
    .line 144
    iget-boolean p2, p1, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    .line 145
    .line 146
    if-nez p2, :cond_3

    .line 147
    .line 148
    iget-object p1, p1, Lcom/android/server/sepunion/TipsManagerService;->mTipsHandler:Lcom/android/server/sepunion/TipsManagerService$TipsHandler;

    .line 149
    .line 150
    const p2, 0xea60

    .line 151
    .line 152
    .line 153
    const/16 v0, 0x2711

    .line 154
    .line 155
    invoke-static {p1, v0, p2}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$smsendMsg(Landroid/os/Handler;II)V

    .line 156
    .line 157
    .line 158
    :cond_3
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 159
    .line 160
    iput-boolean v5, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHUNAlreadyShown:Z

    .line 161
    .line 162
    goto/16 :goto_2

    .line 163
    .line 164
    :cond_4
    iget-object p1, p1, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    .line 165
    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 171
    .line 172
    iget p2, p0, Lcom/android/server/sepunion/TipsManagerService;->mDialCount:I

    .line 173
    .line 174
    add-int/2addr p2, v5

    .line 175
    iput p2, p0, Lcom/android/server/sepunion/TipsManagerService;->mDialCount:I

    .line 176
    .line 177
    invoke-static {p1, v1, p2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 178
    .line 179
    .line 180
    goto/16 :goto_2

    .line 181
    .line 182
    :cond_5
    iget-object p2, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 183
    .line 184
    iget-boolean p2, p2, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    .line 186
    const-string v1, "gtips_network_granted"

    .line 187
    .line 188
    if-nez p2, :cond_6

    .line 189
    .line 190
    :try_start_2
    const-string/jumbo p2, "samsung.galaxy.tips.network_granted"

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result p2

    .line 197
    if-eqz p2, :cond_6

    .line 198
    .line 199
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 200
    .line 201
    iput-boolean v5, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    .line 202
    .line 203
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    .line 204
    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    invoke-static {p0, v1, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 210
    .line 211
    .line 212
    goto/16 :goto_2

    .line 213
    .line 214
    :cond_6
    iget-object p2, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 215
    .line 216
    iget-boolean p2, p2, Lcom/android/server/sepunion/TipsManagerService;->mBootupCompleted:Z

    .line 217
    .line 218
    if-eqz p2, :cond_7

    .line 219
    .line 220
    const-string p2, "android.intent.action.LOCALE_CHANGED"

    .line 221
    .line 222
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result p2

    .line 226
    if-eqz p2, :cond_7

    .line 227
    .line 228
    new-instance p1, Landroid/content/Intent;

    .line 229
    .line 230
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 231
    .line 232
    .line 233
    const-string p2, "com.samsung.android.app.tips"

    .line 234
    .line 235
    const-string v0, "com.samsung.android.app.tips.TipsIntentService"

    .line 236
    .line 237
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    .line 239
    .line 240
    const-string/jumbo p2, "tips_extras"

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 244
    .line 245
    .line 246
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 247
    .line 248
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    .line 249
    .line 250
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 251
    .line 252
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 253
    .line 254
    .line 255
    goto :goto_2

    .line 256
    :catch_0
    :try_start_4
    sget-object p0, Lcom/android/server/sepunion/TipsManagerService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 257
    .line 258
    const-string p0, "[GalaxyTips] Fail to send MSG_NEW_DATA_UPDATED intent to Tips."

    .line 259
    .line 260
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    goto :goto_2

    .line 264
    :cond_7
    iget-object p2, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 265
    .line 266
    iget-boolean p2, p2, Lcom/android/server/sepunion/TipsManagerService;->mBootupCompleted:Z

    .line 267
    .line 268
    if-eqz p2, :cond_9

    .line 269
    .line 270
    const-string p2, "android.intent.action.USER_SWITCHED"

    .line 271
    .line 272
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result p2

    .line 276
    if-eqz p2, :cond_9

    .line 277
    .line 278
    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 279
    .line 280
    iget-object p1, p1, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    .line 281
    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    invoke-static {p1, v1, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    if-ne p1, v5, :cond_8

    .line 291
    .line 292
    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 293
    .line 294
    iput-boolean v5, p1, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    .line 295
    .line 296
    goto :goto_1

    .line 297
    :cond_8
    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 298
    .line 299
    iput-boolean v3, p1, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    .line 300
    .line 301
    :goto_1
    sget-object p1, Lcom/android/server/sepunion/TipsManagerService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 302
    .line 303
    new-instance p1, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 309
    .line 310
    iget-boolean p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    .line 311
    .line 312
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .line 321
    .line 322
    goto :goto_2

    .line 323
    :cond_9
    iget-object p2, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 324
    .line 325
    iget-boolean p2, p2, Lcom/android/server/sepunion/TipsManagerService;->mBootupCompleted:Z

    .line 326
    .line 327
    if-eqz p2, :cond_a

    .line 328
    .line 329
    const-string p2, "com.sec.android.app.secsetupwizard.FOTA_SUW_COMPLETE"

    .line 330
    .line 331
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result p1

    .line 335
    if-eqz p1, :cond_a

    .line 336
    .line 337
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 338
    .line 339
    iget-boolean p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsPackageExist:Z

    .line 340
    .line 341
    if-eqz p1, :cond_a

    .line 342
    .line 343
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHandler:Lcom/android/server/sepunion/TipsManagerService$TipsHandler;

    .line 344
    .line 345
    const p1, 0x1d4c0

    .line 346
    .line 347
    .line 348
    const/16 p2, 0x2714

    .line 349
    .line 350
    invoke-static {p0, p2, p1}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$smsendMsg(Landroid/os/Handler;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 351
    .line 352
    .line 353
    goto :goto_2

    .line 354
    :catch_1
    sget-object p0, Lcom/android/server/sepunion/TipsManagerService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 355
    .line 356
    const-string p0, "Fail to send intent to Tips."

    .line 357
    .line 358
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .line 360
    .line 361
    :cond_a
    :goto_2
    return-void

    .line 362
    :cond_b
    :goto_3
    sget-object v0, Lcom/android/server/sepunion/TipsManagerService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 363
    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    .line 365
    .line 366
    const-string v3, "[GalaxyTips] Got a "

    .line 367
    .line 368
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object p2

    .line 375
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    const-string p2, ". But can\'t perform.(completeSetupWizard= "

    .line 379
    .line 380
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    const-string p2, " EmergencyMode= "

    .line 387
    .line 388
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    const-string p1, " TipsExist= "

    .line 395
    .line 396
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 400
    .line 401
    iget-boolean p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsPackageExist:Z

    .line 402
    .line 403
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    const-string p0, ")"

    .line 407
    .line 408
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object p0

    .line 415
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .line 417
    .line 418
    return-void
.end method
