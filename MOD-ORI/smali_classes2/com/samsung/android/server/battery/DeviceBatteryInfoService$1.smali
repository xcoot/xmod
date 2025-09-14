.class public final Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    iget p1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p1, "DeviceBatteryInfoService"

    .line 7
    .line 8
    const-string v0, "action: "

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 30
    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-object p2, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 38
    .line 39
    iget-object p2, p2, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandler:Landroid/os/Handler;

    .line 40
    .line 41
    new-instance v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$4$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$4$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catch_0
    move-exception p0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 54
    .line 55
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_1

    .line 60
    .line 61
    iget-object p2, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 62
    .line 63
    iget-object p2, p2, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandler:Landroid/os/Handler;

    .line 64
    .line 65
    new-instance v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$4$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$4$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :goto_0
    const-string p2, "exception occurred : "

    .line 76
    .line 77
    invoke-static {p0, p2, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    :goto_1
    return-void

    .line 81
    :pswitch_0
    const-string p1, "DeviceBatteryInfoService"

    .line 82
    .line 83
    const-string v0, "action: "

    .line 84
    .line 85
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iget-object v2, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 113
    .line 114
    iget-object v2, v2, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->packageAddressMap:Ljava/util/HashMap;

    .line 115
    .line 116
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_3

    .line 121
    .line 122
    iget-object v2, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 123
    .line 124
    iget-object v2, v2, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->packageAddressMap:Ljava/util/HashMap;

    .line 125
    .line 126
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    check-cast v2, Ljava/lang/String;

    .line 131
    .line 132
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    .line 133
    .line 134
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_2

    .line 139
    .line 140
    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 141
    .line 142
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->removeInfoOnPackageChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :catch_1
    move-exception p0

    .line 147
    goto :goto_2

    .line 148
    :cond_2
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    .line 149
    .line 150
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_3

    .line 155
    .line 156
    const-string v1, "android.intent.extra.user_handle"

    .line 157
    .line 158
    const/4 v3, 0x0

    .line 159
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-interface {v1, v0, p2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    if-eqz p2, :cond_3

    .line 172
    .line 173
    const/4 v1, 0x1

    .line 174
    if-eq p2, v1, :cond_3

    .line 175
    .line 176
    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 177
    .line 178
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->removeInfoOnPackageChange(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    .line 180
    .line 181
    goto :goto_3

    .line 182
    :goto_2
    const-string p2, "Exception occurred : "

    .line 183
    .line 184
    invoke-static {p0, p2, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :cond_3
    :goto_3
    return-void

    .line 188
    :pswitch_1
    const-string p1, "DeviceBatteryInfoService"

    .line 189
    .line 190
    const-string/jumbo v0, "setBatteryStatus : "

    .line 191
    .line 192
    .line 193
    const-string/jumbo v1, "phone battery status: "

    .line 194
    .line 195
    .line 196
    const-string/jumbo v2, "phone battery level: "

    .line 197
    .line 198
    .line 199
    const-string v3, "action: "

    .line 200
    .line 201
    :try_start_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    new-instance v5, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    invoke-static {p1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    const-string v3, "android.intent.action.USER_UNLOCKED"

    .line 221
    .line 222
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    if-eqz v3, :cond_4

    .line 227
    .line 228
    iget-object v3, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 229
    .line 230
    iget-object v5, v3, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mPhoneBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 231
    .line 232
    if-nez v5, :cond_4

    .line 233
    .line 234
    invoke-virtual {v3}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->addPhoneBatteryInfo()V

    .line 235
    .line 236
    .line 237
    goto :goto_4

    .line 238
    :catch_2
    move-exception p0

    .line 239
    goto :goto_5

    .line 240
    :cond_4
    :goto_4
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    .line 241
    .line 242
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    if-eqz v3, :cond_7

    .line 247
    .line 248
    const-string v3, "level"

    .line 249
    .line 250
    const/4 v4, -0x1

    .line 251
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    const-string/jumbo v5, "status"

    .line 256
    .line 257
    .line 258
    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 259
    .line 260
    .line 261
    move-result p2

    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    invoke-static {p1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .line 291
    .line 292
    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 293
    .line 294
    iget-object v2, v1, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mPhoneBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 295
    .line 296
    if-nez v2, :cond_5

    .line 297
    .line 298
    invoke-virtual {v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->addPhoneBatteryInfo()V

    .line 299
    .line 300
    .line 301
    goto :goto_6

    .line 302
    :cond_5
    invoke-virtual {v2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    if-ne v1, v3, :cond_6

    .line 307
    .line 308
    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 309
    .line 310
    iget-object v1, v1, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mPhoneBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 311
    .line 312
    invoke-virtual {v1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryStatus()I

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    if-eq v1, p2, :cond_7

    .line 317
    .line 318
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 319
    .line 320
    iget-object v1, v1, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mPhoneBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 321
    .line 322
    invoke-virtual {v1, v3}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryLevel(I)V

    .line 323
    .line 324
    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .line 339
    .line 340
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 341
    .line 342
    iget-object v0, v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mPhoneBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 343
    .line 344
    invoke-virtual {v0, p2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryStatus(I)V

    .line 345
    .line 346
    .line 347
    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$1;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 348
    .line 349
    const-string p2, "com.samsung.battery.ACTION_BATTERY_INFO_CHANGED"

    .line 350
    .line 351
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mPhoneBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 352
    .line 353
    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->sendBroadcast(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 354
    .line 355
    .line 356
    goto :goto_6

    .line 357
    :goto_5
    const-string p2, "exception occurred : "

    .line 358
    .line 359
    invoke-static {p0, p2, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    :cond_7
    :goto_6
    return-void

    .line 363
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
