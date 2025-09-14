.class public final Lcom/android/server/usb/UsbDirectMidiDevice;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final mCallback:Lcom/android/server/usb/UsbDirectMidiDevice$1;

.field public mContext:Landroid/content/Context;

.field public mDefaultMidiProtocol:I

.field public mInputUsbEndpointCableCounts:Ljava/util/ArrayList;

.field public mInputUsbEndpoints:Ljava/util/ArrayList;

.field public mIsOpen:Z

.field public final mIsUniversalMidiDevice:Z

.field public final mLock:Ljava/lang/Object;

.field public final mMidiBlockParser:Lcom/android/server/usb/descriptors/UsbMidiBlockParser;

.field public mMidiEventMultiSchedulers:Ljava/util/ArrayList;

.field public final mMidiInputPortReceivers:[Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

.field public mName:Ljava/lang/String;

.field public final mNumInputs:I

.field public final mNumOutputs:I

.field public mOutputUsbEndpointCableCounts:Ljava/util/ArrayList;

.field public mOutputUsbEndpoints:Ljava/util/ArrayList;

.field public final mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

.field public final mPowerBoostSetter:Lcom/android/server/usb/PowerBoostSetter;

.field public mServer:Landroid/media/midi/MidiDeviceServer;

.field public mServerAvailable:Z

.field public final mShouldCallSetInterface:Z

.field public mThreads:Ljava/util/ArrayList;

.field public final mUniqueUsbDeviceIdentifier:Ljava/lang/String;

.field public final mUsbDevice:Landroid/hardware/usb/UsbDevice;

.field public mUsbDeviceConnections:Ljava/util/ArrayList;

.field public final mUsbInterfaces:Ljava/util/ArrayList;


# direct methods
.method public static -$$Nest$mopenLocked(Lcom/android/server/usb/UsbDirectMidiDevice;)V
    .locals 16

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "UsbDirectMidiDevice"

    .line 7
    .line 8
    const-string/jumbo v1, "openLocked()"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object v0, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    const-class v1, Landroid/hardware/usb/UsbManager;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 23
    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDeviceConnections:Ljava/util/ArrayList;

    .line 30
    .line 31
    new-instance v1, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v1, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpoints:Ljava/util/ArrayList;

    .line 37
    .line 38
    new-instance v1, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v1, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpoints:Ljava/util/ArrayList;

    .line 44
    .line 45
    new-instance v1, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v1, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpointCableCounts:Ljava/util/ArrayList;

    .line 51
    .line 52
    new-instance v1, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v1, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpointCableCounts:Ljava/util/ArrayList;

    .line 58
    .line 59
    new-instance v1, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v1, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiEventMultiSchedulers:Ljava/util/ArrayList;

    .line 65
    .line 66
    new-instance v1, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v1, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mThreads:Ljava/util/ArrayList;

    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    :goto_0
    iget-object v2, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-ge v1, v2, :cond_6

    .line 81
    .line 82
    new-instance v2, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .line 86
    .line 87
    new-instance v3, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    new-instance v4, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .line 96
    .line 97
    new-instance v5, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .line 101
    .line 102
    new-instance v6, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .line 106
    .line 107
    iget-object v7, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    check-cast v7, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 114
    .line 115
    const/4 v10, 0x0

    .line 116
    :goto_1
    iget-byte v11, v7, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mNumEndpoints:B

    .line 117
    .line 118
    if-ge v10, v11, :cond_2

    .line 119
    .line 120
    invoke-virtual {v7, v10}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getEndpointDescriptor(I)Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    if-eqz v11, :cond_1

    .line 125
    .line 126
    invoke-virtual {v11}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getDirection()I

    .line 127
    .line 128
    .line 129
    move-result v12

    .line 130
    if-nez v12, :cond_0

    .line 131
    .line 132
    new-instance v12, Landroid/hardware/usb/UsbEndpoint;

    .line 133
    .line 134
    iget v13, v11, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mEndpointAddress:I

    .line 135
    .line 136
    iget v14, v11, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mAttributes:I

    .line 137
    .line 138
    iget v15, v11, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mPacketSize:I

    .line 139
    .line 140
    iget v9, v11, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mInterval:I

    .line 141
    .line 142
    invoke-direct {v12, v13, v14, v15, v9}, Landroid/hardware/usb/UsbEndpoint;-><init>(IIII)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    invoke-static {v11}, Lcom/android/server/usb/UsbDirectMidiDevice;->getNumJacks(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)I

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v9

    .line 156
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    new-instance v9, Lcom/android/internal/midi/MidiEventMultiScheduler;

    .line 160
    .line 161
    invoke-static {v11}, Lcom/android/server/usb/UsbDirectMidiDevice;->getNumJacks(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)I

    .line 162
    .line 163
    .line 164
    move-result v11

    .line 165
    invoke-direct {v9, v11}, Lcom/android/internal/midi/MidiEventMultiScheduler;-><init>(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_0
    new-instance v9, Landroid/hardware/usb/UsbEndpoint;

    .line 173
    .line 174
    iget v12, v11, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mEndpointAddress:I

    .line 175
    .line 176
    iget v13, v11, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mAttributes:I

    .line 177
    .line 178
    iget v14, v11, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mPacketSize:I

    .line 179
    .line 180
    iget v15, v11, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mInterval:I

    .line 181
    .line 182
    invoke-direct {v9, v12, v13, v14, v15}, Landroid/hardware/usb/UsbEndpoint;-><init>(IIII)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    invoke-static {v11}, Lcom/android/server/usb/UsbDirectMidiDevice;->getNumJacks(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)I

    .line 189
    .line 190
    .line 191
    move-result v9

    .line 192
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v9

    .line 196
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    :cond_1
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 203
    .line 204
    .line 205
    move-result v9

    .line 206
    if-eqz v9, :cond_3

    .line 207
    .line 208
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 209
    .line 210
    .line 211
    move-result v9

    .line 212
    if-nez v9, :cond_5

    .line 213
    .line 214
    :cond_3
    iget-object v9, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    .line 215
    .line 216
    invoke-virtual {v0, v9}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    .line 217
    .line 218
    .line 219
    move-result-object v9

    .line 220
    iget-object v10, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 221
    .line 222
    invoke-virtual {v7, v10}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbInterface;

    .line 223
    .line 224
    .line 225
    move-result-object v7

    .line 226
    invoke-virtual {v8, v7, v9}, Lcom/android/server/usb/UsbDirectMidiDevice;->updateUsbInterface(Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbDeviceConnection;)Z

    .line 227
    .line 228
    .line 229
    move-result v7

    .line 230
    if-nez v7, :cond_4

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_4
    iget-object v7, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDeviceConnections:Ljava/util/ArrayList;

    .line 234
    .line 235
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    iget-object v7, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpoints:Ljava/util/ArrayList;

    .line 239
    .line 240
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    iget-object v2, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpoints:Ljava/util/ArrayList;

    .line 244
    .line 245
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    iget-object v2, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpointCableCounts:Ljava/util/ArrayList;

    .line 249
    .line 250
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    iget-object v2, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpointCableCounts:Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    iget-object v2, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiEventMultiSchedulers:Ljava/util/ArrayList;

    .line 259
    .line 260
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 264
    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :cond_6
    const/4 v0, 0x0

    .line 268
    const/4 v1, 0x0

    .line 269
    :goto_4
    iget-object v2, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiEventMultiSchedulers:Ljava/util/ArrayList;

    .line 270
    .line 271
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    if-ge v0, v2, :cond_9

    .line 276
    .line 277
    const/4 v2, 0x0

    .line 278
    :goto_5
    iget-object v3, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiEventMultiSchedulers:Ljava/util/ArrayList;

    .line 279
    .line 280
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    check-cast v3, Ljava/util/ArrayList;

    .line 285
    .line 286
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 287
    .line 288
    .line 289
    move-result v3

    .line 290
    if-ge v2, v3, :cond_8

    .line 291
    .line 292
    iget-object v3, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpointCableCounts:Ljava/util/ArrayList;

    .line 293
    .line 294
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    check-cast v3, Ljava/util/ArrayList;

    .line 299
    .line 300
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    check-cast v3, Ljava/lang/Integer;

    .line 305
    .line 306
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    iget-object v4, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiEventMultiSchedulers:Ljava/util/ArrayList;

    .line 311
    .line 312
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v4

    .line 316
    check-cast v4, Ljava/util/ArrayList;

    .line 317
    .line 318
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    check-cast v4, Lcom/android/internal/midi/MidiEventMultiScheduler;

    .line 323
    .line 324
    const/4 v5, 0x0

    .line 325
    :goto_6
    if-ge v5, v3, :cond_7

    .line 326
    .line 327
    invoke-virtual {v4, v5}, Lcom/android/internal/midi/MidiEventMultiScheduler;->getEventScheduler(I)Lcom/android/internal/midi/MidiEventScheduler;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    iget-object v7, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    .line 332
    .line 333
    aget-object v7, v7, v1

    .line 334
    .line 335
    invoke-virtual {v6}, Lcom/android/internal/midi/MidiEventScheduler;->getReceiver()Landroid/media/midi/MidiReceiver;

    .line 336
    .line 337
    .line 338
    move-result-object v6

    .line 339
    iput-object v6, v7, Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;->mReceiver:Landroid/media/midi/MidiReceiver;

    .line 340
    .line 341
    add-int/lit8 v1, v1, 0x1

    .line 342
    .line 343
    add-int/lit8 v5, v5, 0x1

    .line 344
    .line 345
    goto :goto_6

    .line 346
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 347
    .line 348
    goto :goto_5

    .line 349
    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 350
    .line 351
    goto :goto_4

    .line 352
    :cond_9
    iget-object v0, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    .line 353
    .line 354
    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceServer;->getOutputPortReceivers()[Landroid/media/midi/MidiReceiver;

    .line 355
    .line 356
    .line 357
    move-result-object v9

    .line 358
    const/4 v0, 0x0

    .line 359
    const/4 v10, 0x0

    .line 360
    :goto_7
    iget-object v1, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpoints:Ljava/util/ArrayList;

    .line 361
    .line 362
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    if-ge v10, v1, :cond_b

    .line 367
    .line 368
    move v11, v0

    .line 369
    const/4 v12, 0x0

    .line 370
    :goto_8
    iget-object v0, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpoints:Ljava/util/ArrayList;

    .line 371
    .line 372
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    check-cast v0, Ljava/util/ArrayList;

    .line 377
    .line 378
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    if-ge v12, v0, :cond_a

    .line 383
    .line 384
    iget-object v0, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDeviceConnections:Ljava/util/ArrayList;

    .line 385
    .line 386
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    move-object v4, v0

    .line 391
    check-cast v4, Landroid/hardware/usb/UsbDeviceConnection;

    .line 392
    .line 393
    iget-object v0, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpoints:Ljava/util/ArrayList;

    .line 394
    .line 395
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    check-cast v0, Ljava/util/ArrayList;

    .line 400
    .line 401
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    move-object v5, v0

    .line 406
    check-cast v5, Landroid/hardware/usb/UsbEndpoint;

    .line 407
    .line 408
    iget-object v0, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpointCableCounts:Ljava/util/ArrayList;

    .line 409
    .line 410
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    check-cast v0, Ljava/util/ArrayList;

    .line 415
    .line 416
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    check-cast v0, Ljava/lang/Integer;

    .line 421
    .line 422
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 423
    .line 424
    .line 425
    move-result v13

    .line 426
    new-instance v14, Lcom/android/server/usb/UsbDirectMidiDevice$2;

    .line 427
    .line 428
    const-string v0, "UsbDirectMidiDevice input thread "

    .line 429
    .line 430
    invoke-static {v11, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    move-object v0, v14

    .line 435
    move-object/from16 v1, p0

    .line 436
    .line 437
    move v3, v13

    .line 438
    move-object v6, v9

    .line 439
    move v7, v11

    .line 440
    invoke-direct/range {v0 .. v7}, Lcom/android/server/usb/UsbDirectMidiDevice$2;-><init>(Lcom/android/server/usb/UsbDirectMidiDevice;Ljava/lang/String;ILandroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;[Landroid/media/midi/MidiReceiver;I)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    .line 444
    .line 445
    .line 446
    iget-object v0, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mThreads:Ljava/util/ArrayList;

    .line 447
    .line 448
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    add-int/2addr v11, v13

    .line 452
    add-int/lit8 v12, v12, 0x1

    .line 453
    .line 454
    goto :goto_8

    .line 455
    :cond_a
    add-int/lit8 v10, v10, 0x1

    .line 456
    .line 457
    move v0, v11

    .line 458
    goto :goto_7

    .line 459
    :cond_b
    const/4 v0, 0x0

    .line 460
    const/4 v7, 0x0

    .line 461
    :goto_9
    iget-object v1, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpoints:Ljava/util/ArrayList;

    .line 462
    .line 463
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 464
    .line 465
    .line 466
    move-result v1

    .line 467
    if-ge v7, v1, :cond_d

    .line 468
    .line 469
    move v9, v0

    .line 470
    const/4 v10, 0x0

    .line 471
    :goto_a
    iget-object v0, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpoints:Ljava/util/ArrayList;

    .line 472
    .line 473
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    check-cast v0, Ljava/util/ArrayList;

    .line 478
    .line 479
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    if-ge v10, v0, :cond_c

    .line 484
    .line 485
    iget-object v0, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDeviceConnections:Ljava/util/ArrayList;

    .line 486
    .line 487
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    move-object v6, v0

    .line 492
    check-cast v6, Landroid/hardware/usb/UsbDeviceConnection;

    .line 493
    .line 494
    iget-object v0, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpoints:Ljava/util/ArrayList;

    .line 495
    .line 496
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    check-cast v0, Ljava/util/ArrayList;

    .line 501
    .line 502
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    move-object v5, v0

    .line 507
    check-cast v5, Landroid/hardware/usb/UsbEndpoint;

    .line 508
    .line 509
    iget-object v0, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpointCableCounts:Ljava/util/ArrayList;

    .line 510
    .line 511
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    check-cast v0, Ljava/util/ArrayList;

    .line 516
    .line 517
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    check-cast v0, Ljava/lang/Integer;

    .line 522
    .line 523
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 524
    .line 525
    .line 526
    move-result v11

    .line 527
    iget-object v0, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiEventMultiSchedulers:Ljava/util/ArrayList;

    .line 528
    .line 529
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    check-cast v0, Ljava/util/ArrayList;

    .line 534
    .line 535
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    move-object v4, v0

    .line 540
    check-cast v4, Lcom/android/internal/midi/MidiEventMultiScheduler;

    .line 541
    .line 542
    new-instance v12, Lcom/android/server/usb/UsbDirectMidiDevice$3;

    .line 543
    .line 544
    const-string v0, "UsbDirectMidiDevice output write thread "

    .line 545
    .line 546
    invoke-static {v9, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v2

    .line 550
    move-object v0, v12

    .line 551
    move-object/from16 v1, p0

    .line 552
    .line 553
    move v3, v11

    .line 554
    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbDirectMidiDevice$3;-><init>(Lcom/android/server/usb/UsbDirectMidiDevice;Ljava/lang/String;ILcom/android/internal/midi/MidiEventMultiScheduler;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbDeviceConnection;)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    .line 558
    .line 559
    .line 560
    iget-object v0, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mThreads:Ljava/util/ArrayList;

    .line 561
    .line 562
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    .line 564
    .line 565
    add-int/2addr v9, v11

    .line 566
    add-int/lit8 v10, v10, 0x1

    .line 567
    .line 568
    goto :goto_a

    .line 569
    :cond_c
    add-int/lit8 v7, v7, 0x1

    .line 570
    .line 571
    move v0, v9

    .line 572
    goto :goto_9

    .line 573
    :cond_d
    const/4 v0, 0x1

    .line 574
    iput-boolean v0, v8, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsOpen:Z

    .line 575
    .line 576
    return-void
.end method

.method public static -$$Nest$mswapEndiannessPerWord(Lcom/android/server/usb/UsbDirectMidiDevice;[BI)[B
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    and-int/lit8 p0, p2, 0x3

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const-string/jumbo v0, "size not multiple of 4: "

    .line 9
    .line 10
    .line 11
    const-string v1, "UsbDirectMidiDevice"

    .line 12
    .line 13
    invoke-static {p2, v0, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    sub-int p0, p2, p0

    .line 17
    .line 18
    new-array p0, p0, [B

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    :goto_0
    add-int/lit8 v1, v0, 0x3

    .line 22
    .line 23
    if-ge v1, p2, :cond_1

    .line 24
    .line 25
    aget-byte v2, p1, v1

    .line 26
    .line 27
    aput-byte v2, p0, v0

    .line 28
    .line 29
    add-int/lit8 v2, v0, 0x1

    .line 30
    .line 31
    add-int/lit8 v3, v0, 0x2

    .line 32
    .line 33
    aget-byte v4, p1, v3

    .line 34
    .line 35
    aput-byte v4, p0, v2

    .line 36
    .line 37
    aget-byte v2, p1, v2

    .line 38
    .line 39
    aput-byte v2, p0, v3

    .line 40
    .line 41
    aget-byte v2, p1, v0

    .line 42
    .line 43
    aput-byte v2, p0, v1

    .line 44
    .line 45
    add-int/lit8 v0, v0, 0x4

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-object p0
.end method

.method public static -$$Nest$smlogByteArray(ILjava/lang/String;[B)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    :goto_0
    if-ge p1, p0, :cond_1

    .line 8
    .line 9
    aget-byte v1, p2, p1

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "0x%02X"

    .line 20
    .line 21
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    array-length v1, p2

    .line 29
    add-int/lit8 v1, v1, -0x1

    .line 30
    .line 31
    if-eq p1, v1, :cond_0

    .line 32
    .line 33
    const-string v1, ", "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const-string p0, "UsbDirectMidiDevice"

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;ZLjava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v4, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v4, v3, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mGroupTerminalBlocks:Ljava/util/ArrayList;

    .line 21
    .line 22
    iput-object v3, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiBlockParser:Lcom/android/server/usb/descriptors/UsbMidiBlockParser;

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    iput v3, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mDefaultMidiProtocol:I

    .line 26
    .line 27
    new-instance v4, Ljava/lang/Object;

    .line 28
    .line 29
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v4, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mLock:Ljava/lang/Object;

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    iput-object v4, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mPowerBoostSetter:Lcom/android/server/usb/PowerBoostSetter;

    .line 36
    .line 37
    new-instance v4, Lcom/android/server/usb/UsbDirectMidiDevice$1;

    .line 38
    .line 39
    invoke-direct {v4, v0}, Lcom/android/server/usb/UsbDirectMidiDevice$1;-><init>(Lcom/android/server/usb/UsbDirectMidiDevice;)V

    .line 40
    .line 41
    .line 42
    iput-object v4, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mCallback:Lcom/android/server/usb/UsbDirectMidiDevice$1;

    .line 43
    .line 44
    move-object/from16 v4, p1

    .line 45
    .line 46
    iput-object v4, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    .line 47
    .line 48
    iput-object v1, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 49
    .line 50
    move-object/from16 v4, p4

    .line 51
    .line 52
    iput-object v4, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUniqueUsbDeviceIdentifier:Ljava/lang/String;

    .line 53
    .line 54
    iput-boolean v2, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const/4 v5, 0x0

    .line 65
    move v6, v5

    .line 66
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-eqz v7, :cond_2

    .line 71
    .line 72
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    check-cast v7, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 77
    .line 78
    instance-of v8, v7, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 79
    .line 80
    if-eqz v8, :cond_1

    .line 81
    .line 82
    check-cast v7, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 83
    .line 84
    iget v8, v7, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbSubclass:I

    .line 85
    .line 86
    const/4 v9, 0x3

    .line 87
    if-ne v8, v9, :cond_0

    .line 88
    .line 89
    iget-object v7, v7, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mMidiHeaderInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 90
    .line 91
    if-eqz v7, :cond_0

    .line 92
    .line 93
    instance-of v8, v7, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    .line 94
    .line 95
    if-eqz v8, :cond_0

    .line 96
    .line 97
    check-cast v7, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    .line 98
    .line 99
    add-int/lit8 v6, v6, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v9, "Undefined Audio Class Interface l: "

    .line 105
    .line 106
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget v9, v7, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    .line 110
    .line 111
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v9, " t:0x"

    .line 115
    .line 116
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-byte v7, v7, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    .line 120
    .line 121
    const-string v9, "UsbDescriptorParser"

    .line 122
    .line 123
    invoke-static {v7, v8, v9}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_2
    if-le v6, v3, :cond_3

    .line 128
    .line 129
    move v4, v3

    .line 130
    goto :goto_1

    .line 131
    :cond_3
    move v4, v5

    .line 132
    :goto_1
    iput-boolean v4, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mShouldCallSetInterface:Z

    .line 133
    .line 134
    if-eqz v2, :cond_4

    .line 135
    .line 136
    const/16 v4, 0x200

    .line 137
    .line 138
    invoke-virtual {v1, v4}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->findMidiInterfaceDescriptors(I)Ljava/util/ArrayList;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    goto :goto_2

    .line 143
    :cond_4
    const/16 v4, 0x100

    .line 144
    .line 145
    invoke-virtual {v1, v4}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->findMidiInterfaceDescriptors(I)Ljava/util/ArrayList;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .line 153
    .line 154
    iput-object v4, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    .line 155
    .line 156
    iget-object v4, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    .line 157
    .line 158
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    const-string v6, "UsbDirectMidiDevice"

    .line 163
    .line 164
    if-lez v4, :cond_d

    .line 165
    .line 166
    iget-object v4, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    .line 167
    .line 168
    invoke-virtual {v4, v5}, Landroid/hardware/usb/UsbDevice;->getConfiguration(I)Landroid/hardware/usb/UsbConfiguration;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    move v7, v5

    .line 173
    :goto_3
    invoke-virtual {v4}, Landroid/hardware/usb/UsbConfiguration;->getInterfaceCount()I

    .line 174
    .line 175
    .line 176
    move-result v8

    .line 177
    if-ge v7, v8, :cond_c

    .line 178
    .line 179
    invoke-virtual {v4, v7}, Landroid/hardware/usb/UsbConfiguration;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 180
    .line 181
    .line 182
    move-result-object v8

    .line 183
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    .line 189
    .line 190
    move-result v10

    .line 191
    if-eqz v10, :cond_b

    .line 192
    .line 193
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v10

    .line 197
    check-cast v10, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 198
    .line 199
    iget-object v11, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 200
    .line 201
    invoke-virtual {v10, v11}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbInterface;

    .line 202
    .line 203
    .line 204
    move-result-object v11

    .line 205
    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getId()I

    .line 206
    .line 207
    .line 208
    move-result v12

    .line 209
    invoke-virtual {v11}, Landroid/hardware/usb/UsbInterface;->getId()I

    .line 210
    .line 211
    .line 212
    move-result v13

    .line 213
    if-ne v12, v13, :cond_a

    .line 214
    .line 215
    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getAlternateSetting()I

    .line 216
    .line 217
    .line 218
    move-result v12

    .line 219
    invoke-virtual {v11}, Landroid/hardware/usb/UsbInterface;->getAlternateSetting()I

    .line 220
    .line 221
    .line 222
    move-result v13

    .line 223
    if-ne v12, v13, :cond_a

    .line 224
    .line 225
    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    .line 226
    .line 227
    .line 228
    move-result v12

    .line 229
    invoke-virtual {v11}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    .line 230
    .line 231
    .line 232
    move-result v13

    .line 233
    if-ne v12, v13, :cond_a

    .line 234
    .line 235
    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    .line 236
    .line 237
    .line 238
    move-result v12

    .line 239
    invoke-virtual {v11}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    .line 240
    .line 241
    .line 242
    move-result v13

    .line 243
    if-ne v12, v13, :cond_a

    .line 244
    .line 245
    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    .line 246
    .line 247
    .line 248
    move-result v12

    .line 249
    invoke-virtual {v11}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    .line 250
    .line 251
    .line 252
    move-result v13

    .line 253
    if-ne v12, v13, :cond_a

    .line 254
    .line 255
    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    .line 256
    .line 257
    .line 258
    move-result v12

    .line 259
    invoke-virtual {v11}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    .line 260
    .line 261
    .line 262
    move-result v13

    .line 263
    if-eq v12, v13, :cond_5

    .line 264
    .line 265
    goto :goto_6

    .line 266
    :cond_5
    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v12

    .line 270
    if-nez v12, :cond_6

    .line 271
    .line 272
    invoke-virtual {v11}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v12

    .line 276
    if-eqz v12, :cond_7

    .line 277
    .line 278
    goto :goto_6

    .line 279
    :cond_6
    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v12

    .line 283
    invoke-virtual {v11}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v13

    .line 287
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v12

    .line 291
    if-nez v12, :cond_7

    .line 292
    .line 293
    goto :goto_6

    .line 294
    :cond_7
    move v12, v5

    .line 295
    :goto_5
    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    .line 296
    .line 297
    .line 298
    move-result v13

    .line 299
    if-ge v12, v13, :cond_9

    .line 300
    .line 301
    invoke-virtual {v8, v12}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    .line 302
    .line 303
    .line 304
    move-result-object v13

    .line 305
    invoke-virtual {v11, v12}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    .line 306
    .line 307
    .line 308
    move-result-object v14

    .line 309
    invoke-virtual {v13}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    .line 310
    .line 311
    .line 312
    move-result v15

    .line 313
    invoke-virtual {v14}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    .line 314
    .line 315
    .line 316
    move-result v5

    .line 317
    if-ne v15, v5, :cond_a

    .line 318
    .line 319
    invoke-virtual {v13}, Landroid/hardware/usb/UsbEndpoint;->getAttributes()I

    .line 320
    .line 321
    .line 322
    move-result v5

    .line 323
    invoke-virtual {v14}, Landroid/hardware/usb/UsbEndpoint;->getAttributes()I

    .line 324
    .line 325
    .line 326
    move-result v15

    .line 327
    if-ne v5, v15, :cond_a

    .line 328
    .line 329
    invoke-virtual {v13}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    .line 330
    .line 331
    .line 332
    move-result v5

    .line 333
    invoke-virtual {v14}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    .line 334
    .line 335
    .line 336
    move-result v15

    .line 337
    if-ne v5, v15, :cond_a

    .line 338
    .line 339
    invoke-virtual {v13}, Landroid/hardware/usb/UsbEndpoint;->getInterval()I

    .line 340
    .line 341
    .line 342
    move-result v5

    .line 343
    invoke-virtual {v14}, Landroid/hardware/usb/UsbEndpoint;->getInterval()I

    .line 344
    .line 345
    .line 346
    move-result v13

    .line 347
    if-eq v5, v13, :cond_8

    .line 348
    .line 349
    goto :goto_6

    .line 350
    :cond_8
    add-int/lit8 v12, v12, 0x1

    .line 351
    .line 352
    const/4 v5, 0x0

    .line 353
    goto :goto_5

    .line 354
    :cond_9
    iget-object v5, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    .line 355
    .line 356
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    goto :goto_7

    .line 360
    :cond_a
    :goto_6
    const/4 v5, 0x0

    .line 361
    goto/16 :goto_4

    .line 362
    .line 363
    :cond_b
    :goto_7
    add-int/lit8 v7, v7, 0x1

    .line 364
    .line 365
    const/4 v5, 0x0

    .line 366
    goto/16 :goto_3

    .line 367
    .line 368
    :cond_c
    iget-object v1, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    .line 369
    .line 370
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    if-le v1, v3, :cond_d

    .line 375
    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    const-string v3, "Skipping some USB configurations. Count: "

    .line 379
    .line 380
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    iget-object v3, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    .line 384
    .line 385
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    .line 386
    .line 387
    .line 388
    move-result v3

    .line 389
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .line 398
    .line 399
    :cond_d
    const/4 v1, 0x0

    .line 400
    const/4 v3, 0x0

    .line 401
    const/4 v4, 0x0

    .line 402
    :goto_8
    iget-object v5, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    .line 403
    .line 404
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 405
    .line 406
    .line 407
    move-result v5

    .line 408
    if-ge v1, v5, :cond_11

    .line 409
    .line 410
    iget-object v5, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    .line 411
    .line 412
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v5

    .line 416
    check-cast v5, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 417
    .line 418
    const/4 v7, 0x0

    .line 419
    :goto_9
    iget-byte v8, v5, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mNumEndpoints:B

    .line 420
    .line 421
    if-ge v7, v8, :cond_10

    .line 422
    .line 423
    invoke-virtual {v5, v7}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getEndpointDescriptor(I)Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    .line 424
    .line 425
    .line 426
    move-result-object v8

    .line 427
    if-eqz v8, :cond_f

    .line 428
    .line 429
    invoke-virtual {v8}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getDirection()I

    .line 430
    .line 431
    .line 432
    move-result v9

    .line 433
    if-nez v9, :cond_e

    .line 434
    .line 435
    invoke-static {v8}, Lcom/android/server/usb/UsbDirectMidiDevice;->getNumJacks(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)I

    .line 436
    .line 437
    .line 438
    move-result v8

    .line 439
    add-int/2addr v8, v4

    .line 440
    move v4, v8

    .line 441
    goto :goto_a

    .line 442
    :cond_e
    invoke-static {v8}, Lcom/android/server/usb/UsbDirectMidiDevice;->getNumJacks(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)I

    .line 443
    .line 444
    .line 445
    move-result v8

    .line 446
    add-int/2addr v8, v3

    .line 447
    move v3, v8

    .line 448
    :cond_f
    :goto_a
    add-int/lit8 v7, v7, 0x1

    .line 449
    .line 450
    goto :goto_9

    .line 451
    :cond_10
    add-int/lit8 v1, v1, 0x1

    .line 452
    .line 453
    goto :goto_8

    .line 454
    :cond_11
    iput v3, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mNumInputs:I

    .line 455
    .line 456
    iput v4, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mNumOutputs:I

    .line 457
    .line 458
    const-string v1, "Created UsbDirectMidiDevice with "

    .line 459
    .line 460
    const-string v5, " inputs and "

    .line 461
    .line 462
    const-string v7, " outputs. isUniversalMidiDevice: "

    .line 463
    .line 464
    invoke-static {v3, v4, v1, v5, v7}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    invoke-static {v6, v1, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 469
    .line 470
    .line 471
    new-array v1, v4, [Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    .line 472
    .line 473
    iput-object v1, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    .line 474
    .line 475
    const/4 v5, 0x0

    .line 476
    :goto_b
    if-ge v5, v4, :cond_12

    .line 477
    .line 478
    iget-object v1, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    .line 479
    .line 480
    new-instance v2, Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    .line 481
    .line 482
    invoke-direct {v2}, Landroid/media/midi/MidiReceiver;-><init>()V

    .line 483
    .line 484
    .line 485
    aput-object v2, v1, v5

    .line 486
    .line 487
    add-int/lit8 v5, v5, 0x1

    .line 488
    .line 489
    goto :goto_b

    .line 490
    :cond_12
    new-instance v1, Lcom/android/server/usb/PowerBoostSetter;

    .line 491
    .line 492
    invoke-direct {v1}, Lcom/android/server/usb/PowerBoostSetter;-><init>()V

    .line 493
    .line 494
    .line 495
    iput-object v1, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mPowerBoostSetter:Lcom/android/server/usb/PowerBoostSetter;

    .line 496
    .line 497
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;ZLjava/lang/String;)Lcom/android/server/usb/UsbDirectMidiDevice;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/usb/UsbDirectMidiDevice;

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    move-object/from16 v3, p2

    .line 8
    .line 9
    move/from16 v4, p3

    .line 10
    .line 11
    move-object/from16 v5, p4

    .line 12
    .line 13
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/usb/UsbDirectMidiDevice;-><init>(Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const-class v2, Landroid/media/midi/MidiManager;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    move-object v2, v0

    .line 25
    check-cast v2, Landroid/media/midi/MidiManager;

    .line 26
    .line 27
    const-string v11, "UsbDirectMidiDevice"

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    const-string v0, "No MidiManager in UsbDirectMidiDevice.register()"

    .line 32
    .line 33
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    goto/16 :goto_d

    .line 37
    .line 38
    :cond_0
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    if-eqz v0, :cond_e

    .line 42
    .line 43
    iget-object v0, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    const-class v4, Landroid/hardware/usb/UsbManager;

    .line 46
    .line 47
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    :goto_0
    iget-object v6, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-ge v5, v6, :cond_d

    .line 61
    .line 62
    iget-object v6, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    check-cast v6, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 69
    .line 70
    const/4 v7, 0x0

    .line 71
    const/4 v8, 0x0

    .line 72
    const/4 v9, 0x0

    .line 73
    :goto_1
    iget-byte v10, v6, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mNumEndpoints:B

    .line 74
    .line 75
    if-ge v7, v10, :cond_4

    .line 76
    .line 77
    if-eqz v8, :cond_1

    .line 78
    .line 79
    if-nez v9, :cond_4

    .line 80
    .line 81
    :cond_1
    invoke-virtual {v6, v7}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getEndpointDescriptor(I)Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    if-eqz v10, :cond_3

    .line 86
    .line 87
    invoke-virtual {v10}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getDirection()I

    .line 88
    .line 89
    .line 90
    move-result v10

    .line 91
    if-nez v10, :cond_2

    .line 92
    .line 93
    move v9, v3

    .line 94
    goto :goto_2

    .line 95
    :cond_2
    move v8, v3

    .line 96
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    if-eqz v8, :cond_5

    .line 100
    .line 101
    if-eqz v9, :cond_5

    .line 102
    .line 103
    iget-object v7, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    .line 104
    .line 105
    invoke-virtual {v0, v7}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    iget-object v8, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 110
    .line 111
    invoke-virtual {v6, v8}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbInterface;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    invoke-virtual {v1, v8, v7}, Lcom/android/server/usb/UsbDirectMidiDevice;->updateUsbInterface(Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbDeviceConnection;)Z

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    if-nez v8, :cond_6

    .line 120
    .line 121
    :cond_5
    const/4 v4, 0x0

    .line 122
    goto/16 :goto_6

    .line 123
    .line 124
    :cond_6
    iget-object v0, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiBlockParser:Lcom/android/server/usb/descriptors/UsbMidiBlockParser;

    .line 125
    .line 126
    iget v5, v6, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mInterfaceNumber:I

    .line 127
    .line 128
    iget-byte v6, v6, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mAlternateSetting:B

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    const-string v8, "UsbMidiBlockParser"

    .line 134
    .line 135
    const-string v9, "first transfer failed: "

    .line 136
    .line 137
    const-string/jumbo v10, "second transfer failed: "

    .line 138
    .line 139
    .line 140
    const-string v15, "MIDI protocol: "

    .line 141
    .line 142
    const-string v14, "Parsed a non-positive block terminal size: "

    .line 143
    .line 144
    const-string v13, "Incorrect descriptor subtype: "

    .line 145
    .line 146
    const-string v12, "Incorrect descriptor type: "

    .line 147
    .line 148
    const/4 v4, 0x5

    .line 149
    new-array v4, v4, [B

    .line 150
    .line 151
    add-int/lit16 v6, v6, 0x2600

    .line 152
    .line 153
    const/16 v18, 0x5

    .line 154
    .line 155
    const/16 v19, 0x7d0

    .line 156
    .line 157
    const/16 v16, 0x81

    .line 158
    .line 159
    const/16 v17, 0x6

    .line 160
    .line 161
    move-object/from16 v20, v12

    .line 162
    .line 163
    move-object v12, v7

    .line 164
    move-object/from16 v21, v13

    .line 165
    .line 166
    move/from16 v13, v16

    .line 167
    .line 168
    move-object/from16 v22, v14

    .line 169
    .line 170
    move/from16 v14, v17

    .line 171
    .line 172
    move-object/from16 v23, v15

    .line 173
    .line 174
    move v15, v6

    .line 175
    move/from16 v16, v5

    .line 176
    .line 177
    move-object/from16 v17, v4

    .line 178
    .line 179
    :try_start_0
    invoke-virtual/range {v12 .. v19}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 180
    .line 181
    .line 182
    move-result v12

    .line 183
    if-lez v12, :cond_c

    .line 184
    .line 185
    aget-byte v9, v4, v3

    .line 186
    .line 187
    const/16 v12, 0x26

    .line 188
    .line 189
    if-eq v9, v12, :cond_7

    .line 190
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    move-object/from16 v5, v20

    .line 194
    .line 195
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    aget-byte v4, v4, v3

    .line 199
    .line 200
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    :goto_3
    move v0, v3

    .line 211
    goto/16 :goto_5

    .line 212
    .line 213
    :catch_0
    move-exception v0

    .line 214
    goto/16 :goto_4

    .line 215
    .line 216
    :cond_7
    const/4 v9, 0x2

    .line 217
    aget-byte v12, v4, v9

    .line 218
    .line 219
    if-eq v12, v3, :cond_8

    .line 220
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    move-object/from16 v5, v21

    .line 224
    .line 225
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    aget-byte v4, v4, v9

    .line 229
    .line 230
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    goto :goto_3

    .line 241
    :cond_8
    const/4 v9, 0x3

    .line 242
    aget-byte v9, v4, v9

    .line 243
    .line 244
    and-int/lit16 v9, v9, 0xff

    .line 245
    .line 246
    const/4 v12, 0x4

    .line 247
    aget-byte v4, v4, v12

    .line 248
    .line 249
    and-int/lit16 v4, v4, 0xff

    .line 250
    .line 251
    shl-int/lit8 v4, v4, 0x8

    .line 252
    .line 253
    add-int/2addr v4, v9

    .line 254
    if-gtz v4, :cond_9

    .line 255
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    move-object/from16 v5, v22

    .line 259
    .line 260
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_9
    new-array v9, v4, [B

    .line 275
    .line 276
    const/16 v19, 0x7d0

    .line 277
    .line 278
    const/16 v13, 0x81

    .line 279
    .line 280
    const/4 v14, 0x6

    .line 281
    move-object v12, v7

    .line 282
    move v15, v6

    .line 283
    move/from16 v16, v5

    .line 284
    .line 285
    move-object/from16 v17, v9

    .line 286
    .line 287
    move/from16 v18, v4

    .line 288
    .line 289
    invoke-virtual/range {v12 .. v19}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 290
    .line 291
    .line 292
    move-result v4

    .line 293
    if-lez v4, :cond_b

    .line 294
    .line 295
    new-instance v4, Lcom/android/server/usb/descriptors/ByteStream;

    .line 296
    .line 297
    invoke-direct {v4, v9}, Lcom/android/server/usb/descriptors/ByteStream;-><init>([B)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0, v4}, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)V

    .line 301
    .line 302
    .line 303
    iget-object v4, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mGroupTerminalBlocks:Ljava/util/ArrayList;

    .line 304
    .line 305
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    if-eqz v4, :cond_a

    .line 310
    .line 311
    const-string v0, "Group Terminal Blocks failed parsing: 1"

    .line 312
    .line 313
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .line 315
    .line 316
    goto :goto_3

    .line 317
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    move-object/from16 v5, v23

    .line 320
    .line 321
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    iget-object v5, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mGroupTerminalBlocks:Ljava/util/ArrayList;

    .line 325
    .line 326
    const/4 v6, 0x0

    .line 327
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v5

    .line 331
    check-cast v5, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;

    .line 332
    .line 333
    iget v5, v5, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mMidiProtocol:I

    .line 334
    .line 335
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    .line 344
    .line 345
    iget-object v0, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mGroupTerminalBlocks:Ljava/util/ArrayList;

    .line 346
    .line 347
    const/4 v4, 0x0

    .line 348
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    check-cast v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;

    .line 353
    .line 354
    iget v0, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mMidiProtocol:I

    .line 355
    .line 356
    goto :goto_5

    .line 357
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .line 371
    .line 372
    goto/16 :goto_3

    .line 373
    .line 374
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    .line 388
    .line 389
    goto/16 :goto_3

    .line 390
    .line 391
    :goto_4
    const-string v4, "Can not communicate with USB device"

    .line 392
    .line 393
    invoke-static {v8, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 394
    .line 395
    .line 396
    goto/16 :goto_3

    .line 397
    .line 398
    :goto_5
    invoke-virtual {v7}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 399
    .line 400
    .line 401
    goto :goto_7

    .line 402
    :goto_6
    add-int/lit8 v5, v5, 0x1

    .line 403
    .line 404
    goto/16 :goto_0

    .line 405
    .line 406
    :cond_d
    const-string v0, "Cannot find interface with both input and output endpoints"

    .line 407
    .line 408
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .line 410
    .line 411
    move v0, v3

    .line 412
    :goto_7
    iput v0, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mDefaultMidiProtocol:I

    .line 413
    .line 414
    goto :goto_8

    .line 415
    :cond_e
    const/4 v0, -0x1

    .line 416
    iput v0, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mDefaultMidiProtocol:I

    .line 417
    .line 418
    :goto_8
    new-instance v7, Landroid/os/Bundle;

    .line 419
    .line 420
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 421
    .line 422
    .line 423
    iget-object v0, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    .line 424
    .line 425
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    iget-object v4, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    .line 430
    .line 431
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v4

    .line 435
    iget-object v5, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    .line 436
    .line 437
    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getVersion()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v5

    .line 441
    if-eqz v0, :cond_12

    .line 442
    .line 443
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 444
    .line 445
    .line 446
    move-result v6

    .line 447
    if-eqz v6, :cond_f

    .line 448
    .line 449
    goto :goto_a

    .line 450
    :cond_f
    if-eqz v4, :cond_11

    .line 451
    .line 452
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 453
    .line 454
    .line 455
    move-result v6

    .line 456
    if-eqz v6, :cond_10

    .line 457
    .line 458
    goto :goto_9

    .line 459
    :cond_10
    const-string v6, " "

    .line 460
    .line 461
    invoke-static {v0, v6, v4}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v6

    .line 465
    goto :goto_b

    .line 466
    :cond_11
    :goto_9
    move-object v6, v0

    .line 467
    goto :goto_b

    .line 468
    :cond_12
    :goto_a
    move-object v6, v4

    .line 469
    :goto_b
    const-string v8, "#"

    .line 470
    .line 471
    invoke-static {v6, v8}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    move-result-object v6

    .line 475
    iget-object v8, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mUniqueUsbDeviceIdentifier:Ljava/lang/String;

    .line 476
    .line 477
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v6

    .line 484
    iget-boolean v8, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    .line 485
    .line 486
    if-eqz v8, :cond_13

    .line 487
    .line 488
    const-string v8, " MIDI 2.0"

    .line 489
    .line 490
    invoke-static {v6, v8}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v6

    .line 494
    goto :goto_c

    .line 495
    :cond_13
    const-string v8, " MIDI 1.0"

    .line 496
    .line 497
    invoke-static {v6, v8}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v6

    .line 501
    :goto_c
    iput-object v6, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mName:Ljava/lang/String;

    .line 502
    .line 503
    const-string/jumbo v8, "name"

    .line 504
    .line 505
    .line 506
    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    const-string/jumbo v6, "manufacturer"

    .line 510
    .line 511
    .line 512
    invoke-virtual {v7, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    const-string/jumbo v0, "product"

    .line 516
    .line 517
    .line 518
    invoke-virtual {v7, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    const-string/jumbo v0, "version"

    .line 522
    .line 523
    .line 524
    invoke-virtual {v7, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    iget-object v0, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    .line 528
    .line 529
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    const-string/jumbo v4, "serial_number"

    .line 534
    .line 535
    .line 536
    invoke-virtual {v7, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    const-string/jumbo v0, "usb_device"

    .line 540
    .line 541
    .line 542
    iget-object v4, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    .line 543
    .line 544
    invoke-virtual {v7, v0, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 545
    .line 546
    .line 547
    iput-boolean v3, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mServerAvailable:Z

    .line 548
    .line 549
    iget-object v3, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    .line 550
    .line 551
    iget v4, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mNumInputs:I

    .line 552
    .line 553
    iget v9, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mDefaultMidiProtocol:I

    .line 554
    .line 555
    iget-object v10, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mCallback:Lcom/android/server/usb/UsbDirectMidiDevice$1;

    .line 556
    .line 557
    const/4 v8, 0x1

    .line 558
    const/4 v5, 0x0

    .line 559
    const/4 v6, 0x0

    .line 560
    invoke-virtual/range {v2 .. v10}, Landroid/media/midi/MidiManager;->createDeviceServer([Landroid/media/midi/MidiReceiver;I[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;IILandroid/media/midi/MidiDeviceServer$Callback;)Landroid/media/midi/MidiDeviceServer;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    iput-object v0, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    .line 565
    .line 566
    if-nez v0, :cond_14

    .line 567
    .line 568
    :goto_d
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 569
    .line 570
    .line 571
    const-string v0, "createDeviceServer failed"

    .line 572
    .line 573
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    .line 575
    .line 576
    const/4 v0, 0x0

    .line 577
    return-object v0

    .line 578
    :cond_14
    return-object v1
.end method

.method public static getNumJacks(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mClassSpecificEndpointDescriptor:Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    instance-of v0, p0, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p0, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;

    .line 10
    .line 11
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;->mNumJacks:B

    .line 12
    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x1

    .line 15
    return p0
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsOpen:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDirectMidiDevice;->closeLocked()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mServerAvailable:Z

    .line 16
    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-object p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void

    .line 26
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw p0
.end method

.method public final closeLocked()V
    .locals 5

    .line 1
    const-string v0, "closeLocked()"

    .line 2
    .line 3
    const-string v1, "UsbDirectMidiDevice"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mThreads:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/Thread;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mThreads:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Ljava/lang/Thread;

    .line 49
    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    const-wide/16 v3, 0xc8

    .line 53
    .line 54
    :try_start_0
    invoke-virtual {v2, v3, v4}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catch_0
    const-string/jumbo v0, "thread join interrupted"

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_3
    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mThreads:Ljava/util/ArrayList;

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    move v2, v1

    .line 69
    :goto_2
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    .line 70
    .line 71
    array-length v4, v3

    .line 72
    if-ge v2, v4, :cond_4

    .line 73
    .line 74
    aget-object v3, v3, v2

    .line 75
    .line 76
    iput-object v0, v3, Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;->mReceiver:Landroid/media/midi/MidiReceiver;

    .line 77
    .line 78
    add-int/lit8 v2, v2, 0x1

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    move v2, v1

    .line 82
    :goto_3
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiEventMultiSchedulers:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-ge v2, v3, :cond_6

    .line 89
    .line 90
    move v3, v1

    .line 91
    :goto_4
    iget-object v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiEventMultiSchedulers:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    check-cast v4, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-ge v3, v4, :cond_5

    .line 104
    .line 105
    iget-object v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiEventMultiSchedulers:Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    check-cast v4, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    check-cast v4, Lcom/android/internal/midi/MidiEventMultiScheduler;

    .line 118
    .line 119
    invoke-virtual {v4}, Lcom/android/internal/midi/MidiEventMultiScheduler;->close()V

    .line 120
    .line 121
    .line 122
    add-int/lit8 v3, v3, 0x1

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_6
    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiEventMultiSchedulers:Ljava/util/ArrayList;

    .line 129
    .line 130
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDeviceConnections:Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-eqz v3, :cond_7

    .line 141
    .line 142
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    check-cast v3, Landroid/hardware/usb/UsbDeviceConnection;

    .line 147
    .line 148
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 149
    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_7
    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDeviceConnections:Ljava/util/ArrayList;

    .line 153
    .line 154
    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpoints:Ljava/util/ArrayList;

    .line 155
    .line 156
    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpoints:Ljava/util/ArrayList;

    .line 157
    .line 158
    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpointCableCounts:Ljava/util/ArrayList;

    .line 159
    .line 160
    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpointCableCounts:Ljava/util/ArrayList;

    .line 161
    .line 162
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsOpen:Z

    .line 163
    .line 164
    return-void
.end method

.method public final dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string/jumbo v2, "midi_devices"

    .line 6
    .line 7
    .line 8
    const-wide v3, 0x20b00000005L

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v5

    .line 17
    iget v2, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mNumInputs:I

    .line 18
    .line 19
    const-string/jumbo v7, "num_inputs"

    .line 20
    .line 21
    .line 22
    const-wide v8, 0x10500000001L

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v7, v8, v9, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 28
    .line 29
    .line 30
    iget v2, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mNumOutputs:I

    .line 31
    .line 32
    const-string/jumbo v7, "num_outputs"

    .line 33
    .line 34
    .line 35
    const-wide v10, 0x10500000002L

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v7, v10, v11, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 41
    .line 42
    .line 43
    iget-boolean v2, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    .line 44
    .line 45
    const-string v7, "is_universal"

    .line 46
    .line 47
    const-wide v12, 0x10800000003L

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v7, v12, v13, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 53
    .line 54
    .line 55
    iget-object v2, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mName:Ljava/lang/String;

    .line 56
    .line 57
    const-string/jumbo v7, "name"

    .line 58
    .line 59
    .line 60
    const-wide v12, 0x10900000004L

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v7, v12, v13, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-boolean v2, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    .line 69
    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    iget-object v0, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiBlockParser:Lcom/android/server/usb/descriptors/UsbMidiBlockParser;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    const-string v2, "block_parser"

    .line 78
    .line 79
    const-wide v12, 0x10b00000005L

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2, v12, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    .line 85
    .line 86
    .line 87
    move-result-wide v12

    .line 88
    iget v2, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mHeaderLength:I

    .line 89
    .line 90
    const-string v7, "length"

    .line 91
    .line 92
    invoke-virtual {v1, v7, v8, v9, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 93
    .line 94
    .line 95
    iget v2, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mHeaderDescriptorType:I

    .line 96
    .line 97
    const-string v14, "descriptor_type"

    .line 98
    .line 99
    invoke-virtual {v1, v14, v10, v11, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 100
    .line 101
    .line 102
    iget v2, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mHeaderDescriptorSubtype:I

    .line 103
    .line 104
    const-string v15, "descriptor_subtype"

    .line 105
    .line 106
    const-wide v10, 0x10500000003L

    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v15, v10, v11, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 112
    .line 113
    .line 114
    iget v2, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mTotalLength:I

    .line 115
    .line 116
    const-string/jumbo v10, "total_length"

    .line 117
    .line 118
    .line 119
    const-wide v8, 0x10500000004L

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v10, v8, v9, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 125
    .line 126
    .line 127
    iget-object v0, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mGroupTerminalBlocks:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_0

    .line 138
    .line 139
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    check-cast v2, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;

    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    const-string v10, "block"

    .line 149
    .line 150
    invoke-virtual {v1, v10, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    .line 151
    .line 152
    .line 153
    move-result-wide v10

    .line 154
    iget v3, v2, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mLength:I

    .line 155
    .line 156
    const-wide v8, 0x10500000001L

    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v7, v8, v9, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 162
    .line 163
    .line 164
    iget v3, v2, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mDescriptorType:I

    .line 165
    .line 166
    const-wide v8, 0x10500000002L

    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v14, v8, v9, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 172
    .line 173
    .line 174
    iget v3, v2, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mDescriptorSubtype:I

    .line 175
    .line 176
    const-wide v8, 0x10500000003L

    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v15, v8, v9, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 182
    .line 183
    .line 184
    iget v3, v2, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mGroupBlockId:I

    .line 185
    .line 186
    const-string v4, "group_block_id"

    .line 187
    .line 188
    const-wide v8, 0x10500000004L

    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v4, v8, v9, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 194
    .line 195
    .line 196
    iget v3, v2, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mGroupTerminalBlockType:I

    .line 197
    .line 198
    const-string v4, "group_terminal_block_type"

    .line 199
    .line 200
    const-wide v8, 0x10500000005L

    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v4, v8, v9, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 206
    .line 207
    .line 208
    iget v3, v2, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mGroupTerminal:I

    .line 209
    .line 210
    const-string v4, "group_terminal"

    .line 211
    .line 212
    const-wide v8, 0x10500000006L

    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v4, v8, v9, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 218
    .line 219
    .line 220
    iget v3, v2, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mNumGroupTerminals:I

    .line 221
    .line 222
    const-string/jumbo v4, "num_group_terminals"

    .line 223
    .line 224
    .line 225
    const-wide v8, 0x10500000007L

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, v4, v8, v9, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 231
    .line 232
    .line 233
    iget v3, v2, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mBlockItem:I

    .line 234
    .line 235
    const-string v4, "block_item"

    .line 236
    .line 237
    const-wide v8, 0x10500000008L

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v4, v8, v9, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 243
    .line 244
    .line 245
    iget v3, v2, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mMidiProtocol:I

    .line 246
    .line 247
    const-string/jumbo v4, "midi_protocol"

    .line 248
    .line 249
    .line 250
    const-wide v8, 0x10500000009L

    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v4, v8, v9, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 256
    .line 257
    .line 258
    iget v3, v2, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mMaxInputBandwidth:I

    .line 259
    .line 260
    const-string/jumbo v4, "max_input_bandwidth"

    .line 261
    .line 262
    .line 263
    const-wide v8, 0x1050000000aL

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    invoke-virtual {v1, v4, v8, v9, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 269
    .line 270
    .line 271
    iget v2, v2, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mMaxOutputBandwidth:I

    .line 272
    .line 273
    const-string/jumbo v3, "max_output_bandwidth"

    .line 274
    .line 275
    .line 276
    const-wide v8, 0x1050000000bL

    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, v3, v8, v9, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1, v10, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 285
    .line 286
    .line 287
    const-wide v3, 0x20b00000005L

    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    const-wide v8, 0x10500000004L

    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    goto/16 :goto_0

    .line 298
    .line 299
    :cond_0
    invoke-virtual {v1, v12, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 300
    .line 301
    .line 302
    :cond_1
    invoke-virtual {v1, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 303
    .line 304
    .line 305
    return-void
.end method

.method public final updateUsbInterface(Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbDeviceConnection;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "UsbDirectMidiDevice"

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    const-string p0, "UsbDeviceConnection is null"

    .line 7
    .line 8
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v2, 0x1

    .line 13
    invoke-virtual {p2, p1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    const-string p0, "Can\'t claim interface"

    .line 20
    .line 21
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return v0

    .line 25
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mShouldCallSetInterface:Z

    .line 26
    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Landroid/hardware/usb/UsbDeviceConnection;->setInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_3

    .line 34
    .line 35
    const-string p0, "Can\'t set interface"

    .line 36
    .line 37
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const-string/jumbo p0, "no alternate interface"

    .line 42
    .line 43
    .line 44
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :cond_3
    :goto_0
    return v2
.end method
