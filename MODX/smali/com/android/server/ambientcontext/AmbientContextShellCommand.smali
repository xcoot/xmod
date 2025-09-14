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

    .line 3
    new-instance v0, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    .line 5
    invoke-direct {v0}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;-><init>()V

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->addEventType(I)Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-virtual {v0, v2}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->addEventType(I)Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    .line 17
    move-result-object v0

    .line 18
    const/4 v2, 0x3

    .line 19
    invoke-virtual {v0, v2}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->addEventType(I)Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->build()Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 29
    new-instance v0, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    .line 31
    invoke-direct {v0}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;-><init>()V

    .line 34
    const v2, 0x186a1

    .line 37
    invoke-virtual {v0, v2}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->addEventType(I)Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->build()Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->WEARABLE_REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 47
    new-instance v0, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    .line 49
    invoke-direct {v0}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;-><init>()V

    .line 52
    invoke-virtual {v0, v1}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->addEventType(I)Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0, v2}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->addEventType(I)Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->build()Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 63
    move-result-object v0

    .line 64
    sput-object v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->MIXED_REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 66
    new-instance v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 68
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 71
    sput-object v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

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

    .line 6
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_0
    const v3, 0x186a1

    .line 14
    const/4 v4, -0x1

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 18
    move-result v5

    .line 19
    sparse-switch v5, :sswitch_data_0

    .line 22
    goto/16 :goto_0

    .line 24
    :sswitch_0
    const-string/jumbo v5, "start-detection"

    .line 27
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v5

    .line 31
    if-nez v5, :cond_1

    .line 33
    goto/16 :goto_0

    .line 35
    :cond_1
    const/16 v4, 0xa

    .line 37
    goto/16 :goto_0

    .line 39
    :sswitch_1
    const-string/jumbo v5, "get-last-status-code"

    .line 42
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v5

    .line 46
    if-nez v5, :cond_2

    .line 48
    goto/16 :goto_0

    .line 50
    :cond_2
    const/16 v4, 0x9

    .line 52
    goto/16 :goto_0

    .line 54
    :sswitch_2
    const-string/jumbo v5, "query-service-status"

    .line 57
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v5

    .line 61
    if-nez v5, :cond_3

    .line 63
    goto/16 :goto_0

    .line 65
    :cond_3
    const/16 v4, 0x8

    .line 67
    goto/16 :goto_0

    .line 69
    :sswitch_3
    const-string/jumbo v5, "set-temporary-service"

    .line 72
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v5

    .line 76
    if-nez v5, :cond_4

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

    .line 84
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v5

    .line 88
    if-nez v5, :cond_5

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

    .line 96
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    move-result v5

    .line 100
    if-nez v5, :cond_6

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

    .line 108
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result v5

    .line 112
    if-nez v5, :cond_7

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

    .line 120
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    move-result v5

    .line 124
    if-nez v5, :cond_8

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

    .line 132
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    move-result v5

    .line 136
    if-nez v5, :cond_9

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

    .line 144
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    move-result v5

    .line 148
    if-nez v5, :cond_a

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

    .line 156
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    move-result v5

    .line 160
    if-nez v5, :cond_b

    .line 162
    goto :goto_0

    .line 163
    :cond_b
    move v4, v1

    .line 164
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 167
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 170
    move-result p0

    .line 171
    return p0

    .line 172
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 175
    move-result-object p1

    .line 176
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 179
    move-result p1

    .line 180
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 183
    move-result-object v0

    .line 184
    iget-object v2, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 186
    sget-object v3, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 188
    sget-object v4, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 190
    invoke-static {v4}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->-$$Nest$mcreateAmbientContextObserver(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;

    .line 193
    move-result-object v5

    .line 194
    invoke-virtual {v2, p1, v3, v0, v5}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->startDetection(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;)V

    .line 197
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 199
    new-instance v2, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;

    .line 201
    invoke-direct {v2, v4}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;-><init>(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)V

    .line 204
    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->newClientAdded(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V

    .line 207
    return v1

    .line 208
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 211
    move-result-object p0

    .line 212
    sget-object p1, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 214
    iget p1, p1, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->mLastStatus:I

    .line 216
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 219
    return v1

    .line 220
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 223
    move-result-object p1

    .line 224
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 227
    move-result p1

    .line 228
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 231
    move-result-object v3

    .line 232
    filled-new-array {v2, v0}, [I

    .line 235
    move-result-object v0

    .line 236
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 238
    sget-object v2, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 240
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    new-instance v4, Landroid/os/RemoteCallback;

    .line 245
    new-instance v5, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;

    .line 247
    invoke-direct {v5, v2}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)V

    .line 250
    invoke-direct {v4, v5}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 253
    invoke-virtual {p0, p1, v3, v0, v4}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->queryServiceStatus(ILjava/lang/String;[ILandroid/os/RemoteCallback;)V

    .line 256
    return v1

    .line 257
    :pswitch_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 260
    move-result-object p1

    .line 261
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 264
    move-result-object v0

    .line 265
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 268
    move-result v0

    .line 269
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 272
    move-result-object v3

    .line 273
    if-nez v3, :cond_c

    .line 275
    iget-object v3, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 277
    invoke-virtual {v3, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->resetTemporaryService(I)V

    .line 280
    const-string v3, "AmbientContextDetectionService temporary reset. "

    .line 282
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 287
    invoke-virtual {p0, v0, v2}, Lcom/android/server/infra/AbstractMasterSystemService;->setDefaultServiceEnabled(IZ)Z

    .line 290
    goto :goto_1

    .line 291
    :cond_c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 294
    move-result-object v2

    .line 295
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 298
    move-result v2

    .line 299
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 301
    invoke-virtual {p0, v0, v3, v2}, Lcom/android/server/infra/AbstractMasterSystemService;->setTemporaryService(ILjava/lang/String;I)V

    .line 304
    new-instance p0, Ljava/lang/StringBuilder;

    .line 306
    const-string v0, "AmbientContextDetectionService temporarily set to "

    .line 308
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    const-string v0, " for "

    .line 313
    const-string/jumbo v4, "ms"

    .line 316
    invoke-static {v2, v3, v0, v4, p0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 319
    move-result-object p0

    .line 320
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    :goto_1
    return v1

    .line 324
    :pswitch_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 327
    move-result-object p1

    .line 328
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 331
    move-result p1

    .line 332
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 335
    move-result-object v0

    .line 336
    filled-new-array {v3}, [I

    .line 339
    move-result-object v2

    .line 340
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 342
    sget-object v3, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 344
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    new-instance v4, Landroid/os/RemoteCallback;

    .line 349
    new-instance v5, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;

    .line 351
    invoke-direct {v5, v3}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)V

    .line 354
    invoke-direct {v4, v5}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 357
    invoke-virtual {p0, p1, v0, v2, v4}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->queryServiceStatus(ILjava/lang/String;[ILandroid/os/RemoteCallback;)V

    .line 360
    return v1

    .line 361
    :pswitch_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 364
    move-result-object p1

    .line 365
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 368
    move-result-object v0

    .line 369
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 372
    move-result v0

    .line 373
    iget-object v3, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 375
    invoke-virtual {v3, v0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->setDefaultServiceEnabled(IZ)Z

    .line 378
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 381
    move-result-object v3

    .line 382
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 385
    move-result-object v4

    .line 386
    if-eqz v3, :cond_11

    .line 388
    if-nez v4, :cond_d

    .line 390
    goto/16 :goto_5

    .line 392
    :cond_d
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 395
    move-result-object v3

    .line 396
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 399
    move-result-object v4

    .line 400
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 403
    move-result v4

    .line 404
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 406
    iget-object v5, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 408
    const-string/jumbo v6, "setTemporaryService("

    .line 411
    const-string v7, ") to "

    .line 413
    invoke-static {v0, v6, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    move-result-object v6

    .line 417
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 420
    move-result-object v7

    .line 421
    const-string v8, " for "

    .line 423
    const-string/jumbo v9, "ms"

    .line 426
    invoke-static {v4, v7, v8, v9, v6}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 429
    move-result-object v6

    .line 430
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v5, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 435
    if-nez v5, :cond_e

    .line 437
    goto :goto_3

    .line 438
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->enforceCallingPermissionForManagement()V

    .line 441
    const/16 v5, 0x7530

    .line 443
    if-gt v4, v5, :cond_10

    .line 445
    iget-object v5, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 447
    monitor-enter v5

    .line 448
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 451
    move-result-object v6

    .line 452
    if-eqz v6, :cond_f

    .line 454
    invoke-virtual {v6}, Lcom/android/server/infra/AbstractPerUserSystemService;->removeSelfFromCache()V

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

    .line 462
    invoke-virtual {p0, v0, v4, v3}, Lcom/android/server/infra/ServiceNameBaseResolver;->setTemporaryServices(II[Ljava/lang/String;)V

    .line 465
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    :goto_3
    const-string p0, "AmbientContextShellCommand"

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    .line 470
    const-string v5, "AmbientContextDetectionService temporarily set to "

    .line 472
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 475
    aget-object v5, v3, v1

    .line 477
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    const-string v5, " and "

    .line 482
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    aget-object v5, v3, v2

    .line 487
    const-string v6, " for "

    .line 489
    const-string/jumbo v7, "ms"

    .line 492
    invoke-static {v4, v5, v6, v7, v0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 495
    move-result-object v0

    .line 496
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    new-instance p0, Ljava/lang/StringBuilder;

    .line 501
    const-string v0, "AmbientContextDetectionService temporarily set to "

    .line 503
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 506
    aget-object v0, v3, v1

    .line 508
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    const-string v0, " and "

    .line 513
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    aget-object v0, v3, v2

    .line 518
    const-string v2, " for "

    .line 520
    const-string/jumbo v3, "ms"

    .line 523
    invoke-static {v4, v0, v2, v3, p0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 526
    move-result-object p0

    .line 527
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

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

    .line 535
    const-string p1, "Max duration is 30000 (called with "

    .line 537
    const-string v0, ")"

    .line 539
    invoke-static {v4, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 542
    move-result-object p1

    .line 543
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 546
    throw p0

    .line 547
    :cond_11
    :goto_5
    iget-object v3, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 549
    invoke-virtual {v3, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->resetTemporaryService(I)V

    .line 552
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 554
    invoke-virtual {p0, v0, v2}, Lcom/android/server/infra/AbstractMasterSystemService;->setDefaultServiceEnabled(IZ)Z

    .line 557
    const-string p0, "AmbientContextDetectionService temporary reset."

    .line 559
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    :goto_6
    return v1

    .line 563
    :pswitch_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 566
    move-result-object p1

    .line 567
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 570
    move-result p1

    .line 571
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 574
    move-result-object v0

    .line 575
    iget-object v2, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 577
    sget-object v3, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->MIXED_REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 579
    sget-object v4, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 581
    invoke-static {v4}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->-$$Nest$mcreateAmbientContextObserver(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;

    .line 584
    move-result-object v5

    .line 585
    invoke-virtual {v2, p1, v3, v0, v5}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->startDetection(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;)V

    .line 588
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 590
    new-instance v2, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;

    .line 592
    invoke-direct {v2, v4}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;-><init>(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)V

    .line 595
    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->newClientAdded(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V

    .line 598
    return v1

    .line 599
    :pswitch_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 602
    move-result-object p1

    .line 603
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 606
    move-result p1

    .line 607
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 610
    move-result-object v0

    .line 611
    iget-object v2, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 613
    sget-object v3, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->WEARABLE_REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 615
    sget-object v4, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 617
    invoke-static {v4}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->-$$Nest$mcreateAmbientContextObserver(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;

    .line 620
    move-result-object v5

    .line 621
    invoke-virtual {v2, p1, v3, v0, v5}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->startDetection(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;)V

    .line 624
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 626
    new-instance v2, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;

    .line 628
    invoke-direct {v2, v4}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;-><init>(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)V

    .line 631
    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->newClientAdded(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V

    .line 634
    return v1

    .line 635
    :pswitch_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 638
    move-result-object p1

    .line 639
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 642
    move-result p1

    .line 643
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 646
    move-result-object v0

    .line 647
    filled-new-array {v2, v3}, [I

    .line 650
    move-result-object v2

    .line 651
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 653
    sget-object v3, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    .line 655
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 658
    new-instance v4, Landroid/os/RemoteCallback;

    .line 660
    new-instance v5, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;

    .line 662
    invoke-direct {v5, v3}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)V

    .line 665
    invoke-direct {v4, v5}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 668
    invoke-virtual {p0, p1, v0, v2, v4}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->queryServiceStatus(ILjava/lang/String;[ILandroid/os/RemoteCallback;)V

    .line 671
    return v1

    .line 672
    :pswitch_9
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 675
    move-result-object p1

    .line 676
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 679
    move-result p1

    .line 680
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 683
    move-result-object v0

    .line 684
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 686
    iget-object v2, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mContext:Landroid/content/Context;

    .line 688
    const-string v3, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    .line 690
    const-string v4, "AmbientContextManagerService"

    .line 692
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 697
    monitor-enter v2

    .line 698
    :try_start_2
    iget-object v3, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mExistingClientRequests:Ljava/util/Set;

    .line 700
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 703
    move-result-object v3

    .line 704
    :cond_12
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 707
    move-result v4

    .line 708
    if-eqz v4, :cond_14

    .line 710
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 713
    move-result-object v4

    .line 714
    check-cast v4, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;

    .line 716
    const-string v5, "AmbientContextManagerService"

    .line 718
    const-string v6, "Looping through clients"

    .line 720
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-virtual {v4, p1, v0}, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->hasUserIdAndPackageName(ILjava/lang/String;)Z

    .line 726
    move-result v5

    .line 727
    if-eqz v5, :cond_12

    .line 729
    const-string v5, "AmbientContextManagerService"

    .line 731
    const-string/jumbo v6, "we have an existing client"

    .line 734
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v4, v4, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mRequest:Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 739
    invoke-virtual {v4}, Landroid/app/ambientcontext/AmbientContextEventRequest;->getEventTypes()Ljava/util/Set;

    .line 742
    move-result-object v4

    .line 743
    invoke-virtual {p0, p1, v4}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getAmbientContextManagerPerUserServiceForEventTypes(ILjava/util/Set;)Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    .line 746
    move-result-object v4

    .line 747
    if-eqz v4, :cond_13

    .line 749
    invoke-virtual {v4, v0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->stopDetection(Ljava/lang/String;)V

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

    .line 757
    new-instance v5, Ljava/lang/StringBuilder;

    .line 759
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 762
    const-string/jumbo v6, "service not available for user_id: "

    .line 765
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 771
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 774
    move-result-object v5

    .line 775
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 786
    move-result-object p1

    .line 787
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 790
    move-result-object v0

    .line 791
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 794
    move-result v0

    .line 795
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 797
    sget-object v2, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;->DEFAULT:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    .line 799
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 801
    monitor-enter v3

    .line 802
    :try_start_3
    invoke-virtual {p0, v0, v2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getServiceForType(ILcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;)Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    .line 805
    move-result-object p0

    .line 806
    if-eqz p0, :cond_15

    .line 808
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getComponentName()Landroid/content/ComponentName;

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

    .line 820
    const-string p0, ""

    .line 822
    goto :goto_a

    .line 823
    :cond_16
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 826
    move-result-object p0

    .line 827
    :goto_a
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

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

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "AmbientContextEvent commands: "

    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    const-string v0, "  help"

    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    const-string v0, "    Print this help text."

    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 23
    const-string v0, "  start-detection USER_ID PACKAGE_NAME: Starts AmbientContextEvent detection."

    .line 25
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    const-string v0, "  start-detection-wearable USER_ID PACKAGE_NAME: Starts AmbientContextEvent detection for wearable."

    .line 30
    const-string v1, "  start-detection-mixed USER_ID PACKAGE_NAME:  Starts AmbientContextEvent detection for mixed events."

    .line 32
    const-string v2, "  stop-detection USER_ID PACKAGE_NAME: Stops AmbientContextEvent detection."

    .line 34
    const-string v3, "  get-last-status-code: Prints the latest request status code."

    .line 36
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "  query-service-status USER_ID PACKAGE_NAME: Prints the service status code."

    .line 41
    const-string v1, "  query-wearable-service-status USER_ID PACKAGE_NAME: Prints the service status code for wearable."

    .line 43
    const-string v2, "  query-mixed-service-status USER_ID PACKAGE_NAME: Prints the service status code for mixed events."

    .line 45
    const-string v3, "  get-bound-package USER_ID:     Print the bound package that implements the service."

    .line 47
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v0, "  set-temporary-service USER_ID [PACKAGE_NAME] [COMPONENT_NAME DURATION]"

    .line 52
    const-string v1, "    Temporarily (for DURATION ms) changes the service implementation."

    .line 54
    const-string v2, "    To reset, call with just the USER_ID argument."

    .line 56
    const-string v3, "  set-temporary-services USER_ID [FIRST_PACKAGE_NAME] [SECOND_PACKAGE_NAME] [COMPONENT_NAME DURATION]"

    .line 58
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    return-void
.end method
