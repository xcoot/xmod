.class public final Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

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
    .locals 11

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "Vpn Receiver : "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "KnoxVpnEngineService"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_2a

    .line 29
    .line 30
    new-instance v0, Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const-string/jumbo v3, "new_install_or_update"

    .line 42
    .line 43
    .line 44
    const-string/jumbo v4, "package"

    .line 45
    .line 46
    .line 47
    const-string v5, "android.intent.extra.REPLACING"

    .line 48
    .line 49
    const-string/jumbo v6, "uid"

    .line 50
    .line 51
    .line 52
    const-string v7, "android.intent.extra.UID"

    .line 53
    .line 54
    const/4 v8, 0x0

    .line 55
    const/4 v9, -0x1

    .line 56
    const/4 v10, 0x0

    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_0

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    :cond_0
    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    .line 74
    .line 75
    if-eqz v2, :cond_1

    .line 76
    .line 77
    const-string v5, "Vpn Receiver : The extra value is "

    .line 78
    .line 79
    invoke-static {v5, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 80
    .line 81
    .line 82
    :cond_1
    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-le p2, v9, :cond_2a

    .line 87
    .line 88
    if-eqz v2, :cond_2

    .line 89
    .line 90
    const-string v2, "Vpn Receiver : Package Added = "

    .line 91
    .line 92
    invoke-static {v2, v8, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    invoke-virtual {v0, v6, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    .line 103
    .line 104
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 105
    .line 106
    const/4 p1, 0x2

    .line 107
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_7

    .line 111
    .line 112
    :cond_3
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 113
    .line 114
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_6

    .line 119
    .line 120
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    if-eqz p1, :cond_4

    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    :cond_4
    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    .line 139
    .line 140
    if-eqz v2, :cond_5

    .line 141
    .line 142
    const-string v2, "Vpn Receiver : Package Removed = "

    .line 143
    .line 144
    invoke-static {v2, v8, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :cond_5
    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 154
    .line 155
    .line 156
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 157
    .line 158
    const/4 p1, 0x3

    .line 159
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_7

    .line 163
    .line 164
    :cond_6
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    .line 165
    .line 166
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    const-string/jumbo v3, "state"

    .line 171
    .line 172
    .line 173
    if-eqz v2, :cond_7

    .line 174
    .line 175
    const-string p1, "Airplane Event received."

    .line 176
    .line 177
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-eqz p1, :cond_2a

    .line 185
    .line 186
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 187
    .line 188
    const/16 p1, 0x14

    .line 189
    .line 190
    invoke-virtual {p0, p1, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 191
    .line 192
    .line 193
    goto/16 :goto_7

    .line 194
    .line 195
    :cond_7
    const-string v2, "android.intent.action.USER_PRESENT"

    .line 196
    .line 197
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-eqz v2, :cond_8

    .line 202
    .line 203
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 204
    .line 205
    const/16 p1, 0x15

    .line 206
    .line 207
    invoke-virtual {p0, p1, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 208
    .line 209
    .line 210
    goto/16 :goto_7

    .line 211
    .line 212
    :cond_8
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    .line 213
    .line 214
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    if-eqz v2, :cond_9

    .line 219
    .line 220
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 225
    .line 226
    const/16 p2, 0xf

    .line 227
    .line 228
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 229
    .line 230
    .line 231
    goto/16 :goto_7

    .line 232
    .line 233
    :cond_9
    const-string v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 234
    .line 235
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-eqz v2, :cond_a

    .line 240
    .line 241
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 246
    .line 247
    const/16 p2, 0xe

    .line 248
    .line 249
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_7

    .line 253
    .line 254
    :cond_a
    const-string v2, "android.intent.action.USER_STARTED"

    .line 255
    .line 256
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    const/16 v4, 0x9

    .line 261
    .line 262
    if-eqz v2, :cond_b

    .line 263
    .line 264
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 269
    .line 270
    invoke-virtual {p0, v4, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 271
    .line 272
    .line 273
    goto/16 :goto_7

    .line 274
    .line 275
    :cond_b
    const-string v2, "android.intent.action.USER_SWITCHED"

    .line 276
    .line 277
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    if-eqz v2, :cond_c

    .line 282
    .line 283
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 288
    .line 289
    const/16 p2, 0xd

    .line 290
    .line 291
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 292
    .line 293
    .line 294
    goto/16 :goto_7

    .line 295
    .line 296
    :cond_c
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 297
    .line 298
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    const-string/jumbo v5, "networkInfo"

    .line 303
    .line 304
    .line 305
    const/4 v8, 0x1

    .line 306
    if-eqz v2, :cond_1d

    .line 307
    .line 308
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    check-cast p1, Landroid/net/NetworkInfo;

    .line 313
    .line 314
    if-nez p1, :cond_d

    .line 315
    .line 316
    const-string/jumbo p0, "networkInfo is null"

    .line 317
    .line 318
    .line 319
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .line 321
    .line 322
    return-void

    .line 323
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    const-string/jumbo v2, "change in connectivity has occured  for the network type "

    .line 326
    .line 327
    .line 328
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .line 358
    .line 359
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    const-string v1, "CONNECTED"

    .line 364
    .line 365
    const-string v2, "DISCONNECTED"

    .line 366
    .line 367
    if-ne v0, v8, :cond_12

    .line 368
    .line 369
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 374
    .line 375
    .line 376
    move-result-object v4

    .line 377
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 378
    .line 379
    const/16 v6, 0x19

    .line 380
    .line 381
    if-eq v4, v5, :cond_11

    .line 382
    .line 383
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 384
    .line 385
    .line 386
    move-result-object v4

    .line 387
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 388
    .line 389
    if-ne v4, v5, :cond_e

    .line 390
    .line 391
    goto :goto_1

    .line 392
    :cond_e
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 397
    .line 398
    if-eq v1, v4, :cond_10

    .line 399
    .line 400
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 405
    .line 406
    if-ne v1, v4, :cond_f

    .line 407
    .line 408
    goto :goto_0

    .line 409
    :cond_f
    return-void

    .line 410
    :cond_10
    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 414
    .line 415
    invoke-virtual {v1, v6, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 416
    .line 417
    .line 418
    goto/16 :goto_6

    .line 419
    .line 420
    :cond_11
    :goto_1
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 424
    .line 425
    invoke-virtual {v1, v6, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 426
    .line 427
    .line 428
    goto/16 :goto_6

    .line 429
    .line 430
    :cond_12
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    if-nez v0, :cond_17

    .line 435
    .line 436
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 441
    .line 442
    .line 443
    move-result-object v4

    .line 444
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 445
    .line 446
    const/16 v6, 0x1a

    .line 447
    .line 448
    if-eq v4, v5, :cond_16

    .line 449
    .line 450
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 451
    .line 452
    .line 453
    move-result-object v4

    .line 454
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 455
    .line 456
    if-ne v4, v5, :cond_13

    .line 457
    .line 458
    goto :goto_3

    .line 459
    :cond_13
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 464
    .line 465
    if-eq v1, v4, :cond_15

    .line 466
    .line 467
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 472
    .line 473
    if-ne v1, v4, :cond_14

    .line 474
    .line 475
    goto :goto_2

    .line 476
    :cond_14
    return-void

    .line 477
    :cond_15
    :goto_2
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 481
    .line 482
    invoke-virtual {v1, v6, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 483
    .line 484
    .line 485
    goto :goto_6

    .line 486
    :cond_16
    :goto_3
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 490
    .line 491
    invoke-virtual {v1, v6, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 492
    .line 493
    .line 494
    goto :goto_6

    .line 495
    :cond_17
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 496
    .line 497
    .line 498
    move-result v0

    .line 499
    if-ne v0, v4, :cond_1c

    .line 500
    .line 501
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 506
    .line 507
    .line 508
    move-result-object v4

    .line 509
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 510
    .line 511
    const/16 v6, 0x1b

    .line 512
    .line 513
    if-eq v4, v5, :cond_1b

    .line 514
    .line 515
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 516
    .line 517
    .line 518
    move-result-object v4

    .line 519
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 520
    .line 521
    if-ne v4, v5, :cond_18

    .line 522
    .line 523
    goto :goto_5

    .line 524
    :cond_18
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 525
    .line 526
    .line 527
    move-result-object v1

    .line 528
    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 529
    .line 530
    if-eq v1, v4, :cond_1a

    .line 531
    .line 532
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 537
    .line 538
    if-ne v1, v4, :cond_19

    .line 539
    .line 540
    goto :goto_4

    .line 541
    :cond_19
    return-void

    .line 542
    :cond_1a
    :goto_4
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 546
    .line 547
    invoke-virtual {v1, v6, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 548
    .line 549
    .line 550
    goto :goto_6

    .line 551
    :cond_1b
    :goto_5
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 555
    .line 556
    invoke-virtual {v1, v6, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 557
    .line 558
    .line 559
    :cond_1c
    :goto_6
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 560
    .line 561
    .line 562
    move-result v0

    .line 563
    const/16 v1, 0x11

    .line 564
    .line 565
    if-eq v0, v1, :cond_2a

    .line 566
    .line 567
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 568
    .line 569
    .line 570
    move-result p1

    .line 571
    const/4 v0, 0x7

    .line 572
    if-eq p1, v0, :cond_2a

    .line 573
    .line 574
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 575
    .line 576
    .line 577
    move-result-object p1

    .line 578
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 579
    .line 580
    const/4 p2, 0x4

    .line 581
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 582
    .line 583
    .line 584
    goto/16 :goto_7

    .line 585
    .line 586
    :cond_1d
    const-string v2, "android.intent.action.USER_REMOVED"

    .line 587
    .line 588
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 589
    .line 590
    .line 591
    move-result v2

    .line 592
    if-eqz v2, :cond_1e

    .line 593
    .line 594
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 595
    .line 596
    .line 597
    move-result-object p1

    .line 598
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 599
    .line 600
    const/4 p2, 0x6

    .line 601
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 602
    .line 603
    .line 604
    goto/16 :goto_7

    .line 605
    .line 606
    :cond_1e
    const-string/jumbo v2, "com.samsung.android.knox.intent.action.INTERFACE_STATUS_INTERNAL"

    .line 607
    .line 608
    .line 609
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    move-result v2

    .line 613
    if-eqz v2, :cond_1f

    .line 614
    .line 615
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 616
    .line 617
    .line 618
    move-result-object p1

    .line 619
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 620
    .line 621
    invoke-virtual {p0, v8, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 622
    .line 623
    .line 624
    goto/16 :goto_7

    .line 625
    .line 626
    :cond_1f
    const-string/jumbo v2, "enterprise.container.admin.changed"

    .line 627
    .line 628
    .line 629
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 630
    .line 631
    .line 632
    move-result v2

    .line 633
    if-eqz v2, :cond_20

    .line 634
    .line 635
    const-string/jumbo p1, "containerid"

    .line 636
    .line 637
    .line 638
    invoke-virtual {p2, p1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 639
    .line 640
    .line 641
    move-result p1

    .line 642
    const-string v1, "android.intent.extra.user_handle"

    .line 643
    .line 644
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 648
    .line 649
    .line 650
    move-result p1

    .line 651
    invoke-virtual {v0, v7, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 652
    .line 653
    .line 654
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 655
    .line 656
    const/16 p1, 0xc

    .line 657
    .line 658
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 659
    .line 660
    .line 661
    goto/16 :goto_7

    .line 662
    .line 663
    :cond_20
    const-string/jumbo v2, "com.samsung.android.knox.intent.action.VPN_PROXY_BROADCAST_INTERNAL"

    .line 664
    .line 665
    .line 666
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 667
    .line 668
    .line 669
    move-result v2

    .line 670
    if-eqz v2, :cond_21

    .line 671
    .line 672
    const-string/jumbo p1, "com.samsung.android.knox.intent.extra.caller"

    .line 673
    .line 674
    .line 675
    invoke-virtual {p2, p1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 676
    .line 677
    .line 678
    move-result p1

    .line 679
    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 680
    .line 681
    .line 682
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 683
    .line 684
    const/16 p1, 0x12

    .line 685
    .line 686
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 687
    .line 688
    .line 689
    goto/16 :goto_7

    .line 690
    .line 691
    :cond_21
    const-string/jumbo v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 692
    .line 693
    .line 694
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 695
    .line 696
    .line 697
    move-result v2

    .line 698
    if-eqz v2, :cond_22

    .line 699
    .line 700
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 701
    .line 702
    .line 703
    move-result-object p1

    .line 704
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 705
    .line 706
    const/16 p2, 0x16

    .line 707
    .line 708
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 709
    .line 710
    .line 711
    goto/16 :goto_7

    .line 712
    .line 713
    :cond_22
    const-string/jumbo v2, "com.samsung.android.knox.intent.action.UCM_REFRESH_DONE"

    .line 714
    .line 715
    .line 716
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 717
    .line 718
    .line 719
    move-result v2

    .line 720
    if-eqz v2, :cond_23

    .line 721
    .line 722
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 723
    .line 724
    .line 725
    move-result-object p1

    .line 726
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 727
    .line 728
    const/16 p2, 0x1c

    .line 729
    .line 730
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 731
    .line 732
    .line 733
    goto/16 :goto_7

    .line 734
    .line 735
    :cond_23
    const-string v2, "android.net.wifi.STATE_CHANGE"

    .line 736
    .line 737
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 738
    .line 739
    .line 740
    move-result v2

    .line 741
    if-eqz v2, :cond_25

    .line 742
    .line 743
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 744
    .line 745
    .line 746
    move-result-object p1

    .line 747
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 748
    .line 749
    .line 750
    move-result-object p2

    .line 751
    check-cast p2, Landroid/net/NetworkInfo;

    .line 752
    .line 753
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 754
    .line 755
    .line 756
    move-result-object v0

    .line 757
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 758
    .line 759
    const/16 v2, 0x1d

    .line 760
    .line 761
    const-string/jumbo v3, "captive"

    .line 762
    .line 763
    .line 764
    if-ne v0, v1, :cond_24

    .line 765
    .line 766
    invoke-virtual {p1, v3, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 767
    .line 768
    .line 769
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 770
    .line 771
    invoke-virtual {p0, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 772
    .line 773
    .line 774
    goto/16 :goto_7

    .line 775
    .line 776
    :cond_24
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 777
    .line 778
    .line 779
    move-result-object p2

    .line 780
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 781
    .line 782
    if-ne p2, v0, :cond_2a

    .line 783
    .line 784
    invoke-virtual {p1, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 785
    .line 786
    .line 787
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 788
    .line 789
    invoke-virtual {p0, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 790
    .line 791
    .line 792
    goto :goto_7

    .line 793
    :cond_25
    const-string v2, "android.hardware.usb.action.USB_STATE"

    .line 794
    .line 795
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 796
    .line 797
    .line 798
    move-result v2

    .line 799
    if-eqz v2, :cond_29

    .line 800
    .line 801
    const-string/jumbo p1, "connected"

    .line 802
    .line 803
    .line 804
    invoke-virtual {p2, p1, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 805
    .line 806
    .line 807
    move-result p1

    .line 808
    const-string/jumbo v2, "configured"

    .line 809
    .line 810
    .line 811
    invoke-virtual {p2, v2, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 812
    .line 813
    .line 814
    move-result v2

    .line 815
    const-string/jumbo v3, "rndis"

    .line 816
    .line 817
    .line 818
    invoke-virtual {p2, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 819
    .line 820
    .line 821
    move-result p2

    .line 822
    const-string/jumbo v3, "usb_tethering status: usbConnected "

    .line 823
    .line 824
    .line 825
    const-string v4, " usbConfigured "

    .line 826
    .line 827
    const-string v5, " rndisEnabled "

    .line 828
    .line 829
    invoke-static {v3, p1, v4, v2, v5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    .line 831
    .line 832
    move-result-object v3

    .line 833
    invoke-static {v1, v3, p2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 834
    .line 835
    .line 836
    const/16 v1, 0x21

    .line 837
    .line 838
    const-string/jumbo v3, "bundle_usb_status"

    .line 839
    .line 840
    .line 841
    if-nez p1, :cond_26

    .line 842
    .line 843
    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 844
    .line 845
    .line 846
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 847
    .line 848
    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 849
    .line 850
    .line 851
    goto :goto_7

    .line 852
    :cond_26
    if-eqz p1, :cond_27

    .line 853
    .line 854
    if-eqz v2, :cond_27

    .line 855
    .line 856
    if-eqz p2, :cond_27

    .line 857
    .line 858
    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 859
    .line 860
    .line 861
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 862
    .line 863
    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 864
    .line 865
    .line 866
    goto :goto_7

    .line 867
    :cond_27
    if-nez p1, :cond_28

    .line 868
    .line 869
    if-eqz v2, :cond_2a

    .line 870
    .line 871
    :cond_28
    if-nez p2, :cond_2a

    .line 872
    .line 873
    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 874
    .line 875
    .line 876
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 877
    .line 878
    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 879
    .line 880
    .line 881
    goto :goto_7

    .line 882
    :cond_29
    const-string v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 883
    .line 884
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 885
    .line 886
    .line 887
    move-result p1

    .line 888
    if-eqz p1, :cond_2a

    .line 889
    .line 890
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 891
    .line 892
    .line 893
    move-result-object p1

    .line 894
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 895
    .line 896
    const/16 p2, 0x22

    .line 897
    .line 898
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 899
    .line 900
    .line 901
    :cond_2a
    :goto_7
    return-void
.end method
