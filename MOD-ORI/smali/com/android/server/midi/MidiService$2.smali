.class public final Lcom/android/server/midi/MidiService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/midi/MidiService;


# direct methods
.method public constructor <init>(Lcom/android/server/midi/MidiService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

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
    .locals 8

    .line 1
    const/4 p1, 0x2

    .line 2
    const/4 v0, 0x1

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    const-string p0, "MidiService"

    .line 11
    .line 12
    const-string p1, "MidiService, action is null"

    .line 13
    .line 14
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v3, -0x1

    .line 19
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    sparse-switch v4, :sswitch_data_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :sswitch_0
    const-string v4, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 28
    .line 29
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v3, 0x3

    .line 37
    goto :goto_0

    .line 38
    :sswitch_1
    const-string v4, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 39
    .line 40
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move v3, p1

    .line 48
    goto :goto_0

    .line 49
    :sswitch_2
    const-string v4, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 50
    .line 51
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    move v3, v0

    .line 59
    goto :goto_0

    .line 60
    :sswitch_3
    const-string v4, "android.bluetooth.device.action.UUID"

    .line 61
    .line 62
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_4

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    move v3, v1

    .line 70
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 71
    .line 72
    .line 73
    goto/16 :goto_4

    .line 74
    .line 75
    :pswitch_0
    const-string p1, "MidiService"

    .line 76
    .line 77
    const-string v0, "ACTION_ACL_DISCONNECTED"

    .line 78
    .line 79
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 83
    .line 84
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    .line 85
    .line 86
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 91
    .line 92
    iget-object p2, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    .line 93
    .line 94
    invoke-static {p2, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$misBLEMIDIDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)Z

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-eqz p2, :cond_a

    .line 99
    .line 100
    iget-object p0, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    const-string p2, "MidiService"

    .line 106
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string/jumbo v1, "closeBluetoothDevice() device: "

    .line 110
    .line 111
    .line 112
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    iget-object p2, p0, Lcom/android/server/midi/MidiService;->mBleMidiDeviceMap:Ljava/util/HashMap;

    .line 126
    .line 127
    monitor-enter p2

    .line 128
    :try_start_0
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mBleMidiDeviceMap:Ljava/util/HashMap;

    .line 129
    .line 130
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    check-cast p0, Landroid/media/midi/MidiDevice;

    .line 135
    .line 136
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    if-eqz p0, :cond_a

    .line 138
    .line 139
    :try_start_1
    invoke-virtual {p0}, Landroid/media/midi/MidiDevice;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    .line 141
    .line 142
    goto/16 :goto_4

    .line 143
    .line 144
    :catch_0
    move-exception p0

    .line 145
    const-string p1, "MidiService"

    .line 146
    .line 147
    new-instance p2, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v0, "Exception closing BLE-MIDI device"

    .line 150
    .line 151
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    goto/16 :goto_4

    .line 165
    .line 166
    :catchall_0
    move-exception p0

    .line 167
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    throw p0

    .line 169
    :pswitch_1
    const-string v2, "MidiService"

    .line 170
    .line 171
    const-string v3, "ACTION_ACL_CONNECTED"

    .line 172
    .line 173
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    const-string v4, "Intent: "

    .line 183
    .line 184
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    const-string v3, "MidiService"

    .line 195
    .line 196
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    if-eqz v2, :cond_6

    .line 204
    .line 205
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    if-eqz v5, :cond_6

    .line 218
    .line 219
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    check-cast v5, Ljava/lang/String;

    .line 224
    .line 225
    const-string v6, "  "

    .line 226
    .line 227
    const-string v7, " : "

    .line 228
    .line 229
    invoke-static {v6, v5, v7}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v7

    .line 237
    if-eqz v7, :cond_5

    .line 238
    .line 239
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    goto :goto_2

    .line 244
    :cond_5
    const-string v5, "NULL"

    .line 245
    .line 246
    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    goto :goto_1

    .line 257
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    if-eqz v2, :cond_9

    .line 262
    .line 263
    const-string v3, "android.bluetooth.device.extra.TRANSPORT"

    .line 264
    .line 265
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    if-ne v2, p1, :cond_9

    .line 270
    .line 271
    const-string p1, "MidiService"

    .line 272
    .line 273
    const-string v2, "BLE Device"

    .line 274
    .line 275
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 279
    .line 280
    const-class v2, Landroid/bluetooth/BluetoothDevice;

    .line 281
    .line 282
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 287
    .line 288
    iget-object p2, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    .line 289
    .line 290
    invoke-static {p2, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$mdumpUuids(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    .line 291
    .line 292
    .line 293
    iget-object p2, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    .line 294
    .line 295
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    if-eqz v2, :cond_8

    .line 303
    .line 304
    array-length v3, v2

    .line 305
    :goto_3
    if-ge v1, v3, :cond_8

    .line 306
    .line 307
    aget-object v4, v2, v1

    .line 308
    .line 309
    iget-object v5, p2, Lcom/android/server/midi/MidiService;->mNonMidiUUIDs:Ljava/util/HashSet;

    .line 310
    .line 311
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v4

    .line 315
    if-eqz v4, :cond_7

    .line 316
    .line 317
    const-string p0, "MidiService"

    .line 318
    .line 319
    const-string p1, "Non-MIDI service UUIDs found. NOT MIDI"

    .line 320
    .line 321
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .line 323
    .line 324
    goto :goto_4

    .line 325
    :cond_7
    add-int/2addr v1, v0

    .line 326
    goto :goto_3

    .line 327
    :cond_8
    const-string p2, "MidiService"

    .line 328
    .line 329
    const-string v0, "Potential MIDI Device."

    .line 330
    .line 331
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .line 333
    .line 334
    iget-object p0, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    .line 335
    .line 336
    invoke-static {p0, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$mopenBluetoothDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    .line 337
    .line 338
    .line 339
    goto :goto_4

    .line 340
    :cond_9
    const-string p0, "MidiService"

    .line 341
    .line 342
    const-string p1, "No BLE transport - NOT MIDI"

    .line 343
    .line 344
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .line 346
    .line 347
    goto :goto_4

    .line 348
    :pswitch_2
    const-string p1, "MidiService"

    .line 349
    .line 350
    const-string v0, "ACTION_UUID"

    .line 351
    .line 352
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    .line 354
    .line 355
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 356
    .line 357
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    .line 358
    .line 359
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 364
    .line 365
    iget-object p2, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    .line 366
    .line 367
    invoke-static {p2, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$mdumpUuids(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    .line 368
    .line 369
    .line 370
    iget-object p2, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    .line 371
    .line 372
    invoke-static {p2, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$misBLEMIDIDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)Z

    .line 373
    .line 374
    .line 375
    move-result p2

    .line 376
    if-eqz p2, :cond_a

    .line 377
    .line 378
    const-string p2, "MidiService"

    .line 379
    .line 380
    const-string v0, "BT MIDI DEVICE"

    .line 381
    .line 382
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .line 384
    .line 385
    iget-object p0, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    .line 386
    .line 387
    invoke-static {p0, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$mopenBluetoothDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    .line 388
    .line 389
    .line 390
    :cond_a
    :goto_4
    return-void

    .line 391
    :sswitch_data_0
    .sparse-switch
        -0x16809cc6 -> :sswitch_3
        -0x11f77b4b -> :sswitch_2
        0x6c9330ef -> :sswitch_1
        0x7e2cc189 -> :sswitch_0
    .end sparse-switch

    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
