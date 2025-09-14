.class public final Lcom/android/server/usb/UsbDirectMidiDevice$2;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

.field public final synthetic val$cableCountFinal:I

.field public final synthetic val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

.field public final synthetic val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

.field public final synthetic val$outputReceivers:[Landroid/media/midi/MidiReceiver;

.field public final synthetic val$portStartFinal:I


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDirectMidiDevice;Ljava/lang/String;ILandroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;[Landroid/media/midi/MidiReceiver;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    .line 2
    .line 3
    iput p3, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$cableCountFinal:I

    .line 4
    .line 5
    iput-object p4, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    .line 10
    .line 11
    iput p7, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$portStartFinal:I

    .line 12
    .line 13
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "UsbDirectMidiDevice"

    .line 4
    .line 5
    new-instance v2, Landroid/hardware/usb/UsbRequest;

    .line 6
    .line 7
    invoke-direct {v2}, Landroid/hardware/usb/UsbRequest;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lcom/android/server/usb/UsbMidiPacketConverter;

    .line 11
    .line 12
    invoke-direct {v3}, Lcom/android/server/usb/UsbMidiPacketConverter;-><init>()V

    .line 13
    .line 14
    .line 15
    iget v4, v0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$cableCountFinal:I

    .line 16
    .line 17
    new-instance v5, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;

    .line 18
    .line 19
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput v4, v5, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;->mNumJacks:I

    .line 23
    .line 24
    new-array v6, v4, [Ljava/io/ByteArrayOutputStream;

    .line 25
    .line 26
    iput-object v6, v5, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;->mDecodedByteArrays:[Ljava/io/ByteArrayOutputStream;

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    :goto_0
    if-ge v7, v4, :cond_0

    .line 30
    .line 31
    iget-object v8, v5, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;->mDecodedByteArrays:[Ljava/io/ByteArrayOutputStream;

    .line 32
    .line 33
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    .line 34
    .line 35
    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 36
    .line 37
    .line 38
    aput-object v9, v8, v7

    .line 39
    .line 40
    add-int/lit8 v7, v7, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iput-object v5, v3, Lcom/android/server/usb/UsbMidiPacketConverter;->mUsbMidiDecoder:Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;

    .line 44
    .line 45
    :try_start_0
    iget-object v4, v0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

    .line 46
    .line 47
    iget-object v5, v0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    .line 48
    .line 49
    invoke-virtual {v2, v4, v5}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    .line 50
    .line 51
    .line 52
    iget-object v4, v0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    .line 53
    .line 54
    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    new-array v4, v4, [B

    .line 59
    .line 60
    const/4 v5, 0x1

    .line 61
    move v7, v5

    .line 62
    :goto_1
    if-eqz v7, :cond_f

    .line 63
    .line 64
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 65
    .line 66
    .line 67
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-eqz v8, :cond_1

    .line 72
    .line 73
    const-string v0, "input thread interrupted"

    .line 74
    .line 75
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    goto/16 :goto_8

    .line 79
    .line 80
    :catchall_0
    move-exception v0

    .line 81
    goto/16 :goto_b

    .line 82
    .line 83
    :catch_0
    move-exception v0

    .line 84
    goto/16 :goto_9

    .line 85
    .line 86
    :cond_1
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    invoke-virtual {v2, v8}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;)Z

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    if-nez v9, :cond_2

    .line 95
    .line 96
    const-string v0, "Cannot queue request"

    .line 97
    .line 98
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    goto/16 :goto_8

    .line 102
    .line 103
    :cond_2
    iget-object v9, v0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

    .line 104
    .line 105
    invoke-virtual {v9}, Landroid/hardware/usb/UsbDeviceConnection;->requestWait()Landroid/hardware/usb/UsbRequest;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    if-nez v9, :cond_3

    .line 110
    .line 111
    const-string v0, "Response is null"

    .line 112
    .line 113
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    goto/16 :goto_8

    .line 117
    .line 118
    :cond_3
    if-eq v2, v9, :cond_4

    .line 119
    .line 120
    const-string v8, "Skipping response"

    .line 121
    .line 122
    invoke-static {v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 127
    .line 128
    .line 129
    move-result-wide v15

    .line 130
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    if-lez v8, :cond_e

    .line 135
    .line 136
    const-string v9, "Input before conversion "

    .line 137
    .line 138
    invoke-static {v8, v9, v4}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$smlogByteArray(ILjava/lang/String;[B)V

    .line 139
    .line 140
    .line 141
    iget-object v9, v0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    .line 142
    .line 143
    iget-boolean v9, v9, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    .line 144
    .line 145
    if-nez v9, :cond_5

    .line 146
    .line 147
    invoke-virtual {v3, v8, v4}, Lcom/android/server/usb/UsbMidiPacketConverter;->decodeMidiPackets(I[B)V

    .line 148
    .line 149
    .line 150
    :cond_5
    const/4 v13, 0x0

    .line 151
    :goto_2
    iget v9, v0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$cableCountFinal:I

    .line 152
    .line 153
    if-ge v13, v9, :cond_e

    .line 154
    .line 155
    iget-object v9, v0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    .line 156
    .line 157
    iget-boolean v10, v9, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    .line 158
    .line 159
    if-eqz v10, :cond_6

    .line 160
    .line 161
    invoke-static {v9, v4, v8}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$mswapEndiannessPerWord(Lcom/android/server/usb/UsbDirectMidiDevice;[BI)[B

    .line 162
    .line 163
    .line 164
    move-result-object v9

    .line 165
    :goto_3
    move-object v14, v9

    .line 166
    goto :goto_4

    .line 167
    :cond_6
    invoke-virtual {v3, v13}, Lcom/android/server/usb/UsbMidiPacketConverter;->pullDecodedMidiPackets(I)[B

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    goto :goto_3

    .line 172
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string v10, "Input "

    .line 178
    .line 179
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v10, " after conversion "

    .line 186
    .line 187
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v9

    .line 194
    array-length v10, v14

    .line 195
    invoke-static {v10, v9, v14}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$smlogByteArray(ILjava/lang/String;[B)V

    .line 196
    .line 197
    .line 198
    array-length v9, v14

    .line 199
    if-nez v9, :cond_8

    .line 200
    .line 201
    move/from16 v17, v13

    .line 202
    .line 203
    :cond_7
    const/4 v9, 0x0

    .line 204
    goto :goto_6

    .line 205
    :cond_8
    iget-object v9, v0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    .line 206
    .line 207
    if-eqz v9, :cond_9

    .line 208
    .line 209
    iget v10, v0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$portStartFinal:I

    .line 210
    .line 211
    add-int/2addr v10, v13

    .line 212
    aget-object v9, v9, v10

    .line 213
    .line 214
    if-nez v9, :cond_a

    .line 215
    .line 216
    :cond_9
    const/4 v9, 0x0

    .line 217
    goto :goto_7

    .line 218
    :cond_a
    array-length v12, v14

    .line 219
    const/4 v11, 0x0

    .line 220
    move-object v10, v14

    .line 221
    move/from16 v17, v13

    .line 222
    .line 223
    move-object v6, v14

    .line 224
    move-wide v13, v15

    .line 225
    invoke-virtual/range {v9 .. v14}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 226
    .line 227
    .line 228
    iget-object v9, v0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    .line 229
    .line 230
    iget-object v10, v9, Lcom/android/server/usb/UsbDirectMidiDevice;->mPowerBoostSetter:Lcom/android/server/usb/PowerBoostSetter;

    .line 231
    .line 232
    if-eqz v10, :cond_7

    .line 233
    .line 234
    array-length v11, v6

    .line 235
    if-le v11, v5, :cond_7

    .line 236
    .line 237
    iget-boolean v9, v9, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    .line 238
    .line 239
    if-eqz v9, :cond_b

    .line 240
    .line 241
    const/4 v9, 0x0

    .line 242
    aget-byte v6, v6, v9

    .line 243
    .line 244
    const/4 v11, 0x4

    .line 245
    shr-int/2addr v6, v11

    .line 246
    and-int/lit8 v6, v6, 0xf

    .line 247
    .line 248
    int-to-byte v6, v6

    .line 249
    const/4 v12, 0x2

    .line 250
    if-eq v6, v12, :cond_c

    .line 251
    .line 252
    if-ne v6, v11, :cond_d

    .line 253
    .line 254
    goto :goto_5

    .line 255
    :cond_b
    const/4 v9, 0x0

    .line 256
    :cond_c
    :goto_5
    invoke-virtual {v10}, Lcom/android/server/usb/PowerBoostSetter;->boostPower()V

    .line 257
    .line 258
    .line 259
    :cond_d
    :goto_6
    add-int/lit8 v13, v17, 0x1

    .line 260
    .line 261
    goto :goto_2

    .line 262
    :goto_7
    const-string/jumbo v6, "outputReceivers is null"

    .line 263
    .line 264
    .line 265
    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    .line 267
    .line 268
    move v7, v9

    .line 269
    goto/16 :goto_1

    .line 270
    .line 271
    :cond_e
    const/4 v9, 0x0

    .line 272
    goto/16 :goto_1

    .line 273
    .line 274
    :cond_f
    :goto_8
    invoke-virtual {v2}, Landroid/hardware/usb/UsbRequest;->close()V

    .line 275
    .line 276
    .line 277
    goto :goto_a

    .line 278
    :goto_9
    :try_start_1
    const-string v3, "input thread: "

    .line 279
    .line 280
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    .line 282
    .line 283
    goto :goto_8

    .line 284
    :catch_1
    const-string/jumbo v0, "reader thread exiting"

    .line 285
    .line 286
    .line 287
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    .line 289
    .line 290
    goto :goto_8

    .line 291
    :goto_a
    const-string v0, "input thread exit"

    .line 292
    .line 293
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .line 295
    .line 296
    return-void

    .line 297
    :goto_b
    invoke-virtual {v2}, Landroid/hardware/usb/UsbRequest;->close()V

    .line 298
    .line 299
    .line 300
    throw v0
.end method
