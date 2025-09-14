.class public final Lcom/android/server/usb/UsbDirectMidiDevice$3;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

.field public final synthetic val$cableCountFinal:I

.field public final synthetic val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

.field public final synthetic val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

.field public final synthetic val$multiSchedulerFinal:Lcom/android/internal/midi/MidiEventMultiScheduler;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDirectMidiDevice;Ljava/lang/String;ILcom/android/internal/midi/MidiEventMultiScheduler;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    .line 2
    .line 3
    iput p3, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$cableCountFinal:I

    .line 4
    .line 5
    iput-object p4, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$multiSchedulerFinal:Lcom/android/internal/midi/MidiEventMultiScheduler;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

    .line 10
    .line 11
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string/jumbo v1, "output thread: "

    .line 4
    .line 5
    .line 6
    const-string v2, "UsbDirectMidiDevice"

    .line 7
    .line 8
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 9
    .line 10
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v4, Lcom/android/server/usb/UsbMidiPacketConverter;

    .line 14
    .line 15
    invoke-direct {v4}, Lcom/android/server/usb/UsbMidiPacketConverter;-><init>()V

    .line 16
    .line 17
    .line 18
    iget v5, v0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$cableCountFinal:I

    .line 19
    .line 20
    invoke-virtual {v4, v5}, Lcom/android/server/usb/UsbMidiPacketConverter;->createEncoders(I)V

    .line 21
    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    move v6, v5

    .line 25
    :goto_0
    if-nez v6, :cond_a

    .line 26
    .line 27
    iget-object v7, v0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$multiSchedulerFinal:Lcom/android/internal/midi/MidiEventMultiScheduler;

    .line 28
    .line 29
    invoke-virtual {v7}, Lcom/android/internal/midi/MidiEventMultiScheduler;->waitNextEvent()Z

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    if-nez v7, :cond_0

    .line 34
    .line 35
    const-string/jumbo v0, "output thread closed"

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    goto/16 :goto_a

    .line 42
    .line 43
    :catch_0
    move-exception v0

    .line 44
    goto/16 :goto_8

    .line 45
    .line 46
    :catch_1
    move-exception v0

    .line 47
    goto/16 :goto_9

    .line 48
    .line 49
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 50
    .line 51
    .line 52
    move-result-wide v7

    .line 53
    move v9, v5

    .line 54
    :goto_1
    iget v10, v0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$cableCountFinal:I

    .line 55
    .line 56
    if-ge v9, v10, :cond_3

    .line 57
    .line 58
    iget-object v10, v0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$multiSchedulerFinal:Lcom/android/internal/midi/MidiEventMultiScheduler;

    .line 59
    .line 60
    invoke-virtual {v10, v9}, Lcom/android/internal/midi/MidiEventMultiScheduler;->getEventScheduler(I)Lcom/android/internal/midi/MidiEventScheduler;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    invoke-virtual {v10, v7, v8}, Lcom/android/internal/midi/MidiEventScheduler;->getNextEvent(J)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    .line 65
    .line 66
    .line 67
    move-result-object v11

    .line 68
    check-cast v11, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    .line 69
    .line 70
    :goto_2
    if-eqz v11, :cond_2

    .line 71
    .line 72
    const-string v12, "Output before conversion "

    .line 73
    .line 74
    iget-object v13, v11, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    .line 75
    .line 76
    iget v14, v11, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    .line 77
    .line 78
    invoke-static {v14, v12, v13}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$smlogByteArray(ILjava/lang/String;[B)V

    .line 79
    .line 80
    .line 81
    iget-object v12, v0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    .line 82
    .line 83
    iget-boolean v13, v12, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    .line 84
    .line 85
    if-eqz v13, :cond_1

    .line 86
    .line 87
    iget-object v13, v11, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    .line 88
    .line 89
    iget v14, v11, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    .line 90
    .line 91
    invoke-static {v12, v13, v14}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$mswapEndiannessPerWord(Lcom/android/server/usb/UsbDirectMidiDevice;[BI)[B

    .line 92
    .line 93
    .line 94
    move-result-object v12

    .line 95
    array-length v13, v12

    .line 96
    invoke-virtual {v3, v12, v5, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_1
    iget-object v12, v11, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    .line 101
    .line 102
    iget v13, v11, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    .line 103
    .line 104
    invoke-virtual {v4, v13, v9, v12}, Lcom/android/server/usb/UsbMidiPacketConverter;->encodeMidiPackets(II[B)V

    .line 105
    .line 106
    .line 107
    :goto_3
    invoke-virtual {v10, v11}, Lcom/android/internal/midi/MidiEventScheduler;->addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v10, v7, v8}, Lcom/android/internal/midi/MidiEventScheduler;->getNextEvent(J)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    .line 111
    .line 112
    .line 113
    move-result-object v11

    .line 114
    check-cast v11, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 121
    .line 122
    .line 123
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    if-eqz v7, :cond_4

    .line 128
    .line 129
    const-string/jumbo v0, "output thread interrupted"

    .line 130
    .line 131
    .line 132
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    goto/16 :goto_a

    .line 136
    .line 137
    :cond_4
    iget-object v7, v0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    .line 138
    .line 139
    iget-boolean v7, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    .line 140
    .line 141
    if-eqz v7, :cond_5

    .line 142
    .line 143
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 148
    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_5
    iget-object v7, v4, Lcom/android/server/usb/UsbMidiPacketConverter;->mEncoderOutputStream:Ljava/io/ByteArrayOutputStream;

    .line 152
    .line 153
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    iget-object v8, v4, Lcom/android/server/usb/UsbMidiPacketConverter;->mEncoderOutputStream:Ljava/io/ByteArrayOutputStream;

    .line 158
    .line 159
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 160
    .line 161
    .line 162
    :goto_4
    const-string v8, "Output after conversion "

    .line 163
    .line 164
    array-length v9, v7

    .line 165
    invoke-static {v9, v8, v7}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$smlogByteArray(ILjava/lang/String;[B)V

    .line 166
    .line 167
    .line 168
    move v8, v5

    .line 169
    :goto_5
    array-length v9, v7

    .line 170
    if-ge v8, v9, :cond_9

    .line 171
    .line 172
    if-nez v6, :cond_9

    .line 173
    .line 174
    iget-object v9, v0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    .line 175
    .line 176
    invoke-virtual {v9}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    .line 177
    .line 178
    .line 179
    move-result v9

    .line 180
    array-length v10, v7

    .line 181
    sub-int/2addr v10, v8

    .line 182
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 183
    .line 184
    .line 185
    move-result v15

    .line 186
    const/4 v9, -0x1

    .line 187
    move v14, v5

    .line 188
    :goto_6
    if-gez v9, :cond_8

    .line 189
    .line 190
    const/16 v13, 0x14

    .line 191
    .line 192
    if-gt v14, v13, :cond_8

    .line 193
    .line 194
    iget-object v9, v0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

    .line 195
    .line 196
    iget-object v10, v0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    .line 197
    .line 198
    const/16 v16, 0x32

    .line 199
    .line 200
    move-object v11, v7

    .line 201
    move v12, v8

    .line 202
    move v5, v13

    .line 203
    move v13, v15

    .line 204
    move/from16 v17, v14

    .line 205
    .line 206
    move/from16 v14, v16

    .line 207
    .line 208
    invoke-virtual/range {v9 .. v14}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    .line 209
    .line 210
    .line 211
    move-result v9

    .line 212
    add-int/lit8 v14, v17, 0x1

    .line 213
    .line 214
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 215
    .line 216
    .line 217
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 218
    .line 219
    .line 220
    move-result v10

    .line 221
    if-eqz v10, :cond_6

    .line 222
    .line 223
    const-string/jumbo v5, "output thread interrupted after send"

    .line 224
    .line 225
    .line 226
    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    const/4 v5, 0x1

    .line 230
    move v6, v5

    .line 231
    goto :goto_7

    .line 232
    :cond_6
    if-gez v9, :cond_7

    .line 233
    .line 234
    new-instance v10, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    const-string/jumbo v11, "retrying packet. retryCount = "

    .line 240
    .line 241
    .line 242
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v11, " result = "

    .line 249
    .line 250
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v10

    .line 260
    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    if-le v14, v5, :cond_7

    .line 264
    .line 265
    const-string v5, "Skipping packet because timeout"

    .line 266
    .line 267
    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    :cond_7
    const/4 v5, 0x0

    .line 271
    goto :goto_6

    .line 272
    :cond_8
    :goto_7
    iget-object v5, v0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    .line 273
    .line 274
    invoke-virtual {v5}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    .line 275
    .line 276
    .line 277
    move-result v5
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    add-int/2addr v8, v5

    .line 279
    const/4 v5, 0x0

    .line 280
    goto :goto_5

    .line 281
    :cond_9
    const/4 v5, 0x0

    .line 282
    goto/16 :goto_0

    .line 283
    .line 284
    :goto_8
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    .line 286
    .line 287
    goto :goto_a

    .line 288
    :goto_9
    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    .line 290
    .line 291
    :cond_a
    :goto_a
    const-string/jumbo v0, "output thread exit"

    .line 292
    .line 293
    .line 294
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    return-void
.end method
