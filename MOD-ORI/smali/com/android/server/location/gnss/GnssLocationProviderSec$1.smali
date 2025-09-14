.class public final Lcom/android/server/location/gnss/GnssLocationProviderSec$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

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
    .locals 9

    .line 1
    const/4 p1, 0x2

    .line 2
    const/4 v0, -0x1

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    const-string/jumbo v4, "receive broadcast intent, action: "

    .line 10
    .line 11
    .line 12
    const-string v5, "GnssLocationProvider_ex"

    .line 13
    .line 14
    invoke-static {v4, v3, v5}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string v4, "LOADED"

    .line 21
    .line 22
    const-string v6, "android.telephony.extra.SLOT_INDEX"

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    sparse-switch v7, :sswitch_data_0

    .line 29
    .line 30
    .line 31
    :goto_0
    move v3, v0

    .line 32
    goto/16 :goto_1

    .line 33
    .line 34
    :sswitch_0
    const-string v7, "android.intent.action.DATA_SMS_RECEIVED"

    .line 35
    .line 36
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v3, 0x7

    .line 44
    goto :goto_1

    .line 45
    :sswitch_1
    const-string/jumbo v7, "com.sec.android.ISSUE_TRACKER_ONOFF"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-nez v3, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const/4 v3, 0x6

    .line 56
    goto :goto_1

    .line 57
    :sswitch_2
    const-string/jumbo v7, "com.samsung.ims.action.IMS_REGISTRATION"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-nez v3, :cond_3

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    const/4 v3, 0x5

    .line 68
    goto :goto_1

    .line 69
    :sswitch_3
    const-string/jumbo v7, "com.samsung.intent.action.EMERGENCY_SMS_OVER_IMS"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-nez v3, :cond_4

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    const/4 v3, 0x4

    .line 80
    goto :goto_1

    .line 81
    :sswitch_4
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    .line 82
    .line 83
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-nez v3, :cond_5

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_5
    const/4 v3, 0x3

    .line 91
    goto :goto_1

    .line 92
    :sswitch_5
    const-string v7, "android.net.wifi.STATE_CHANGE"

    .line 93
    .line 94
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-nez v3, :cond_6

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_6
    move v3, p1

    .line 102
    goto :goto_1

    .line 103
    :sswitch_6
    const-string v7, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    .line 104
    .line 105
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-nez v3, :cond_7

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_7
    move v3, v1

    .line 113
    goto :goto_1

    .line 114
    :sswitch_7
    const-string/jumbo v7, "com.samsung.carrier.action.CARRIER_CHANGED"

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-nez v3, :cond_8

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_8
    move v3, v2

    .line 125
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 126
    .line 127
    .line 128
    goto/16 :goto_5

    .line 129
    .line 130
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 131
    .line 132
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSuplInitHandler:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    .line 133
    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    new-instance p1, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;

    .line 138
    .line 139
    invoke-direct {p1, p0, p2, v2}, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/sec/SuplInitHandler;Ljava/lang/Object;I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, v6, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->handleSuplInit(Ljava/lang/Runnable;I)V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_5

    .line 150
    .line 151
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 152
    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    iget-boolean p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isIssueTrackerIntentReceived:Z

    .line 161
    .line 162
    if-nez p2, :cond_a

    .line 163
    .line 164
    if-eqz p1, :cond_a

    .line 165
    .line 166
    const-string p2, "ONOFF"

    .line 167
    .line 168
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    const-string p2, "INTENT_ISSUE_TRACKER_ONOFF enabled = "

    .line 173
    .line 174
    invoke-static {p2, v5, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 175
    .line 176
    .line 177
    const-string/jumbo p2, "dev.gnss.silentloggingIssueTracker"

    .line 178
    .line 179
    .line 180
    if-eqz p1, :cond_9

    .line 181
    .line 182
    const-string p1, "ON"

    .line 183
    .line 184
    invoke-static {p2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_9
    const-string p1, "OFF"

    .line 189
    .line 190
    invoke-static {p2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :goto_2
    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isIssueTrackerIntentReceived:Z

    .line 194
    .line 195
    goto/16 :goto_5

    .line 196
    .line 197
    :cond_a
    const-string p0, "INTENT_ISSUE_TRACKER_ONOFF intent has been ignored because it\'s processed only once after booting."

    .line 198
    .line 199
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    goto/16 :goto_5

    .line 203
    .line 204
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 205
    .line 206
    iget-object v3, v3, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 207
    .line 208
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    const-string v4, "REGISTERED"

    .line 216
    .line 217
    const-string v5, "SuplInitHandler"

    .line 218
    .line 219
    if-eqz v3, :cond_c

    .line 220
    .line 221
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 222
    .line 223
    iget-object v3, v3, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 224
    .line 225
    invoke-virtual {v3}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaMarket()Z

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    if-nez v3, :cond_c

    .line 230
    .line 231
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 232
    .line 233
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSuplInitHandler:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    .line 234
    .line 235
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    const-string v1, "PHONE_ID"

    .line 239
    .line 240
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    const-string v1, "IMS_REGISTRATION SLOT_ID = "

    .line 245
    .line 246
    invoke-static {v0, v1, v5}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    if-ltz v0, :cond_1a

    .line 250
    .line 251
    if-le v0, p1, :cond_b

    .line 252
    .line 253
    goto/16 :goto_5

    .line 254
    .line 255
    :cond_b
    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    const-string v1, "SERVICE"

    .line 260
    .line 261
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    const-string v4, "IMS service capabilities : "

    .line 268
    .line 269
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    const-string v4, "IMS registration error code : "

    .line 285
    .line 286
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    const-string v4, "SIP_ERROR"

    .line 290
    .line 291
    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 292
    .line 293
    .line 294
    move-result p2

    .line 295
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p2

    .line 302
    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .line 304
    .line 305
    const-string/jumbo p2, "smsip"

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 309
    .line 310
    .line 311
    move-result p2

    .line 312
    if-eqz p2, :cond_1a

    .line 313
    .line 314
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mImsRegistered:[Z

    .line 315
    .line 316
    aput-boolean p1, p0, v0

    .line 317
    .line 318
    new-instance p0, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    const-string p2, "IMS smsip["

    .line 321
    .line 322
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string p2, "] registered "

    .line 329
    .line 330
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object p0

    .line 340
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .line 342
    .line 343
    goto/16 :goto_5

    .line 344
    .line 345
    :cond_c
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 346
    .line 347
    iget-object p1, p1, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 348
    .line 349
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    .line 351
    .line 352
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 353
    .line 354
    .line 355
    move-result p1

    .line 356
    if-nez p1, :cond_1a

    .line 357
    .line 358
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 359
    .line 360
    iget-object p1, p1, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 361
    .line 362
    invoke-virtual {p1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUsaVerizon()Z

    .line 363
    .line 364
    .line 365
    move-result p1

    .line 366
    if-eqz p1, :cond_1a

    .line 367
    .line 368
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 369
    .line 370
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSuplInitHandler:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    .line 371
    .line 372
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 373
    .line 374
    const-wide/16 v6, 0x0

    .line 375
    .line 376
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency(J)Z

    .line 377
    .line 378
    .line 379
    move-result p0

    .line 380
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 381
    .line 382
    .line 383
    const-string v0, "VOWIFI"

    .line 384
    .line 385
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    if-nez v0, :cond_d

    .line 390
    .line 391
    goto/16 :goto_5

    .line 392
    .line 393
    :cond_d
    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 394
    .line 395
    .line 396
    move-result p2

    .line 397
    iget-object v0, p1, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 398
    .line 399
    if-eqz p2, :cond_e

    .line 400
    .line 401
    if-eqz p0, :cond_1a

    .line 402
    .line 403
    iget-boolean p0, p1, Lcom/android/server/location/gnss/sec/SuplInitHandler;->isEmergencyVowifiRegistration:Z

    .line 404
    .line 405
    if-nez p0, :cond_1a

    .line 406
    .line 407
    const-string p0, "VoWIFI for emergency is registered "

    .line 408
    .line 409
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    .line 411
    .line 412
    iput-boolean v1, p1, Lcom/android/server/location/gnss/sec/SuplInitHandler;->isEmergencyVowifiRegistration:Z

    .line 413
    .line 414
    const-string p0, "VOWIFI_REGISTRATION=TRUE"

    .line 415
    .line 416
    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    goto/16 :goto_5

    .line 420
    .line 421
    :cond_e
    iget-boolean p0, p1, Lcom/android/server/location/gnss/sec/SuplInitHandler;->isEmergencyVowifiRegistration:Z

    .line 422
    .line 423
    if-eqz p0, :cond_1a

    .line 424
    .line 425
    const-string p0, "VoWIFI for emergency is deregistered "

    .line 426
    .line 427
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .line 429
    .line 430
    iput-boolean v2, p1, Lcom/android/server/location/gnss/sec/SuplInitHandler;->isEmergencyVowifiRegistration:Z

    .line 431
    .line 432
    const-string p0, "VOWIFI_REGISTRATION=FALSE"

    .line 433
    .line 434
    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    goto/16 :goto_5

    .line 438
    .line 439
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 440
    .line 441
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 442
    .line 443
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 444
    .line 445
    .line 446
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 447
    .line 448
    .line 449
    move-result p1

    .line 450
    if-eqz p1, :cond_f

    .line 451
    .line 452
    new-instance p1, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda3;

    .line 453
    .line 454
    invoke-direct {p1, p0, v2}, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;I)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    .line 458
    .line 459
    .line 460
    goto/16 :goto_5

    .line 461
    .line 462
    :cond_f
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 463
    .line 464
    const-string p1, "EMERGENCY_STATE=SMS"

    .line 465
    .line 466
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    goto/16 :goto_5

    .line 470
    .line 471
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 472
    .line 473
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 474
    .line 475
    .line 476
    const-string/jumbo p1, "ss"

    .line 477
    .line 478
    .line 479
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object p1

    .line 483
    const-string p2, "SIM_STATE_CHANGED received : "

    .line 484
    .line 485
    invoke-static {p2, p1, v5}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 489
    .line 490
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    .line 491
    .line 492
    .line 493
    move-result-object p2

    .line 494
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSimInformationHashMap:Ljava/util/HashMap;

    .line 495
    .line 496
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 497
    .line 498
    .line 499
    invoke-virtual {p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    .line 500
    .line 501
    .line 502
    move-result-object p2

    .line 503
    if-eqz p2, :cond_10

    .line 504
    .line 505
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 506
    .line 507
    .line 508
    move-result-object p2

    .line 509
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 510
    .line 511
    .line 512
    move-result v1

    .line 513
    if-eqz v1, :cond_10

    .line 514
    .line 515
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 520
    .line 521
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 522
    .line 523
    .line 524
    move-result v1

    .line 525
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 526
    .line 527
    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 528
    .line 529
    .line 530
    move-result-object v2

    .line 531
    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v3

    .line 535
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 536
    .line 537
    iput-object v3, v6, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    .line 538
    .line 539
    invoke-virtual {v6}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 540
    .line 541
    .line 542
    move-result-object v7

    .line 543
    iput-object v7, v6, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 544
    .line 545
    const-string v6, "SubscriptionId is "

    .line 546
    .line 547
    const-string v7, ", SimOperatorName = "

    .line 548
    .line 549
    invoke-static {v1, v6, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    move-result-object v6

    .line 553
    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v7

    .line 557
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    const-string v7, ", SimOperator = "

    .line 561
    .line 562
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v6

    .line 572
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    .line 574
    .line 575
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSimInformationHashMap:Ljava/util/HashMap;

    .line 576
    .line 577
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 578
    .line 579
    .line 580
    move-result-object v1

    .line 581
    new-instance v7, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;

    .line 582
    .line 583
    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 584
    .line 585
    invoke-virtual {v8}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getConfigMap()Ljava/util/HashMap;

    .line 586
    .line 587
    .line 588
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 589
    .line 590
    .line 591
    iput v0, v7, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;->mSlotId:I

    .line 592
    .line 593
    iput-object v3, v7, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;->mSimOperator:Ljava/lang/String;

    .line 594
    .line 595
    iput-object v2, v7, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;->mPhone:Landroid/telephony/TelephonyManager;

    .line 596
    .line 597
    invoke-virtual {v6, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    goto :goto_3

    .line 601
    :cond_10
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 602
    .line 603
    .line 604
    move-result p1

    .line 605
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 606
    .line 607
    if-eqz p1, :cond_13

    .line 608
    .line 609
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 610
    .line 611
    .line 612
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 613
    .line 614
    .line 615
    move-result p1

    .line 616
    if-eqz p1, :cond_12

    .line 617
    .line 618
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setSuplServerSec()V

    .line 619
    .line 620
    .line 621
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 622
    .line 623
    const-class p2, Landroid/hardware/input/InputManager;

    .line 624
    .line 625
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object p1

    .line 629
    check-cast p1, Landroid/hardware/input/InputManager;

    .line 630
    .line 631
    if-nez p1, :cond_11

    .line 632
    .line 633
    goto/16 :goto_5

    .line 634
    .line 635
    :cond_11
    invoke-virtual {p1}, Landroid/hardware/input/InputManager;->semGetLidState()I

    .line 636
    .line 637
    .line 638
    move-result p1

    .line 639
    iput p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mLidState:I

    .line 640
    .line 641
    if-le p1, v0, :cond_1a

    .line 642
    .line 643
    new-instance p1, Ljava/lang/StringBuilder;

    .line 644
    .line 645
    const-string p2, "Folderable phone - simstate change. lidstate "

    .line 646
    .line 647
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    iget p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mLidState:I

    .line 651
    .line 652
    invoke-static {p1, p2, v5}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 653
    .line 654
    .line 655
    iget p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mLidState:I

    .line 656
    .line 657
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->sendLidState(I)V

    .line 658
    .line 659
    .line 660
    goto/16 :goto_5

    .line 661
    .line 662
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setSuplServerSec()V

    .line 663
    .line 664
    .line 665
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->sendExtraConfigurationString()V

    .line 666
    .line 667
    .line 668
    goto/16 :goto_5

    .line 669
    .line 670
    :cond_13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 671
    .line 672
    .line 673
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 674
    .line 675
    .line 676
    move-result p1

    .line 677
    if-nez p1, :cond_1a

    .line 678
    .line 679
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 680
    .line 681
    invoke-virtual {p1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUSAMarket()Z

    .line 682
    .line 683
    .line 684
    move-result p1

    .line 685
    if-nez p1, :cond_14

    .line 686
    .line 687
    goto/16 :goto_5

    .line 688
    .line 689
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->sendExtraConfigurationString()V

    .line 690
    .line 691
    .line 692
    iget p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    .line 693
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setLppBitMask(I)V

    .line 695
    .line 696
    .line 697
    goto/16 :goto_5

    .line 698
    .line 699
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 700
    .line 701
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 702
    .line 703
    .line 704
    const-string/jumbo p0, "networkInfo"

    .line 705
    .line 706
    .line 707
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 708
    .line 709
    .line 710
    move-result-object p0

    .line 711
    check-cast p0, Landroid/net/NetworkInfo;

    .line 712
    .line 713
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 714
    .line 715
    .line 716
    move-result-object p1

    .line 717
    sget-object p2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 718
    .line 719
    if-ne p1, p2, :cond_15

    .line 720
    .line 721
    sget-boolean p1, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isWlanApConnected:Z

    .line 722
    .line 723
    if-nez p1, :cond_1a

    .line 724
    .line 725
    new-instance p1, Ljava/lang/StringBuilder;

    .line 726
    .line 727
    const-string p2, "WIFI NetworkInfo: "

    .line 728
    .line 729
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 730
    .line 731
    .line 732
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object p0

    .line 739
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    .line 741
    .line 742
    sput-boolean v1, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isWlanApConnected:Z

    .line 743
    .line 744
    goto/16 :goto_5

    .line 745
    .line 746
    :cond_15
    sget-boolean p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isWlanApConnected:Z

    .line 747
    .line 748
    if-eqz p0, :cond_1a

    .line 749
    .line 750
    const-string p0, "WIFI is DISCONNECTED."

    .line 751
    .line 752
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    .line 754
    .line 755
    sput-boolean v2, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isWlanApConnected:Z

    .line 756
    .line 757
    goto/16 :goto_5

    .line 758
    .line 759
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 760
    .line 761
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSuplInitHandler:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    .line 762
    .line 763
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 764
    .line 765
    .line 766
    new-instance p1, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;

    .line 767
    .line 768
    invoke-direct {p1, p0, p2, v1}, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/sec/SuplInitHandler;Ljava/lang/Object;I)V

    .line 769
    .line 770
    .line 771
    invoke-virtual {p2, v6, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 772
    .line 773
    .line 774
    move-result p2

    .line 775
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->handleSuplInit(Ljava/lang/Runnable;I)V

    .line 776
    .line 777
    .line 778
    goto/16 :goto_5

    .line 779
    .line 780
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 781
    .line 782
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 783
    .line 784
    .line 785
    const-string/jumbo p1, "com.samsung.carrier.extra.CARRIER_STATE"

    .line 786
    .line 787
    .line 788
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object p1

    .line 792
    const-string/jumbo v1, "com.samsung.carrier.extra.CARRIER_PHONE_ID"

    .line 793
    .line 794
    .line 795
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 796
    .line 797
    .line 798
    move-result p2

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    .line 800
    .line 801
    const-string/jumbo v1, "slotid="

    .line 802
    .line 803
    .line 804
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 805
    .line 806
    .line 807
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 808
    .line 809
    .line 810
    const-string v1, " carrier state="

    .line 811
    .line 812
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    .line 814
    .line 815
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    .line 817
    .line 818
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 819
    .line 820
    .line 821
    move-result-object v0

    .line 822
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    .line 824
    .line 825
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 826
    .line 827
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 828
    .line 829
    .line 830
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 831
    .line 832
    .line 833
    move-result v0

    .line 834
    if-eqz v0, :cond_17

    .line 835
    .line 836
    const-string v0, "UPDATED"

    .line 837
    .line 838
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 839
    .line 840
    .line 841
    move-result v0

    .line 842
    if-nez v0, :cond_16

    .line 843
    .line 844
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 845
    .line 846
    .line 847
    move-result p1

    .line 848
    if-eqz p1, :cond_1a

    .line 849
    .line 850
    :cond_16
    if-ltz p2, :cond_1a

    .line 851
    .line 852
    const-string p1, "CARRIER_STATE_CHANGED="

    .line 853
    .line 854
    invoke-static {p2, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object p1

    .line 858
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 859
    .line 860
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 861
    .line 862
    .line 863
    goto :goto_5

    .line 864
    :cond_17
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 865
    .line 866
    .line 867
    move-result p1

    .line 868
    if-eqz p1, :cond_1a

    .line 869
    .line 870
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    .line 871
    .line 872
    .line 873
    move-result p1

    .line 874
    const-string v0, "Sim subId from slotId. subId="

    .line 875
    .line 876
    const-string v1, ", slotId="

    .line 877
    .line 878
    invoke-static {p1, p2, v0, v1, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    .line 880
    .line 881
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 882
    .line 883
    .line 884
    move-result v0

    .line 885
    if-eqz v0, :cond_19

    .line 886
    .line 887
    const-string v0, "CarrierFeature LOADED. it\'s sub Id="

    .line 888
    .line 889
    invoke-static {p1, v0, v5}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 890
    .line 891
    .line 892
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSimInformationHashMap:Ljava/util/HashMap;

    .line 893
    .line 894
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 895
    .line 896
    .line 897
    move-result-object p1

    .line 898
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    .line 900
    .line 901
    move-result-object p1

    .line 902
    check-cast p1, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;

    .line 903
    .line 904
    if-eqz p1, :cond_18

    .line 905
    .line 906
    iput p2, p1, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;->mSlotId:I

    .line 907
    .line 908
    const-string v0, "Set Sim slotID to SimInformationForDSDS, slotId="

    .line 909
    .line 910
    const-string v1, "SimInfo="

    .line 911
    .line 912
    invoke-static {p2, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    .line 914
    .line 915
    move-result-object v0

    .line 916
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object p1

    .line 920
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    .line 922
    .line 923
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 924
    .line 925
    .line 926
    move-result-object p1

    .line 927
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    .line 929
    .line 930
    goto :goto_4

    .line 931
    :cond_18
    const-string p1, "SimInformation was null"

    .line 932
    .line 933
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    .line 935
    .line 936
    :cond_19
    :goto_4
    invoke-virtual {p0, p2}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setCpAgpsProfile(I)V

    .line 937
    .line 938
    .line 939
    invoke-virtual {p0, p2}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setLppBitMask(I)V

    .line 940
    .line 941
    .line 942
    :cond_1a
    :goto_5
    return-void

    .line 943
    :sswitch_data_0
    .sparse-switch
        -0x6695ea54 -> :sswitch_7
        -0x34179f27 -> :sswitch_6
        -0x147b62d9 -> :sswitch_5
        -0xdb21ee7 -> :sswitch_4
        0x23e5f1bf -> :sswitch_3
        0x4e07a101 -> :sswitch_2
        0x7438879a -> :sswitch_1
        0x7fad5a77 -> :sswitch_0
    .end sparse-switch

    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
