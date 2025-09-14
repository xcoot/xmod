.class public final Lcom/android/server/rotationresolver/RotationResolverShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sTestableRotationCallbackInternal:Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;


# instance fields
.field public final mService:Lcom/android/server/rotationresolver/RotationResolverManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    iput v1, v0, Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;->mLastCallbackResultCode:I

    .line 8
    .line 9
    sput-object v0, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->sTestableRotationCallbackInternal:Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->mService:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 v1, -0x1

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    sparse-switch v2, :sswitch_data_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :sswitch_0
    const-string v2, "get-last-resolution"

    .line 19
    .line 20
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v1, 0x3

    .line 28
    goto :goto_0

    .line 29
    :sswitch_1
    const-string/jumbo v2, "set-temporary-service"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 v1, 0x2

    .line 40
    goto :goto_0

    .line 41
    :sswitch_2
    const-string/jumbo v2, "resolve-rotation"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_3

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const/4 v1, 0x1

    .line 52
    goto :goto_0

    .line 53
    :sswitch_3
    const-string v2, "get-bound-package"

    .line 54
    .line 55
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_4

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_4
    move v1, v0

    .line 63
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    return p0

    .line 71
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    sget-object p1, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->sTestableRotationCallbackInternal:Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;

    .line 76
    .line 77
    iget p1, p1, Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;->mLastCallbackResultCode:I

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 80
    .line 81
    .line 82
    return v0

    .line 83
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    if-nez v2, :cond_5

    .line 100
    .line 101
    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->mService:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    .line 102
    .line 103
    invoke-virtual {p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->resetTemporaryService(I)V

    .line 104
    .line 105
    .line 106
    const-string p0, "RotationResolverService temporary reset. "

    .line 107
    .line 108
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->mService:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    .line 121
    .line 122
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/infra/AbstractMasterSystemService;->setTemporaryService(ILjava/lang/String;I)V

    .line 123
    .line 124
    .line 125
    new-instance p0, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v1, "RotationResolverService temporarily set to "

    .line 128
    .line 129
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string v1, " for "

    .line 133
    .line 134
    const-string/jumbo v4, "ms"

    .line 135
    .line 136
    .line 137
    invoke-static {v3, v2, v1, v4, p0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :goto_1
    return v0

    .line 145
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    new-instance v8, Landroid/service/rotationresolver/RotationResolutionRequest;

    .line 154
    .line 155
    const-string v2, ""

    .line 156
    .line 157
    const/4 v3, 0x0

    .line 158
    const/4 v4, 0x0

    .line 159
    const/4 v5, 0x1

    .line 160
    const-wide/16 v6, 0x7d0

    .line 161
    .line 162
    move-object v1, v8

    .line 163
    invoke-direct/range {v1 .. v7}, Landroid/service/rotationresolver/RotationResolutionRequest;-><init>(Ljava/lang/String;IIZJ)V

    .line 164
    .line 165
    .line 166
    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->mService:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    .line 167
    .line 168
    sget-object v1, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->sTestableRotationCallbackInternal:Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;

    .line 169
    .line 170
    const-string/jumbo v2, "service not available for user_id: "

    .line 171
    .line 172
    .line 173
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 174
    .line 175
    monitor-enter v3

    .line 176
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    check-cast p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    .line 181
    .line 182
    if-eqz p0, :cond_6

    .line 183
    .line 184
    new-instance p1, Landroid/os/CancellationSignal;

    .line 185
    .line 186
    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v1, v8, p1}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->resolveRotationLocked(Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/CancellationSignal;)V

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :catchall_0
    move-exception p0

    .line 194
    goto :goto_3

    .line 195
    :cond_6
    const-string p0, "RotationResolverManagerService"

    .line 196
    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    :goto_2
    monitor-exit v3

    .line 213
    return v0

    .line 214
    :goto_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    throw p0

    .line 216
    :pswitch_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->mService:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    .line 229
    .line 230
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 231
    .line 232
    monitor-enter v2

    .line 233
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    check-cast p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    .line 238
    .line 239
    if-eqz p0, :cond_7

    .line 240
    .line 241
    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->getComponentName()Landroid/content/ComponentName;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    monitor-exit v2

    .line 246
    goto :goto_4

    .line 247
    :catchall_1
    move-exception p0

    .line 248
    goto :goto_6

    .line 249
    :cond_7
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 250
    const/4 p0, 0x0

    .line 251
    :goto_4
    if-nez p0, :cond_8

    .line 252
    .line 253
    const-string p0, ""

    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_8
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    :goto_5
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    return v0

    .line 264
    :goto_6
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 265
    throw p0

    .line 266
    nop

    .line 267
    :sswitch_data_0
    .sparse-switch
        -0x7c399b40 -> :sswitch_3
        0x16ed7a3f -> :sswitch_2
        0x41db2e8e -> :sswitch_1
        0x6c821bcc -> :sswitch_0
    .end sparse-switch

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    :pswitch_data_0
    .packed-switch 0x0
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
    const-string v0, "Rotation Resolver commands: "

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
    const-string v0, "  resolve-rotation USER_ID: request a rotation resolution."

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "  get-last-resolution: show the last rotation resolution result."

    .line 29
    .line 30
    const-string v1, "  get-bound-package USER_ID:"

    .line 31
    .line 32
    const-string v2, "    Print the bound package that implements the service."

    .line 33
    .line 34
    const-string v3, "  set-temporary-service USER_ID [COMPONENT_NAME DURATION]"

    .line 35
    .line 36
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "    Temporarily (for DURATION ms) changes the service implementation."

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v0, "    To reset, call with just the USER_ID argument."

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
