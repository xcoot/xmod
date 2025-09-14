.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;


# instance fields
.field public final mBinder:Landroid/os/IHwBinder;

.field public final mDeathRecipientMap:Ljava/util/Map;

.field public final mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

.field public final mProperties:Landroid/media/soundtrigger/Properties;

.field public final mRebootRunnable:Ljava/lang/Runnable;

.field public final mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

.field public final mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

.field public final mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

.field public final mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;


# direct methods
.method public constructor <init>(Landroid/os/IHwBinder;Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mDeathRecipientMap:Ljava/util/Map;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mRebootRunnable:Ljava/lang/Runnable;

    .line 19
    .line 20
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mBinder:Landroid/os/IHwBinder;

    .line 24
    .line 25
    const-string p2, "android.hardware.soundtrigger@2.3::ISoundTriggerHw"

    .line 26
    .line 27
    invoke-interface {p1, p2}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    instance-of v2, v0, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    check-cast v0, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, v0, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 47
    .line 48
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;->interfaceChain()Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    if-eqz v3, :cond_1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    :cond_2
    move-object v0, v1

    .line 76
    :goto_0
    if-eqz v0, :cond_3

    .line 77
    .line 78
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;

    .line 79
    .line 80
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    .line 81
    .line 82
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    .line 83
    .line 84
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    .line 85
    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :cond_3
    const-string p2, "android.hardware.soundtrigger@2.2::ISoundTriggerHw"

    .line 89
    .line 90
    invoke-interface {p1, p2}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    instance-of v2, v0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    .line 97
    .line 98
    if-eqz v2, :cond_4

    .line 99
    .line 100
    check-cast v0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_4
    new-instance v0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Proxy;

    .line 104
    .line 105
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 106
    .line 107
    .line 108
    iput-object p1, v0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 109
    .line 110
    :try_start_1
    invoke-virtual {v0}, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Proxy;->interfaceChain()Ljava/util/ArrayList;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_6

    .line 123
    .line 124
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    check-cast v3, Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    if-eqz v3, :cond_5

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :catch_1
    :cond_6
    move-object v0, v1

    .line 138
    :goto_1
    if-eqz v0, :cond_7

    .line 139
    .line 140
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    .line 141
    .line 142
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    .line 143
    .line 144
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    .line 145
    .line 146
    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_7
    const-string p2, "android.hardware.soundtrigger@2.1::ISoundTriggerHw"

    .line 150
    .line 151
    invoke-interface {p1, p2}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    if-eqz v0, :cond_8

    .line 156
    .line 157
    instance-of v2, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    .line 158
    .line 159
    if-eqz v2, :cond_8

    .line 160
    .line 161
    check-cast v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_8
    new-instance v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Proxy;

    .line 165
    .line 166
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 167
    .line 168
    .line 169
    iput-object p1, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 170
    .line 171
    :try_start_2
    invoke-virtual {v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$Proxy;->interfaceChain()Ljava/util/ArrayList;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-eqz v3, :cond_a

    .line 184
    .line 185
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    check-cast v3, Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 195
    if-eqz v3, :cond_9

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :catch_2
    :cond_a
    move-object v0, v1

    .line 199
    :goto_2
    if-eqz v0, :cond_b

    .line 200
    .line 201
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    .line 202
    .line 203
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    .line 204
    .line 205
    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;

    .line 206
    .line 207
    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_b
    invoke-static {p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    if-eqz p1, :cond_c

    .line 215
    .line 216
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    .line 217
    .line 218
    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;

    .line 219
    .line 220
    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    .line 221
    .line 222
    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    .line 223
    .line 224
    :goto_3
    :try_start_3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 225
    .line 226
    const/4 p2, -0x1

    .line 227
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 228
    .line 229
    .line 230
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 231
    .line 232
    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 233
    .line 234
    .line 235
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;

    .line 240
    .line 241
    invoke-direct {v1, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v1}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;->getProperties_2_3(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;)V
    :try_end_4
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 245
    .line 246
    .line 247
    :try_start_5
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    const-string v0, "getProperties_2_3"

    .line 252
    .line 253
    invoke-static {p1, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    check-cast p1, Landroid/hardware/soundtrigger/V2_3/Properties;

    .line 261
    .line 262
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlProperties(Landroid/hardware/soundtrigger/V2_3/Properties;)Landroid/media/soundtrigger/Properties;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    goto :goto_4

    .line 267
    :catch_3
    move-exception p0

    .line 268
    goto :goto_5

    .line 269
    :catch_4
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->getProperties_2_0()Landroid/media/soundtrigger/Properties;

    .line 270
    .line 271
    .line 272
    move-result-object p1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    .line 273
    :goto_4
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mProperties:Landroid/media/soundtrigger/Properties;

    .line 274
    .line 275
    return-void

    .line 276
    :goto_5
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    throw p0

    .line 281
    :cond_c
    new-instance p0, Ljava/lang/RuntimeException;

    .line 282
    .line 283
    const-string p1, "Binder doesn\'t support ISoundTriggerHw@2.0"

    .line 284
    .line 285
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    throw p0
.end method

.method public static create(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;Ljava/lang/Runnable;Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;
    .locals 2

    .line 1
    invoke-interface {p0}, Landroid/hidl/base/V1_0/IBase;->asBinder()Landroid/os/IHwBinder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;-><init>(Landroid/os/IHwBinder;Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    new-instance p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;

    .line 11
    .line 12
    iget-object p1, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mProperties:Landroid/media/soundtrigger/Properties;

    .line 13
    .line 14
    iget v1, p1, Landroid/media/soundtrigger/Properties;->maxSoundModels:I

    .line 15
    .line 16
    invoke-direct {p0, v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;I)V

    .line 17
    .line 18
    .line 19
    iget-boolean p1, p1, Landroid/media/soundtrigger/Properties;->concurrentCapture:Z

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    new-instance p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;

    .line 24
    .line 25
    invoke-direct {p1, p0, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;)V

    .line 26
    .line 27
    .line 28
    move-object p0, p1

    .line 29
    :cond_0
    return-object p0
.end method

.method public static handleHalStatus(ILjava/lang/String;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/android/server/soundtrigger_middleware/HalException;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lcom/android/server/soundtrigger_middleware/HalException;-><init>(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    throw v0
.end method


# virtual methods
.method public final as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;

    .line 7
    .line 8
    const-string v0, "Underlying driver version < 2.3"

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p0
.end method

.method public final clientAttached(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final clientDetached(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final detach()V
    .locals 0

    .line 1
    return-void
.end method

.method public final forceRecognitionEvent(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1}, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;->getModelState(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const-string p1, "getModelState"

    .line 10
    .line 11
    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p0

    .line 16
    goto :goto_0

    .line 17
    :catch_1
    move-exception p0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;

    .line 20
    .line 21
    const-string p1, "Underlying driver version < 2.2"

    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :goto_0
    new-instance p1, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    .line 28
    .line 29
    const/4 v0, 0x2

    .line 30
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-direct {p1, v0, p0}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :goto_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    throw p0
.end method

.method public final getModelParameter(II)I
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;

    .line 18
    .line 19
    invoke-direct {v2, v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1, p2, v2}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;->getParameter(IILcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    const-string p1, "getParameter"

    .line 30
    .line 31
    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    goto :goto_0

    .line 41
    :catch_1
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :goto_0
    new-instance p1, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    .line 44
    .line 45
    const/4 p2, 0x2

    .line 46
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {p1, p2, p0}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :goto_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    throw p0
.end method

.method public final getProperties()Landroid/media/soundtrigger/Properties;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mProperties:Landroid/media/soundtrigger/Properties;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getProperties_2_0()Landroid/media/soundtrigger/Properties;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    .line 13
    .line 14
    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;

    .line 15
    .line 16
    invoke-direct {v2, v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, v2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->getProperties(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    const-string v0, "getProperties"

    .line 27
    .line 28
    invoke-static {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    .line 36
    .line 37
    new-instance v0, Landroid/hardware/soundtrigger/V2_3/Properties;

    .line 38
    .line 39
    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_3/Properties;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p0, v0, Landroid/hardware/soundtrigger/V2_3/Properties;->base:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlProperties(Landroid/hardware/soundtrigger/V2_3/Properties;)Landroid/media/soundtrigger/Properties;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda0;-><init>(Landroid/os/IBinder$DeathRecipient;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mDeathRecipientMap:Ljava/util/Map;

    .line 7
    .line 8
    check-cast v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mBinder:Landroid/os/IHwBinder;

    .line 14
    .line 15
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    invoke-interface {p0, v0, v1, v2}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "Failed to close file"

    .line 8
    .line 9
    const-string v4, "SoundTriggerHw2Compat"

    .line 10
    .line 11
    new-instance v5, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    invoke-direct {v5, v6}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;-><init>(I)V

    .line 15
    .line 16
    .line 17
    new-instance v6, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    .line 18
    .line 19
    invoke-direct {v6}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v6, v5, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    .line 23
    .line 24
    new-instance v6, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v6, v5, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    .line 30
    .line 31
    iget-object v6, v1, Landroid/media/soundtrigger/PhraseSoundModel;->common:Landroid/media/soundtrigger/SoundModel;

    .line 32
    .line 33
    invoke-static {v6}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlSoundModel(Landroid/media/soundtrigger/SoundModel;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    iput-object v6, v5, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    .line 38
    .line 39
    iget-object v1, v1, Landroid/media/soundtrigger/PhraseSoundModel;->phrases:[Landroid/media/soundtrigger/Phrase;

    .line 40
    .line 41
    array-length v6, v1

    .line 42
    const/4 v7, 0x0

    .line 43
    move v8, v7

    .line 44
    :goto_0
    if-ge v8, v6, :cond_1

    .line 45
    .line 46
    aget-object v9, v1, v8

    .line 47
    .line 48
    iget-object v10, v5, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v10, Ljava/util/ArrayList;

    .line 51
    .line 52
    new-instance v11, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;

    .line 53
    .line 54
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    iput v7, v11, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->id:I

    .line 58
    .line 59
    iput v7, v11, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->recognitionModes:I

    .line 60
    .line 61
    new-instance v12, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v12, v11, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->users:Ljava/util/ArrayList;

    .line 67
    .line 68
    new-instance v12, Ljava/lang/String;

    .line 69
    .line 70
    invoke-direct {v12}, Ljava/lang/String;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v12, v11, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->locale:Ljava/lang/String;

    .line 74
    .line 75
    new-instance v12, Ljava/lang/String;

    .line 76
    .line 77
    invoke-direct {v12}, Ljava/lang/String;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v12, v11, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->text:Ljava/lang/String;

    .line 81
    .line 82
    iget v12, v9, Landroid/media/soundtrigger/Phrase;->id:I

    .line 83
    .line 84
    iput v12, v11, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->id:I

    .line 85
    .line 86
    iget v12, v9, Landroid/media/soundtrigger/Phrase;->recognitionModes:I

    .line 87
    .line 88
    invoke-static {v12}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlRecognitionModes(I)I

    .line 89
    .line 90
    .line 91
    move-result v12

    .line 92
    iput v12, v11, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->recognitionModes:I

    .line 93
    .line 94
    iget-object v12, v9, Landroid/media/soundtrigger/Phrase;->users:[I

    .line 95
    .line 96
    array-length v13, v12

    .line 97
    move v14, v7

    .line 98
    :goto_1
    if-ge v14, v13, :cond_0

    .line 99
    .line 100
    aget v15, v12, v14

    .line 101
    .line 102
    iget-object v7, v11, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->users:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v15

    .line 108
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    add-int/lit8 v14, v14, 0x1

    .line 112
    .line 113
    const/4 v7, 0x0

    .line 114
    goto :goto_1

    .line 115
    :cond_0
    iget-object v7, v9, Landroid/media/soundtrigger/Phrase;->locale:Ljava/lang/String;

    .line 116
    .line 117
    iput-object v7, v11, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->locale:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v7, v9, Landroid/media/soundtrigger/Phrase;->text:Ljava/lang/String;

    .line 120
    .line 121
    iput-object v7, v11, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->text:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    add-int/lit8 v8, v8, 0x1

    .line 127
    .line 128
    const/4 v7, 0x0

    .line 129
    goto :goto_0

    .line 130
    :cond_1
    :try_start_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 131
    .line 132
    const/4 v6, -0x1

    .line 133
    invoke-direct {v1, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 134
    .line 135
    .line 136
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 137
    .line 138
    const/4 v7, 0x0

    .line 139
    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .line 141
    .line 142
    :try_start_1
    iget-object v7, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    .line 143
    .line 144
    if-eqz v7, :cond_3

    .line 145
    .line 146
    new-instance v8, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;

    .line 147
    .line 148
    invoke-direct {v8, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V

    .line 149
    .line 150
    .line 151
    new-instance v9, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;

    .line 152
    .line 153
    invoke-direct {v9, v1, v6}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 154
    .line 155
    .line 156
    invoke-interface {v7, v5, v8, v9}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;->loadPhraseSoundModel_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    const-string v7, "loadPhraseSoundModel_2_1"

    .line 164
    .line 165
    invoke-static {v1, v7}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object v1, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    .line 169
    .line 170
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 171
    .line 172
    .line 173
    move-result v7

    .line 174
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 179
    .line 180
    invoke-virtual {v1, v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    .line 182
    .line 183
    :try_start_2
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 184
    .line 185
    .line 186
    move-result v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    iget-object v0, v5, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    .line 190
    .line 191
    iget-object v0, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v0, Landroid/os/HidlMemory;

    .line 194
    .line 195
    if-eqz v0, :cond_2

    .line 196
    .line 197
    :try_start_3
    invoke-virtual {v0}, Landroid/os/HidlMemory;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :catch_0
    move-exception v0

    .line 202
    move-object v2, v0

    .line 203
    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    .line 205
    .line 206
    :cond_2
    :goto_2
    return v1

    .line 207
    :catchall_0
    move-exception v0

    .line 208
    move-object v1, v0

    .line 209
    goto :goto_5

    .line 210
    :catch_1
    move-exception v0

    .line 211
    goto :goto_4

    .line 212
    :cond_3
    :try_start_4
    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;

    .line 213
    .line 214
    const-string v6, "Underlying driver version < 2.1"

    .line 215
    .line 216
    invoke-direct {v1, v6}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw v1
    :try_end_4
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 220
    :catch_2
    :try_start_5
    invoke-virtual {v0, v5, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->loadPhraseSoundModel_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    .line 221
    .line 222
    .line 223
    move-result v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 224
    iget-object v0, v5, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    .line 227
    .line 228
    iget-object v0, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast v0, Landroid/os/HidlMemory;

    .line 231
    .line 232
    if-eqz v0, :cond_4

    .line 233
    .line 234
    :try_start_6
    invoke-virtual {v0}, Landroid/os/HidlMemory;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 235
    .line 236
    .line 237
    goto :goto_3

    .line 238
    :catch_3
    move-exception v0

    .line 239
    move-object v2, v0

    .line 240
    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    .line 242
    .line 243
    :cond_4
    :goto_3
    return v1

    .line 244
    :goto_4
    :try_start_7
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 249
    :goto_5
    iget-object v0, v5, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    .line 252
    .line 253
    iget-object v0, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast v0, Landroid/os/HidlMemory;

    .line 256
    .line 257
    if-eqz v0, :cond_5

    .line 258
    .line 259
    :try_start_8
    invoke-virtual {v0}, Landroid/os/HidlMemory;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 260
    .line 261
    .line 262
    goto :goto_6

    .line 263
    :catch_4
    move-exception v0

    .line 264
    move-object v2, v0

    .line 265
    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    .line 267
    .line 268
    :cond_5
    :goto_6
    throw v1
.end method

.method public final loadPhraseSoundModel_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .locals 5

    .line 1
    new-instance v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->phrases:Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object v1, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    .line 23
    .line 24
    iget-object v2, v1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    .line 27
    .line 28
    iget-object v1, v1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Landroid/os/HidlMemory;

    .line 31
    .line 32
    invoke-static {v1}, Landroid/os/HidlMemoryUtil;->hidlMemoryToByteList(Landroid/os/HidlMemory;)Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->data:Ljava/util/ArrayList;

    .line 37
    .line 38
    iput-object v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    .line 39
    .line 40
    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Ljava/util/ArrayList;

    .line 43
    .line 44
    iput-object p1, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;->phrases:Ljava/util/ArrayList;

    .line 45
    .line 46
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    .line 48
    const/4 v1, -0x1

    .line 49
    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    .line 59
    .line 60
    new-instance v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;

    .line 61
    .line 62
    invoke-direct {v3, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V

    .line 63
    .line 64
    .line 65
    new-instance v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;

    .line 66
    .line 67
    invoke-direct {v4, p1, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v2, v0, v3, v4}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->loadPhraseSoundModel(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    const-string v0, "loadSoundModel"

    .line 78
    .line 79
    invoke-static {p1, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 93
    .line 94
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    return p0
.end method

.method public final loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .locals 7

    .line 1
    const-string v0, "Failed to close file"

    .line 2
    .line 3
    const-string v1, "SoundTriggerHw2Compat"

    .line 4
    .line 5
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlSoundModel(Landroid/media/soundtrigger/SoundModel;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :try_start_0
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    :try_start_1
    iget-object v4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    new-instance v5, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;

    .line 26
    .line 27
    invoke-direct {v5, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V

    .line 28
    .line 29
    .line 30
    new-instance v6, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;

    .line 31
    .line 32
    invoke-direct {v6, v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v4, p1, v5, v6}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;->loadSoundModel_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const-string v4, "loadSoundModel_2_1"

    .line 43
    .line 44
    invoke-static {v2, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 58
    .line 59
    invoke-virtual {v2, v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    .line 62
    :try_start_2
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 63
    .line 64
    .line 65
    move-result p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p1, Landroid/os/HidlMemory;

    .line 69
    .line 70
    if-eqz p1, :cond_0

    .line 71
    .line 72
    :try_start_3
    invoke-virtual {p1}, Landroid/os/HidlMemory;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception p1

    .line 77
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .line 79
    .line 80
    :cond_0
    :goto_0
    return p0

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_3

    .line 83
    :catch_1
    move-exception p0

    .line 84
    goto :goto_2

    .line 85
    :cond_1
    :try_start_4
    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;

    .line 86
    .line 87
    const-string v3, "Underlying driver version < 2.1"

    .line 88
    .line 89
    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v2
    :try_end_4
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 93
    :catch_2
    :try_start_5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->loadSoundModel_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    .line 94
    .line 95
    .line 96
    move-result p0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 97
    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p1, Landroid/os/HidlMemory;

    .line 100
    .line 101
    if-eqz p1, :cond_2

    .line 102
    .line 103
    :try_start_6
    invoke-virtual {p1}, Landroid/os/HidlMemory;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catch_3
    move-exception p1

    .line 108
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    .line 110
    .line 111
    :cond_2
    :goto_1
    return p0

    .line 112
    :goto_2
    :try_start_7
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 117
    :goto_3
    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast p1, Landroid/os/HidlMemory;

    .line 120
    .line 121
    if-eqz p1, :cond_3

    .line 122
    .line 123
    :try_start_8
    invoke-virtual {p1}, Landroid/os/HidlMemory;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 124
    .line 125
    .line 126
    goto :goto_4

    .line 127
    :catch_4
    move-exception p1

    .line 128
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .line 130
    .line 131
    :cond_3
    :goto_4
    throw p0
.end method

.method public final loadSoundModel_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .locals 5

    .line 1
    iget-object v0, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    .line 4
    .line 5
    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Landroid/os/HidlMemory;

    .line 8
    .line 9
    invoke-static {p1}, Landroid/os/HidlMemoryUtil;->hidlMemoryToByteList(Landroid/os/HidlMemory;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->data:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    .line 28
    .line 29
    new-instance v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;

    .line 30
    .line 31
    invoke-direct {v3, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V

    .line 32
    .line 33
    .line 34
    new-instance v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;

    .line 35
    .line 36
    invoke-direct {v4, p1, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v2, v0, v3, v4}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->loadSoundModel(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    const-string v0, "loadSoundModel"

    .line 47
    .line 48
    invoke-static {p1, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    .line 63
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    return p0
.end method

.method public final queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;

    .line 18
    .line 19
    invoke-direct {v3, v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1, p2, v3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;->queryParameter(IILcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;)V
    :try_end_0
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    const-string/jumbo p1, "queryParameter"

    .line 30
    .line 31
    .line 32
    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;

    .line 40
    .line 41
    iget-byte p0, p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->hidl_d:B

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    if-ne p0, p1, :cond_1

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->range()Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    if-nez p0, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance v2, Landroid/media/soundtrigger/ModelParameterRange;

    .line 60
    .line 61
    invoke-direct {v2}, Landroid/media/soundtrigger/ModelParameterRange;-><init>()V

    .line 62
    .line 63
    .line 64
    iget p1, p0, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;->start:I

    .line 65
    .line 66
    iput p1, v2, Landroid/media/soundtrigger/ModelParameterRange;->minInclusive:I

    .line 67
    .line 68
    iget p0, p0, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;->end:I

    .line 69
    .line 70
    iput p0, v2, Landroid/media/soundtrigger/ModelParameterRange;->maxInclusive:I

    .line 71
    .line 72
    :cond_1
    :goto_0
    return-object v2

    .line 73
    :catch_0
    move-exception p0

    .line 74
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    throw p0

    .line 79
    :catch_1
    return-object v2
.end method

.method public final reboot()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mRebootRunnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setModelParameter(III)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;->setParameter(III)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const-string/jumbo p1, "setParameter"

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catch_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :catch_1
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :goto_0
    new-instance p1, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    .line 21
    .line 22
    const/4 p2, 0x2

    .line 23
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-direct {p1, p2, p0}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :goto_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    throw p0
.end method

.method public final startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V
    .locals 16

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    new-instance v2, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v3, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    .line 11
    .line 12
    const/4 v4, 0x2

    .line 13
    invoke-direct {v3, v4}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;-><init>(I)V

    .line 14
    .line 15
    .line 16
    new-instance v4, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    iput v5, v4, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureHandle:I

    .line 23
    .line 24
    iput v5, v4, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureDevice:I

    .line 25
    .line 26
    iput-boolean v5, v4, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureRequested:Z

    .line 27
    .line 28
    new-instance v6, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v6, v4, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    .line 34
    .line 35
    new-instance v6, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v6, v4, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->data:Ljava/util/ArrayList;

    .line 41
    .line 42
    iput-object v4, v3, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    iput-object v6, v3, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    .line 46
    .line 47
    iput-object v3, v2, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->base:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    .line 48
    .line 49
    move/from16 v3, p2

    .line 50
    .line 51
    iput v3, v4, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureDevice:I

    .line 52
    .line 53
    move/from16 v3, p3

    .line 54
    .line 55
    iput v3, v4, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureHandle:I

    .line 56
    .line 57
    iget-boolean v3, v1, Landroid/media/soundtrigger/RecognitionConfig;->captureRequested:Z

    .line 58
    .line 59
    iput-boolean v3, v4, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureRequested:Z

    .line 60
    .line 61
    iget-object v3, v1, Landroid/media/soundtrigger/RecognitionConfig;->phraseRecognitionExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    .line 62
    .line 63
    array-length v4, v3

    .line 64
    move v6, v5

    .line 65
    :goto_0
    if-ge v6, v4, :cond_1

    .line 66
    .line 67
    aget-object v7, v3, v6

    .line 68
    .line 69
    iget-object v8, v2, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->base:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    .line 70
    .line 71
    iget-object v8, v8, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v8, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    .line 74
    .line 75
    iget-object v8, v8, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    .line 76
    .line 77
    new-instance v9, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    .line 78
    .line 79
    invoke-direct {v9}, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;-><init>()V

    .line 80
    .line 81
    .line 82
    iget v10, v7, Landroid/media/soundtrigger/PhraseRecognitionExtra;->id:I

    .line 83
    .line 84
    iput v10, v9, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->id:I

    .line 85
    .line 86
    iget v10, v7, Landroid/media/soundtrigger/PhraseRecognitionExtra;->recognitionModes:I

    .line 87
    .line 88
    invoke-static {v10}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlRecognitionModes(I)I

    .line 89
    .line 90
    .line 91
    move-result v10

    .line 92
    iput v10, v9, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->recognitionModes:I

    .line 93
    .line 94
    iget v10, v7, Landroid/media/soundtrigger/PhraseRecognitionExtra;->confidenceLevel:I

    .line 95
    .line 96
    iput v10, v9, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->confidenceLevel:I

    .line 97
    .line 98
    iget-object v10, v9, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    .line 99
    .line 100
    iget-object v11, v7, Landroid/media/soundtrigger/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger/ConfidenceLevel;

    .line 101
    .line 102
    array-length v11, v11

    .line 103
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 104
    .line 105
    .line 106
    iget-object v7, v7, Landroid/media/soundtrigger/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger/ConfidenceLevel;

    .line 107
    .line 108
    array-length v10, v7

    .line 109
    move v11, v5

    .line 110
    :goto_1
    if-ge v11, v10, :cond_0

    .line 111
    .line 112
    aget-object v12, v7, v11

    .line 113
    .line 114
    iget-object v13, v9, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    .line 115
    .line 116
    new-instance v14, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;

    .line 117
    .line 118
    invoke-direct {v14}, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;-><init>()V

    .line 119
    .line 120
    .line 121
    iget v15, v12, Landroid/media/soundtrigger/ConfidenceLevel;->userId:I

    .line 122
    .line 123
    iput v15, v14, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;->userId:I

    .line 124
    .line 125
    iget v12, v12, Landroid/media/soundtrigger/ConfidenceLevel;->levelPercent:I

    .line 126
    .line 127
    iput v12, v14, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;->levelPercent:I

    .line 128
    .line 129
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    add-int/lit8 v11, v11, 0x1

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_0
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    add-int/lit8 v6, v6, 0x1

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_1
    iget-object v3, v2, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->base:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    .line 142
    .line 143
    iget-object v4, v1, Landroid/media/soundtrigger/RecognitionConfig;->data:[B

    .line 144
    .line 145
    const-string v5, "SoundTrigger RecognitionConfig"

    .line 146
    .line 147
    invoke-static {v4, v5}, Landroid/os/HidlMemoryUtil;->byteArrayToHidlMemory([BLjava/lang/String;)Landroid/os/HidlMemory;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    iput-object v4, v3, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    .line 152
    .line 153
    iget v1, v1, Landroid/media/soundtrigger/RecognitionConfig;->audioCapabilities:I

    .line 154
    .line 155
    iput v1, v2, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->audioCapabilities:I

    .line 156
    .line 157
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v1, v0, v2}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$Proxy;->startRecognition_2_3(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;)I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    const-string/jumbo v3, "startRecognition_2_3"

    .line 166
    .line 167
    .line 168
    invoke-static {v1, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :catch_0
    move-exception v0

    .line 173
    goto :goto_3

    .line 174
    :catch_1
    move-object/from16 v1, p0

    .line 175
    .line 176
    :try_start_1
    invoke-virtual {v1, v0, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->startRecognition_2_1(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 177
    .line 178
    .line 179
    :goto_2
    return-void

    .line 180
    :goto_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    throw v0
.end method

.method public final startRecognition_2_0(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;)V
    .locals 3

    .line 1
    iget-object p2, p2, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->base:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    .line 2
    .line 3
    iget-object v0, p2, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    .line 6
    .line 7
    iget-object p2, p2, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p2, Landroid/os/HidlMemory;

    .line 10
    .line 11
    invoke-static {p2}, Landroid/os/HidlMemoryUtil;->hidlMemoryToByteList(Landroid/os/HidlMemory;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iput-object p2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->data:Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    .line 18
    .line 19
    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p2, p1, v0, v1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->startRecognition(ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    const-string/jumbo p1, "startRecognition"

    .line 43
    .line 44
    .line 45
    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final startRecognition_2_1(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p2, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->base:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    .line 22
    .line 23
    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v1, p1, v0, v2}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;->startRecognition_2_1(ILandroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const-string/jumbo v1, "startRecognition_2_1"

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;

    .line 40
    .line 41
    const-string v1, "Underlying driver version < 2.1"

    .line 42
    .line 43
    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0
    :try_end_0
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :catch_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->startRecognition_2_0(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void

    .line 51
    :goto_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    throw p0
.end method

.method public final stopRecognition(I)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->stopRecognition(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const-string/jumbo p1, "stopRecognition"

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    throw p0
.end method

.method public final unloadSoundModel(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    .line 13
    .line 14
    invoke-interface {p0, p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->unloadSoundModel(I)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    const-string/jumbo p1, "unloadSoundModel"

    .line 19
    .line 20
    .line 21
    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catch_0
    move-exception p0

    .line 26
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    throw p0
.end method
