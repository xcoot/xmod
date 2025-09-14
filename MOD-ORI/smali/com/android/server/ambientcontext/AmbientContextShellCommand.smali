.class public final Lcom/android/server/ambientcontext/AmbientContextShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final MIXED_REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

.field public static final REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

.field public static final WEARABLE_REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

.field public static final sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;


# instance fields
.field public final mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;

    .line 2
    .line 3
    new-instance v0, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->addEventType(I)Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-virtual {v0, v2}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->addEventType(I)Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v2, 0x3

    .line 19
    invoke-virtual {v0, v2}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->addEventType(I)Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->build()Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 28
    .line 29
    new-instance v0, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    .line 30
    .line 31
    invoke-direct {v0}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;-><init>()V

    .line 32
    .line 33
    .line 34
    const v2, 0x186a1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->addEventType(I)Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->build()Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->WEARABLE_REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 46
    .line 47
    new-instance v0, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    .line 48
    .line 49
    invoke-direct {v0}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->addEventType(I)Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0, v2}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->addEventType(I)Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->build()Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sput-object v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->MIXED_REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 65
    .line 66
    new-instance v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 72
    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_0
    const v3, 0x186a1

    .line 12
    .line 13
    .line 14
    const/4 v4, -0x1

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    sparse-switch v5, :sswitch_data_0

    .line 20
    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :sswitch_0
    const-string/jumbo v5, "start-detection"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-nez v5, :cond_1

    .line 32
    .line 33
    goto/16 :goto_0

    .line 34
    .line 35
    :cond_1
    const/16 v4, 0xa

    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :sswitch_1
    const-string/jumbo v5, "get-last-status-code"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-nez v5, :cond_2

    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :cond_2
    const/16 v4, 0x9

    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :sswitch_2
    const-string/jumbo v5, "query-service-status"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-nez v5, :cond_3

    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :cond_3
    const/16 v4, 0x8

    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :sswitch_3
    const-string/jumbo v5, "set-temporary-service"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-nez v5, :cond_4

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    const/4 v4, 0x7

    .line 80
    goto :goto_0

    .line 81
    :sswitch_4
    const-string/jumbo v5, "query-wearable-service-status"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-nez v5, :cond_5

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    const/4 v4, 0x6

    .line 92
    goto :goto_0

    .line 93
    :sswitch_5
    const-string/jumbo v5, "set-temporary-services"

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-nez v5, :cond_6

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_6
    const/4 v4, 0x5

    .line 104
    goto :goto_0

    .line 105
    :sswitch_6
    const-string/jumbo v5, "start-detection-mixed"

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-nez v5, :cond_7

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_7
    const/4 v4, 0x4

    .line 116
    goto :goto_0

    .line 117
    :sswitch_7
    const-string/jumbo v5, "start-detection-wearable"

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-nez v5, :cond_8

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_8
    const/4 v4, 0x3

    .line 128
    goto :goto_0

    .line 129
    :sswitch_8
    const-string/jumbo v5, "query-mixed-service-status"

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    if-nez v5, :cond_9

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_9
    move v4, v0

    .line 140
    goto :goto_0

    .line 141
    :sswitch_9
    const-string/jumbo v5, "stop-detection"

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    if-nez v5, :cond_a

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_a
    move v4, v2

    .line 152
    goto :goto_0

    .line 153
    :sswitch_a
    const-string/jumbo v5, "get-bound-package"

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    if-nez v5, :cond_b

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_b
    move v4, v1

    .line 164
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    return p0

    .line 172
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    iget-object v2, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 185
    .line 186
    sget-object v3, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 187
    .line 188
    sget-object v4, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 189
    .line 190
    invoke-static {v4}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->-$$Nest$mcreateAmbientContextObserver(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    invoke-virtual {v2, p1, v3, v0, v5}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->startDetection(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;)V

    .line 195
    .line 196
    .line 197
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 198
    .line 199
    new-instance v2, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;

    .line 200
    .line 201
    invoke-direct {v2, v4}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;-><init>(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->newClientAdded(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V

    .line 205
    .line 206
    .line 207
    return v1

    .line 208
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    sget-object p1, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 213
    .line 214
    iget p1, p1, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->mLastStatus:I

    .line 215
    .line 216
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 217
    .line 218
    .line 219
    return v1

    .line 220
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    filled-new-array {v2, v0}, [I

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 237
    .line 238
    sget-object v2, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 239
    .line 240
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    new-instance v4, Landroid/os/RemoteCallback;

    .line 244
    .line 245
    new-instance v5, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;

    .line 246
    .line 247
    invoke-direct {v5, v2}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)V

    .line 248
    .line 249
    .line 250
    invoke-direct {v4, v5}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0, p1, v3, v0, v4}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->queryServiceStatus(ILjava/lang/String;[ILandroid/os/RemoteCallback;)V

    .line 254
    .line 255
    .line 256
    return v1

    .line 257
    :pswitch_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    if-nez v3, :cond_c

    .line 274
    .line 275
    iget-object v3, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 276
    .line 277
    invoke-virtual {v3, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->resetTemporaryService(I)V

    .line 278
    .line 279
    .line 280
    const-string v3, "AmbientContextDetectionService temporary reset. "

    .line 281
    .line 282
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 286
    .line 287
    invoke-virtual {p0, v0, v2}, Lcom/android/server/infra/AbstractMasterSystemService;->setDefaultServiceEnabled(IZ)Z

    .line 288
    .line 289
    .line 290
    goto :goto_1

    .line 291
    :cond_c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 300
    .line 301
    invoke-virtual {p0, v0, v3, v2}, Lcom/android/server/infra/AbstractMasterSystemService;->setTemporaryService(ILjava/lang/String;I)V

    .line 302
    .line 303
    .line 304
    new-instance p0, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    const-string v0, "AmbientContextDetectionService temporarily set to "

    .line 307
    .line 308
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    const-string v0, " for "

    .line 312
    .line 313
    const-string/jumbo v4, "ms"

    .line 314
    .line 315
    .line 316
    invoke-static {v2, v3, v0, v4, p0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p0

    .line 320
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    :goto_1
    return v1

    .line 324
    :pswitch_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 329
    .line 330
    .line 331
    move-result p1

    .line 332
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    filled-new-array {v3}, [I

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 341
    .line 342
    sget-object v3, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 343
    .line 344
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    new-instance v4, Landroid/os/RemoteCallback;

    .line 348
    .line 349
    new-instance v5, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;

    .line 350
    .line 351
    invoke-direct {v5, v3}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)V

    .line 352
    .line 353
    .line 354
    invoke-direct {v4, v5}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p0, p1, v0, v2, v4}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->queryServiceStatus(ILjava/lang/String;[ILandroid/os/RemoteCallback;)V

    .line 358
    .line 359
    .line 360
    return v1

    .line 361
    :pswitch_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    iget-object v3, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 374
    .line 375
    invoke-virtual {v3, v0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->setDefaultServiceEnabled(IZ)Z

    .line 376
    .line 377
    .line 378
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v4

    .line 386
    if-eqz v3, :cond_11

    .line 387
    .line 388
    if-nez v4, :cond_d

    .line 389
    .line 390
    goto/16 :goto_5

    .line 391
    .line 392
    :cond_d
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 401
    .line 402
    .line 403
    move-result v4

    .line 404
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 405
    .line 406
    iget-object v5, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 407
    .line 408
    const-string/jumbo v6, "setTemporaryService("

    .line 409
    .line 410
    .line 411
    const-string v7, ") to "

    .line 412
    .line 413
    invoke-static {v0, v6, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    move-result-object v6

    .line 417
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v7

    .line 421
    const-string v8, " for "

    .line 422
    .line 423
    const-string/jumbo v9, "ms"

    .line 424
    .line 425
    .line 426
    invoke-static {v4, v7, v8, v9, v6}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v6

    .line 430
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .line 432
    .line 433
    iget-object v5, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 434
    .line 435
    if-nez v5, :cond_e

    .line 436
    .line 437
    goto :goto_3

    .line 438
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->enforceCallingPermissionForManagement()V

    .line 439
    .line 440
    .line 441
    const/16 v5, 0x7530

    .line 442
    .line 443
    if-gt v4, v5, :cond_10

    .line 444
    .line 445
    iget-object v5, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 446
    .line 447
    monitor-enter v5

    .line 448
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 449
    .line 450
    .line 451
    move-result-object v6

    .line 452
    if-eqz v6, :cond_f

    .line 453
    .line 454
    invoke-virtual {v6}, Lcom/android/server/infra/AbstractPerUserSystemService;->removeSelfFromCache()V

    .line 455
    .line 456
    .line 457
    goto :goto_2

    .line 458
    :catchall_0
    move-exception p0

    .line 459
    goto :goto_4

    .line 460
    :cond_f
    :goto_2
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 461
    .line 462
    invoke-virtual {p0, v0, v4, v3}, Lcom/android/server/infra/ServiceNameBaseResolver;->setTemporaryServices(II[Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    :goto_3
    const-string p0, "AmbientContextShellCommand"

    .line 467
    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    .line 469
    .line 470
    const-string v5, "AmbientContextDetectionService temporarily set to "

    .line 471
    .line 472
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    aget-object v5, v3, v1

    .line 476
    .line 477
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    const-string v5, " and "

    .line 481
    .line 482
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    aget-object v5, v3, v2

    .line 486
    .line 487
    const-string v6, " for "

    .line 488
    .line 489
    const-string/jumbo v7, "ms"

    .line 490
    .line 491
    .line 492
    invoke-static {v4, v5, v6, v7, v0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    .line 498
    .line 499
    new-instance p0, Ljava/lang/StringBuilder;

    .line 500
    .line 501
    const-string v0, "AmbientContextDetectionService temporarily set to "

    .line 502
    .line 503
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    aget-object v0, v3, v1

    .line 507
    .line 508
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    const-string v0, " and "

    .line 512
    .line 513
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    aget-object v0, v3, v2

    .line 517
    .line 518
    const-string v2, " for "

    .line 519
    .line 520
    const-string/jumbo v3, "ms"

    .line 521
    .line 522
    .line 523
    invoke-static {v4, v0, v2, v3, p0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object p0

    .line 527
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    goto :goto_6

    .line 531
    :goto_4
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    throw p0

    .line 533
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 534
    .line 535
    const-string p1, "Max duration is 30000 (called with "

    .line 536
    .line 537
    const-string v0, ")"

    .line 538
    .line 539
    invoke-static {v4, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object p1

    .line 543
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    throw p0

    .line 547
    :cond_11
    :goto_5
    iget-object v3, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 548
    .line 549
    invoke-virtual {v3, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->resetTemporaryService(I)V

    .line 550
    .line 551
    .line 552
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 553
    .line 554
    invoke-virtual {p0, v0, v2}, Lcom/android/server/infra/AbstractMasterSystemService;->setDefaultServiceEnabled(IZ)Z

    .line 555
    .line 556
    .line 557
    const-string p0, "AmbientContextDetectionService temporary reset."

    .line 558
    .line 559
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    :goto_6
    return v1

    .line 563
    :pswitch_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object p1

    .line 567
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 568
    .line 569
    .line 570
    move-result p1

    .line 571
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    iget-object v2, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 576
    .line 577
    sget-object v3, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->MIXED_REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 578
    .line 579
    sget-object v4, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 580
    .line 581
    invoke-static {v4}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->-$$Nest$mcreateAmbientContextObserver(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;

    .line 582
    .line 583
    .line 584
    move-result-object v5

    .line 585
    invoke-virtual {v2, p1, v3, v0, v5}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->startDetection(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;)V

    .line 586
    .line 587
    .line 588
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 589
    .line 590
    new-instance v2, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;

    .line 591
    .line 592
    invoke-direct {v2, v4}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;-><init>(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->newClientAdded(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V

    .line 596
    .line 597
    .line 598
    return v1

    .line 599
    :pswitch_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object p1

    .line 603
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 604
    .line 605
    .line 606
    move-result p1

    .line 607
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    iget-object v2, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 612
    .line 613
    sget-object v3, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->WEARABLE_REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 614
    .line 615
    sget-object v4, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 616
    .line 617
    invoke-static {v4}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->-$$Nest$mcreateAmbientContextObserver(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;

    .line 618
    .line 619
    .line 620
    move-result-object v5

    .line 621
    invoke-virtual {v2, p1, v3, v0, v5}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->startDetection(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;)V

    .line 622
    .line 623
    .line 624
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 625
    .line 626
    new-instance v2, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;

    .line 627
    .line 628
    invoke-direct {v2, v4}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;-><init>(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->newClientAdded(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V

    .line 632
    .line 633
    .line 634
    return v1

    .line 635
    :pswitch_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object p1

    .line 639
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 640
    .line 641
    .line 642
    move-result p1

    .line 643
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    filled-new-array {v2, v3}, [I

    .line 648
    .line 649
    .line 650
    move-result-object v2

    .line 651
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 652
    .line 653
    sget-object v3, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 654
    .line 655
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 656
    .line 657
    .line 658
    new-instance v4, Landroid/os/RemoteCallback;

    .line 659
    .line 660
    new-instance v5, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;

    .line 661
    .line 662
    invoke-direct {v5, v3}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)V

    .line 663
    .line 664
    .line 665
    invoke-direct {v4, v5}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {p0, p1, v0, v2, v4}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->queryServiceStatus(ILjava/lang/String;[ILandroid/os/RemoteCallback;)V

    .line 669
    .line 670
    .line 671
    return v1

    .line 672
    :pswitch_9
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object p1

    .line 676
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 677
    .line 678
    .line 679
    move-result p1

    .line 680
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 685
    .line 686
    iget-object v2, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mContext:Landroid/content/Context;

    .line 687
    .line 688
    const-string v3, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    .line 689
    .line 690
    const-string v4, "AmbientContextManagerService"

    .line 691
    .line 692
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 696
    .line 697
    monitor-enter v2

    .line 698
    :try_start_2
    iget-object v3, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mExistingClientRequests:Ljava/util/Set;

    .line 699
    .line 700
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 701
    .line 702
    .line 703
    move-result-object v3

    .line 704
    :cond_12
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 705
    .line 706
    .line 707
    move-result v4

    .line 708
    if-eqz v4, :cond_14

    .line 709
    .line 710
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 711
    .line 712
    .line 713
    move-result-object v4

    .line 714
    check-cast v4, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;

    .line 715
    .line 716
    const-string v5, "AmbientContextManagerService"

    .line 717
    .line 718
    const-string v6, "Looping through clients"

    .line 719
    .line 720
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    .line 722
    .line 723
    invoke-virtual {v4, p1, v0}, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->hasUserIdAndPackageName(ILjava/lang/String;)Z

    .line 724
    .line 725
    .line 726
    move-result v5

    .line 727
    if-eqz v5, :cond_12

    .line 728
    .line 729
    const-string v5, "AmbientContextManagerService"

    .line 730
    .line 731
    const-string/jumbo v6, "we have an existing client"

    .line 732
    .line 733
    .line 734
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    .line 736
    .line 737
    iget-object v4, v4, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mRequest:Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 738
    .line 739
    invoke-virtual {v4}, Landroid/app/ambientcontext/AmbientContextEventRequest;->getEventTypes()Ljava/util/Set;

    .line 740
    .line 741
    .line 742
    move-result-object v4

    .line 743
    invoke-virtual {p0, p1, v4}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getAmbientContextManagerPerUserServiceForEventTypes(ILjava/util/Set;)Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    .line 744
    .line 745
    .line 746
    move-result-object v4

    .line 747
    if-eqz v4, :cond_13

    .line 748
    .line 749
    invoke-virtual {v4, v0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->stopDetection(Ljava/lang/String;)V

    .line 750
    .line 751
    .line 752
    goto :goto_7

    .line 753
    :catchall_1
    move-exception p0

    .line 754
    goto :goto_8

    .line 755
    :cond_13
    const-string v4, "AmbientContextManagerService"

    .line 756
    .line 757
    new-instance v5, Ljava/lang/StringBuilder;

    .line 758
    .line 759
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 760
    .line 761
    .line 762
    const-string/jumbo v6, "service not available for user_id: "

    .line 763
    .line 764
    .line 765
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    .line 767
    .line 768
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 769
    .line 770
    .line 771
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    move-result-object v5

    .line 775
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    .line 777
    .line 778
    goto :goto_7

    .line 779
    :cond_14
    monitor-exit v2

    .line 780
    return v1

    .line 781
    :goto_8
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 782
    throw p0

    .line 783
    :pswitch_a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 784
    .line 785
    .line 786
    move-result-object p1

    .line 787
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v0

    .line 791
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 792
    .line 793
    .line 794
    move-result v0

    .line 795
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 796
    .line 797
    sget-object v2, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;->DEFAULT:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    .line 798
    .line 799
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 800
    .line 801
    monitor-enter v3

    .line 802
    :try_start_3
    invoke-virtual {p0, v0, v2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getServiceForType(ILcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;)Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    .line 803
    .line 804
    .line 805
    move-result-object p0

    .line 806
    if-eqz p0, :cond_15

    .line 807
    .line 808
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getComponentName()Landroid/content/ComponentName;

    .line 809
    .line 810
    .line 811
    move-result-object p0

    .line 812
    monitor-exit v3

    .line 813
    goto :goto_9

    .line 814
    :catchall_2
    move-exception p0

    .line 815
    goto :goto_b

    .line 816
    :cond_15
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 817
    const/4 p0, 0x0

    .line 818
    :goto_9
    if-nez p0, :cond_16

    .line 819
    .line 820
    const-string p0, ""

    .line 821
    .line 822
    goto :goto_a

    .line 823
    :cond_16
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object p0

    .line 827
    :goto_a
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 828
    .line 829
    .line 830
    return v1

    .line 831
    :goto_b
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 832
    throw p0

    .line 833
    :sswitch_data_0
    .sparse-switch
        -0x7c399b40 -> :sswitch_a
        -0x7a19e586 -> :sswitch_9
        -0x6ce969ff -> :sswitch_8
        -0x36dbe914 -> :sswitch_7
        -0x36d18cb8 -> :sswitch_6
        -0x6755c5b -> :sswitch_5
        0x383c9ef9 -> :sswitch_4
        0x41db2e8e -> :sswitch_3
        0x5a9159af -> :sswitch_2
        0x784ce7c8 -> :sswitch_1
        0x7c42deda -> :sswitch_0
    .end sparse-switch

    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public final onHelp()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "AmbientContextEvent commands: "

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "  help"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "    Print this help text."

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 21
    .line 22
    .line 23
    const-string v0, "  start-detection USER_ID PACKAGE_NAME: Starts AmbientContextEvent detection."

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "  start-detection-wearable USER_ID PACKAGE_NAME: Starts AmbientContextEvent detection for wearable."

    .line 29
    .line 30
    const-string v1, "  start-detection-mixed USER_ID PACKAGE_NAME:  Starts AmbientContextEvent detection for mixed events."

    .line 31
    .line 32
    const-string v2, "  stop-detection USER_ID PACKAGE_NAME: Stops AmbientContextEvent detection."

    .line 33
    .line 34
    const-string v3, "  get-last-status-code: Prints the latest request status code."

    .line 35
    .line 36
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "  query-service-status USER_ID PACKAGE_NAME: Prints the service status code."

    .line 40
    .line 41
    const-string v1, "  query-wearable-service-status USER_ID PACKAGE_NAME: Prints the service status code for wearable."

    .line 42
    .line 43
    const-string v2, "  query-mixed-service-status USER_ID PACKAGE_NAME: Prints the service status code for mixed events."

    .line 44
    .line 45
    const-string v3, "  get-bound-package USER_ID:     Print the bound package that implements the service."

    .line 46
    .line 47
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v0, "  set-temporary-service USER_ID [PACKAGE_NAME] [COMPONENT_NAME DURATION]"

    .line 51
    .line 52
    const-string v1, "    Temporarily (for DURATION ms) changes the service implementation."

    .line 53
    .line 54
    const-string v2, "    To reset, call with just the USER_ID argument."

    .line 55
    .line 56
    const-string v3, "  set-temporary-services USER_ID [FIRST_PACKAGE_NAME] [SECOND_PACKAGE_NAME] [COMPONENT_NAME DURATION]"

    .line 57
    .line 58
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
