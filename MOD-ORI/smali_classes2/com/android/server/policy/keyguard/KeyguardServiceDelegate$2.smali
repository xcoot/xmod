.class public final Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    .line 1
    const-string p1, "KeyguardServiceDelegate"

    .line 2
    .line 3
    const-string v0, "!@BOOT: *** Keyguard connected (yay!)"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 9
    .line 10
    new-instance v1, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 11
    .line 12
    iget-object v2, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {p2}, Lcom/android/internal/policy/IKeyguardService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardService;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iget-object v3, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 19
    .line 20
    iget-object v3, v3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mCallback:Lcom/android/server/policy/PhoneWindowManager$1;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p2, v1, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 26
    .line 27
    const-string v4, "*** Started to create KeyguardServiceWrapper."

    .line 28
    .line 29
    const-string v5, "KeyguardServiceWrapper"

    .line 30
    .line 31
    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    new-instance v4, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    .line 35
    .line 36
    invoke-direct {v4, v2, p2, v3}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;-><init>(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;Lcom/android/server/policy/PhoneWindowManager$1;)V

    .line 37
    .line 38
    .line 39
    iput-object v4, v1, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    .line 40
    .line 41
    new-instance p2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v2, "*** Finished to create KeyguardServiceWrapper, mKeyguardStateMonitor="

    .line 44
    .line 45
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-static {v5, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    iput-object v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 59
    .line 60
    new-instance p2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v0, "!@BOOT: *** Created keyguardService="

    .line 63
    .line 64
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 70
    .line 71
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 82
    .line 83
    iget-object p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 84
    .line 85
    iget-boolean p2, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->systemIsReady:Z

    .line 86
    .line 87
    const/4 v0, 0x0

    .line 88
    if-eqz p2, :cond_7

    .line 89
    .line 90
    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onSystemReady()V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 96
    .line 97
    iget-object p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 98
    .line 99
    iget p2, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->currentUser:I

    .line 100
    .line 101
    const/16 v1, -0x2710

    .line 102
    .line 103
    if-eq p2, v1, :cond_0

    .line 104
    .line 105
    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 106
    .line 107
    invoke-virtual {p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setCurrentUser(I)V

    .line 108
    .line 109
    .line 110
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 111
    .line 112
    iget-object p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 113
    .line 114
    iget p2, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    .line 115
    .line 116
    const/4 v1, 0x1

    .line 117
    const/4 v2, 0x2

    .line 118
    if-eq p2, v2, :cond_1

    .line 119
    .line 120
    if-ne p2, v1, :cond_2

    .line 121
    .line 122
    :cond_1
    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 123
    .line 124
    invoke-virtual {p1, v0, v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onStartedWakingUp(IZ)V

    .line 125
    .line 126
    .line 127
    :cond_2
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 128
    .line 129
    iget-object p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 130
    .line 131
    iget p2, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    .line 132
    .line 133
    if-ne p2, v2, :cond_3

    .line 134
    .line 135
    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onFinishedWakingUp()V

    .line 138
    .line 139
    .line 140
    :cond_3
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 141
    .line 142
    iget-object p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 143
    .line 144
    iget p2, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    .line 145
    .line 146
    if-eq p2, v2, :cond_4

    .line 147
    .line 148
    if-ne p2, v1, :cond_5

    .line 149
    .line 150
    :cond_4
    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 151
    .line 152
    new-instance p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;

    .line 153
    .line 154
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 155
    .line 156
    iget-object v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mDrawnListenerWhenConnect:Lcom/android/server/policy/PhoneWindowManager$1;

    .line 157
    .line 158
    invoke-direct {p2, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;-><init>(Lcom/android/server/policy/PhoneWindowManager$1;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 162
    .line 163
    .line 164
    :cond_5
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 165
    .line 166
    iget-object p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 167
    .line 168
    iget p2, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    .line 169
    .line 170
    if-ne p2, v2, :cond_6

    .line 171
    .line 172
    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onScreenTurnedOn()V

    .line 175
    .line 176
    .line 177
    :cond_6
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 178
    .line 179
    const/4 p2, 0x0

    .line 180
    iput-object p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mDrawnListenerWhenConnect:Lcom/android/server/policy/PhoneWindowManager$1;

    .line 181
    .line 182
    :cond_7
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 183
    .line 184
    iget-object p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 185
    .line 186
    iget-boolean p2, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->bootCompleted:Z

    .line 187
    .line 188
    if-eqz p2, :cond_8

    .line 189
    .line 190
    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onBootCompleted()V

    .line 193
    .line 194
    .line 195
    :cond_8
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 196
    .line 197
    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 198
    .line 199
    iget-boolean p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->occluded:Z

    .line 200
    .line 201
    if-eqz p1, :cond_9

    .line 202
    .line 203
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 204
    .line 205
    iget-object p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 206
    .line 207
    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 208
    .line 209
    iget-boolean p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->occluded:Z

    .line 210
    .line 211
    invoke-virtual {p2, p1, v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setOccluded(ZZ)V

    .line 212
    .line 213
    .line 214
    :cond_9
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 215
    .line 216
    iget-object p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 217
    .line 218
    iget-boolean p2, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->enabled:Z

    .line 219
    .line 220
    if-nez p2, :cond_a

    .line 221
    .line 222
    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 223
    .line 224
    invoke-virtual {p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setKeyguardEnabled(Z)V

    .line 225
    .line 226
    .line 227
    :cond_a
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 228
    .line 229
    iget-object p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 230
    .line 231
    iget-boolean p2, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->dreaming:Z

    .line 232
    .line 233
    if-eqz p2, :cond_b

    .line 234
    .line 235
    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 236
    .line 237
    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onDreamingStarted()V

    .line 238
    .line 239
    .line 240
    :cond_b
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 241
    .line 242
    iget-object p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 243
    .line 244
    iget-boolean p2, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->bootAnimFinished:Z

    .line 245
    .line 246
    if-eqz p2, :cond_c

    .line 247
    .line 248
    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 249
    .line 250
    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onFinishedBootAnim()V

    .line 251
    .line 252
    .line 253
    :cond_c
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 254
    .line 255
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 256
    .line 257
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    const-string p1, "KeyguardServiceDelegate"

    .line 2
    .line 3
    const-string v0, "*** Keyguard disconnected (boo!)"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->occluded:Z

    .line 20
    .line 21
    iput-boolean v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    .line 22
    .line 23
    iput-boolean v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->deviceHasKeyguard:Z

    .line 24
    .line 25
    iput-boolean v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->enabled:Z

    .line 26
    .line 27
    iput-boolean v1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->bootAnimFinished:Z

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mHandler:Landroid/os/Handler;

    .line 32
    .line 33
    new-instance p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    return-void
.end method
