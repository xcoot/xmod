.class public final Lcom/android/server/hdmi/HdmiControlService$BinderService$19;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field public final synthetic val$recordSource:[B

.field public final synthetic val$recorderAddress:I

.field public final synthetic val$sourceType:I


# direct methods
.method public synthetic constructor <init>(IIILcom/android/server/hdmi/HdmiControlService$BinderService;[B)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->$r8$classId:I

    .line 2
    .line 3
    iput-object p4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 4
    .line 5
    iput p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$recorderAddress:I

    .line 6
    .line 7
    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$sourceType:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$recordSource:[B

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string p0, "HdmiControlService"

    .line 17
    .line 18
    const-string v0, "TV device is not enabled."

    .line 19
    .line 20
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$recorderAddress:I

    .line 34
    .line 35
    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$sourceType:I

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$recordSource:[B

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 40
    .line 41
    .line 42
    iget-object v3, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const-string v5, "HdmiCecLocalDeviceTv"

    .line 49
    .line 50
    if-nez v4, :cond_1

    .line 51
    .line 52
    const-string p0, "Can not start one touch record. CEC control is disabled."

    .line 53
    .line 54
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    const/16 p0, 0xa2

    .line 58
    .line 59
    invoke-virtual {v0, v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceClearTimerRecordingResult(II)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_2

    .line 63
    .line 64
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkRecorder(I)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_2

    .line 69
    .line 70
    const-string p0, "Invalid recorder address:"

    .line 71
    .line 72
    invoke-static {v1, p0, v5}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const/16 p0, 0xa0

    .line 76
    .line 77
    invoke-virtual {v0, v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceClearTimerRecordingResult(II)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_2

    .line 81
    .line 82
    :cond_2
    const/4 v4, 0x1

    .line 83
    if-eqz p0, :cond_3

    .line 84
    .line 85
    invoke-static {v2, p0}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimerRecordSource(I[B)Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-eqz v6, :cond_3

    .line 90
    .line 91
    move v6, v4

    .line 92
    goto :goto_0

    .line 93
    :cond_3
    const/4 v6, 0x0

    .line 94
    :goto_0
    const/16 v7, 0xa1

    .line 95
    .line 96
    if-nez v6, :cond_4

    .line 97
    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v3, "Invalid record source."

    .line 101
    .line 102
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1, v7}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceClearTimerRecordingResult(II)V

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_4
    if-eq v2, v4, :cond_7

    .line 124
    .line 125
    const/4 v4, 0x2

    .line 126
    if-eq v2, v4, :cond_6

    .line 127
    .line 128
    const/4 v4, 0x3

    .line 129
    if-eq v2, v4, :cond_5

    .line 130
    .line 131
    const-string p0, "Invalid source type:"

    .line 132
    .line 133
    invoke-static {v1, p0, v5}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v1, v7}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceClearTimerRecordingResult(II)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    invoke-static {v2, v1, v7, p0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    goto :goto_1

    .line 153
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    const/16 v4, 0x33

    .line 162
    .line 163
    invoke-static {v2, v1, v4, p0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    goto :goto_1

    .line 168
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    const/16 v4, 0x99

    .line 177
    .line 178
    invoke-static {v2, v1, v4, p0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    :goto_1
    new-instance v2, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$5;

    .line 183
    .line 184
    invoke-direct {v2, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$5;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3, p0, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 188
    .line 189
    .line 190
    :goto_2
    return-void

    .line 191
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 192
    .line 193
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 194
    .line 195
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-nez v0, :cond_8

    .line 200
    .line 201
    const-string p0, "HdmiControlService"

    .line 202
    .line 203
    const-string v0, "TV device is not enabled."

    .line 204
    .line 205
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    goto/16 :goto_3

    .line 209
    .line 210
    :cond_8
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 211
    .line 212
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 213
    .line 214
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$recorderAddress:I

    .line 219
    .line 220
    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$sourceType:I

    .line 221
    .line 222
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$recordSource:[B

    .line 223
    .line 224
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 225
    .line 226
    .line 227
    iget-object v3, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 228
    .line 229
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    const-string v4, "HdmiCecLocalDeviceTv"

    .line 234
    .line 235
    if-nez v3, :cond_9

    .line 236
    .line 237
    const-string p0, "Can not start one touch record. CEC control is disabled."

    .line 238
    .line 239
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    const/4 p0, 0x3

    .line 243
    invoke-virtual {v0, v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 244
    .line 245
    .line 246
    goto :goto_3

    .line 247
    :cond_9
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkRecorder(I)Z

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    if-nez v3, :cond_a

    .line 252
    .line 253
    const-string p0, "Invalid recorder address:"

    .line 254
    .line 255
    invoke-static {v1, p0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    const/4 p0, 0x1

    .line 259
    invoke-virtual {v0, v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 260
    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_a
    if-eqz p0, :cond_b

    .line 264
    .line 265
    invoke-static {v2, p0}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimerRecordSource(I[B)Z

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    if-eqz v3, :cond_b

    .line 270
    .line 271
    new-instance v3, Lcom/android/server/hdmi/TimerRecordingAction;

    .line 272
    .line 273
    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/server/hdmi/TimerRecordingAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;II[B)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 277
    .line 278
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    const-string v3, "Start [Timer Recording]-Target:"

    .line 282
    .line 283
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    const-string v3, ", SourceType:"

    .line 287
    .line 288
    const-string v5, ", RecordSource:"

    .line 289
    .line 290
    invoke-static {v1, v2, v3, v5, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 291
    .line 292
    .line 293
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p0

    .line 297
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p0

    .line 304
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .line 306
    .line 307
    goto :goto_3

    .line 308
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    const-string v3, "Invalid record source."

    .line 311
    .line 312
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p0

    .line 326
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .line 328
    .line 329
    const/4 p0, 0x2

    .line 330
    invoke-virtual {v0, v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 331
    .line 332
    .line 333
    :goto_3
    return-void

    .line 334
    nop

    .line 335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
