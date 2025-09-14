.class public final Lcom/android/server/BatteryService$22;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/BatteryService;

.field public final synthetic val$statusIntent:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Intent;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/BatteryService$22;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/BatteryService$22;->this$0:Lcom/android/server/BatteryService;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/BatteryService$22;->val$statusIntent:Landroid/content/Intent;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string/jumbo v3, "com.samsung.android.sm.devicesecurity"

    .line 4
    .line 5
    .line 6
    const-string v4, "SEC_FLOATING_FEATURE_SECURITY_CONFIG_DEVICEMONITOR_PACKAGE_NAME"

    .line 7
    .line 8
    const-string/jumbo v5, "getMVSPackageName exception : "

    .line 9
    .line 10
    .line 11
    const-string v0, "VPP"

    .line 12
    .line 13
    const-string v8, "VZW"

    .line 14
    .line 15
    const-string/jumbo v9, "ro.csc.sales_code"

    .line 16
    .line 17
    .line 18
    const-string/jumbo v10, "com.samsung.android.homemode"

    .line 19
    .line 20
    .line 21
    const-string/jumbo v12, "com.verizon.mips.services"

    .line 22
    .line 23
    .line 24
    const/4 v13, -0x1

    .line 25
    const-string v14, ", pogo_plugged:"

    .line 26
    .line 27
    const/4 v15, 0x0

    .line 28
    const-string v2, "BatteryService"

    .line 29
    .line 30
    const/4 v6, 0x1

    .line 31
    iget v7, v1, Lcom/android/server/BatteryService$22;->$r8$classId:I

    .line 32
    .line 33
    packed-switch v7, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v3, "Sending ACTION_SEC_BATTERY_EVENT: misc_event:0x"

    .line 41
    .line 42
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v3, v1, Lcom/android/server/BatteryService$22;->this$0:Lcom/android/server/BatteryService;

    .line 46
    .line 47
    iget-object v3, v3, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 48
    .line 49
    iget v3, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 50
    .line 51
    const-string v4, ", sec_plug_type:"

    .line 52
    .line 53
    invoke-static {v3, v0, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v3, v1, Lcom/android/server/BatteryService$22;->this$0:Lcom/android/server/BatteryService;

    .line 57
    .line 58
    iget v3, v3, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 59
    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v3, ", online:"

    .line 64
    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v3, v1, Lcom/android/server/BatteryService$22;->this$0:Lcom/android/server/BatteryService;

    .line 69
    .line 70
    iget-object v3, v3, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 71
    .line 72
    iget v3, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    .line 73
    .line 74
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v3, ", charge_type:"

    .line 78
    .line 79
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v3, v1, Lcom/android/server/BatteryService$22;->this$0:Lcom/android/server/BatteryService;

    .line 83
    .line 84
    iget-object v3, v3, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 85
    .line 86
    iget v3, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    .line 87
    .line 88
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v3, ", ps:"

    .line 92
    .line 93
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v3, v1, Lcom/android/server/BatteryService$22;->this$0:Lcom/android/server/BatteryService;

    .line 97
    .line 98
    iget-object v3, v3, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 99
    .line 100
    iget-boolean v3, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 101
    .line 102
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v3, ", hvc:"

    .line 106
    .line 107
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget-object v3, v1, Lcom/android/server/BatteryService$22;->this$0:Lcom/android/server/BatteryService;

    .line 111
    .line 112
    iget-object v3, v3, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 113
    .line 114
    iget v3, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 115
    .line 116
    if-eqz v3, :cond_0

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_0
    const/4 v6, 0x0

    .line 120
    :goto_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v3, ", charger_type:"

    .line 124
    .line 125
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-object v3, v1, Lcom/android/server/BatteryService$22;->this$0:Lcom/android/server/BatteryService;

    .line 129
    .line 130
    iget-object v3, v3, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 131
    .line 132
    iget v3, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 133
    .line 134
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget-object v3, v1, Lcom/android/server/BatteryService$22;->this$0:Lcom/android/server/BatteryService;

    .line 141
    .line 142
    iget v3, v3, Lcom/android/server/BatteryService;->mPogoCondition:I

    .line 143
    .line 144
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v3, ", current_event:0x"

    .line 148
    .line 149
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget-object v3, v1, Lcom/android/server/BatteryService$22;->this$0:Lcom/android/server/BatteryService;

    .line 153
    .line 154
    iget-object v3, v3, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 155
    .line 156
    iget v3, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    .line 157
    .line 158
    const-string v4, ", wc_tx_id:"

    .line 159
    .line 160
    invoke-static {v3, v0, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object v3, v1, Lcom/android/server/BatteryService$22;->this$0:Lcom/android/server/BatteryService;

    .line 164
    .line 165
    iget v3, v3, Lcom/android/server/BatteryService;->mWcTxId:I

    .line 166
    .line 167
    invoke-static {v0, v3, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-object v0, v1, Lcom/android/server/BatteryService$22;->val$statusIntent:Landroid/content/Intent;

    .line 171
    .line 172
    invoke-static {v0, v13}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string v3, "Sending ACTION_DOCK_EVENT. dock_state:"

    .line 179
    .line 180
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget-object v3, v1, Lcom/android/server/BatteryService$22;->this$0:Lcom/android/server/BatteryService;

    .line 184
    .line 185
    iget v3, v3, Lcom/android/server/BatteryService;->mPogoDockState:I

    .line 186
    .line 187
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    iget-object v3, v1, Lcom/android/server/BatteryService$22;->this$0:Lcom/android/server/BatteryService;

    .line 194
    .line 195
    iget v3, v3, Lcom/android/server/BatteryService;->mPogoCondition:I

    .line 196
    .line 197
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    sget-object v3, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 205
    .line 206
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    iget-object v1, v1, Lcom/android/server/BatteryService$22;->val$statusIntent:Landroid/content/Intent;

    .line 210
    .line 211
    invoke-static {v1, v13}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    .line 212
    .line 213
    .line 214
    invoke-static {v6, v0}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :pswitch_1
    iget-object v0, v1, Lcom/android/server/BatteryService$22;->this$0:Lcom/android/server/BatteryService;

    .line 219
    .line 220
    iget-object v2, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 221
    .line 222
    iget-object v3, v1, Lcom/android/server/BatteryService$22;->val$statusIntent:Landroid/content/Intent;

    .line 223
    .line 224
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 225
    .line 226
    iget-object v0, v0, Lcom/android/server/BatteryService;->mBatteryOptions:Landroid/os/Bundle;

    .line 227
    .line 228
    invoke-virtual {v2, v3, v4, v15, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 229
    .line 230
    .line 231
    iget-object v0, v1, Lcom/android/server/BatteryService$22;->val$statusIntent:Landroid/content/Intent;

    .line 232
    .line 233
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-static {v6, v0}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 238
    .line 239
    .line 240
    return-void

    .line 241
    :pswitch_2
    iget-object v0, v1, Lcom/android/server/BatteryService$22;->this$0:Lcom/android/server/BatteryService;

    .line 242
    .line 243
    iget-object v2, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 244
    .line 245
    iget-object v3, v1, Lcom/android/server/BatteryService$22;->val$statusIntent:Landroid/content/Intent;

    .line 246
    .line 247
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 248
    .line 249
    iget-object v0, v0, Lcom/android/server/BatteryService;->mBatteryOptions:Landroid/os/Bundle;

    .line 250
    .line 251
    invoke-virtual {v2, v3, v4, v15, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 252
    .line 253
    .line 254
    iget-object v0, v1, Lcom/android/server/BatteryService$22;->val$statusIntent:Landroid/content/Intent;

    .line 255
    .line 256
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-static {v6, v0}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 261
    .line 262
    .line 263
    return-void

    .line 264
    :pswitch_3
    iget-object v7, v1, Lcom/android/server/BatteryService$22;->this$0:Lcom/android/server/BatteryService;

    .line 265
    .line 266
    iget-object v13, v7, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 267
    .line 268
    iget-object v14, v1, Lcom/android/server/BatteryService$22;->val$statusIntent:Landroid/content/Intent;

    .line 269
    .line 270
    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 271
    .line 272
    iget-object v7, v7, Lcom/android/server/BatteryService;->mPowerOptions:Landroid/os/Bundle;

    .line 273
    .line 274
    invoke-virtual {v13, v14, v11, v15, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 275
    .line 276
    .line 277
    iget-object v7, v1, Lcom/android/server/BatteryService$22;->val$statusIntent:Landroid/content/Intent;

    .line 278
    .line 279
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v7

    .line 283
    invoke-static {v6, v7}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 284
    .line 285
    .line 286
    sget-boolean v6, Lcom/android/server/BatteryService;->FEATURE_SUPPORTED_DAILY_BOARD:Z

    .line 287
    .line 288
    if-eqz v6, :cond_1

    .line 289
    .line 290
    iget-object v6, v1, Lcom/android/server/BatteryService$22;->val$statusIntent:Landroid/content/Intent;

    .line 291
    .line 292
    invoke-virtual {v6}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v6

    .line 296
    check-cast v6, Landroid/content/Intent;

    .line 297
    .line 298
    const/16 v7, 0x20

    .line 299
    .line 300
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 301
    .line 302
    .line 303
    iget-object v7, v1, Lcom/android/server/BatteryService$22;->this$0:Lcom/android/server/BatteryService;

    .line 304
    .line 305
    iget-object v7, v7, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 306
    .line 307
    invoke-static {v7, v6, v10}, Lcom/android/server/BatteryService;->-$$Nest$smsendBroadcastToExplicitPackage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    :cond_1
    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v6

    .line 314
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v7

    .line 318
    if-nez v7, :cond_2

    .line 319
    .line 320
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    if-eqz v0, :cond_3

    .line 325
    .line 326
    :cond_2
    :try_start_0
    iget-object v0, v1, Lcom/android/server/BatteryService$22;->this$0:Lcom/android/server/BatteryService;

    .line 327
    .line 328
    iget-object v0, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 329
    .line 330
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    const-wide/16 v6, 0x0

    .line 335
    .line 336
    invoke-static {v6, v7}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 337
    .line 338
    .line 339
    move-result-object v6

    .line 340
    invoke-virtual {v0, v12, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 345
    .line 346
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 347
    .line 348
    and-int/lit16 v0, v0, 0x81

    .line 349
    .line 350
    if-eqz v0, :cond_3

    .line 351
    .line 352
    iget-object v0, v1, Lcom/android/server/BatteryService$22;->this$0:Lcom/android/server/BatteryService;

    .line 353
    .line 354
    iget-object v0, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 355
    .line 356
    iget-object v6, v1, Lcom/android/server/BatteryService$22;->val$statusIntent:Landroid/content/Intent;

    .line 357
    .line 358
    invoke-static {v0, v6, v12}, Lcom/android/server/BatteryService;->-$$Nest$smsendBroadcastToExplicitPackage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    .line 360
    .line 361
    goto :goto_1

    .line 362
    :catch_0
    move-exception v0

    .line 363
    sget-object v6, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 364
    .line 365
    new-instance v6, Ljava/lang/StringBuilder;

    .line 366
    .line 367
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    :cond_3
    :goto_1
    iget-object v0, v1, Lcom/android/server/BatteryService$22;->this$0:Lcom/android/server/BatteryService;

    .line 381
    .line 382
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    .line 384
    .line 385
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    iget-object v0, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 394
    .line 395
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    const/16 v3, 0x80

    .line 400
    .line 401
    :try_start_1
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 402
    .line 403
    .line 404
    move-object v15, v2

    .line 405
    :catch_1
    if-eqz v15, :cond_4

    .line 406
    .line 407
    iget-object v0, v1, Lcom/android/server/BatteryService$22;->this$0:Lcom/android/server/BatteryService;

    .line 408
    .line 409
    iget-object v0, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 410
    .line 411
    iget-object v1, v1, Lcom/android/server/BatteryService$22;->val$statusIntent:Landroid/content/Intent;

    .line 412
    .line 413
    invoke-static {v0, v1, v15}, Lcom/android/server/BatteryService;->-$$Nest$smsendBroadcastToExplicitPackage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    :cond_4
    return-void

    .line 417
    :pswitch_4
    iget-object v7, v1, Lcom/android/server/BatteryService$22;->this$0:Lcom/android/server/BatteryService;

    .line 418
    .line 419
    iget-object v11, v7, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 420
    .line 421
    iget-object v13, v1, Lcom/android/server/BatteryService$22;->val$statusIntent:Landroid/content/Intent;

    .line 422
    .line 423
    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 424
    .line 425
    iget-object v7, v7, Lcom/android/server/BatteryService;->mPowerOptions:Landroid/os/Bundle;

    .line 426
    .line 427
    invoke-virtual {v11, v13, v14, v15, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 428
    .line 429
    .line 430
    iget-object v7, v1, Lcom/android/server/BatteryService$22;->val$statusIntent:Landroid/content/Intent;

    .line 431
    .line 432
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v7

    .line 436
    invoke-static {v6, v7}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 437
    .line 438
    .line 439
    sget-boolean v6, Lcom/android/server/BatteryService;->FEATURE_SUPPORTED_DAILY_BOARD:Z

    .line 440
    .line 441
    if-eqz v6, :cond_5

    .line 442
    .line 443
    iget-object v6, v1, Lcom/android/server/BatteryService$22;->val$statusIntent:Landroid/content/Intent;

    .line 444
    .line 445
    invoke-virtual {v6}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v6

    .line 449
    check-cast v6, Landroid/content/Intent;

    .line 450
    .line 451
    const/16 v7, 0x20

    .line 452
    .line 453
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 454
    .line 455
    .line 456
    iget-object v7, v1, Lcom/android/server/BatteryService$22;->this$0:Lcom/android/server/BatteryService;

    .line 457
    .line 458
    iget-object v7, v7, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 459
    .line 460
    invoke-static {v7, v6, v10}, Lcom/android/server/BatteryService;->-$$Nest$smsendBroadcastToExplicitPackage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    :cond_5
    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v6

    .line 467
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-result v7

    .line 471
    if-nez v7, :cond_6

    .line 472
    .line 473
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    move-result v0

    .line 477
    if-eqz v0, :cond_7

    .line 478
    .line 479
    :cond_6
    :try_start_2
    iget-object v0, v1, Lcom/android/server/BatteryService$22;->this$0:Lcom/android/server/BatteryService;

    .line 480
    .line 481
    iget-object v0, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 482
    .line 483
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    const-wide/16 v6, 0x0

    .line 488
    .line 489
    invoke-static {v6, v7}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 490
    .line 491
    .line 492
    move-result-object v6

    .line 493
    invoke-virtual {v0, v12, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 498
    .line 499
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 500
    .line 501
    and-int/lit16 v0, v0, 0x81

    .line 502
    .line 503
    if-eqz v0, :cond_7

    .line 504
    .line 505
    iget-object v0, v1, Lcom/android/server/BatteryService$22;->this$0:Lcom/android/server/BatteryService;

    .line 506
    .line 507
    iget-object v0, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 508
    .line 509
    iget-object v6, v1, Lcom/android/server/BatteryService$22;->val$statusIntent:Landroid/content/Intent;

    .line 510
    .line 511
    invoke-static {v0, v6, v12}, Lcom/android/server/BatteryService;->-$$Nest$smsendBroadcastToExplicitPackage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 512
    .line 513
    .line 514
    goto :goto_2

    .line 515
    :catch_2
    move-exception v0

    .line 516
    sget-object v6, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 517
    .line 518
    new-instance v6, Ljava/lang/StringBuilder;

    .line 519
    .line 520
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    :cond_7
    :goto_2
    iget-object v0, v1, Lcom/android/server/BatteryService$22;->this$0:Lcom/android/server/BatteryService;

    .line 534
    .line 535
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 536
    .line 537
    .line 538
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 539
    .line 540
    .line 541
    move-result-object v2

    .line 542
    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v2

    .line 546
    iget-object v0, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 547
    .line 548
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    const/16 v3, 0x80

    .line 553
    .line 554
    :try_start_3
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 555
    .line 556
    .line 557
    move-object v15, v2

    .line 558
    :catch_3
    if-eqz v15, :cond_8

    .line 559
    .line 560
    iget-object v0, v1, Lcom/android/server/BatteryService$22;->this$0:Lcom/android/server/BatteryService;

    .line 561
    .line 562
    iget-object v0, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 563
    .line 564
    iget-object v1, v1, Lcom/android/server/BatteryService$22;->val$statusIntent:Landroid/content/Intent;

    .line 565
    .line 566
    invoke-static {v0, v1, v15}, Lcom/android/server/BatteryService;->-$$Nest$smsendBroadcastToExplicitPackage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    :cond_8
    return-void

    .line 570
    nop

    .line 571
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
