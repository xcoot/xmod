.class public final Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAuthResultCallback:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

.field public mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

.field public final mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mConnectivityStateCallback:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;

.field public final mContext:Landroid/content/Context;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mInternalState:I

.field public final mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

.field public mSessionEventListener:Lcom/samsung/accessory/manager/SAccessoryManager$1;

.field public mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

.field public mSessionThread:Ljava/lang/Thread;

.field public mState:I

.field public final mStateLock:Ljava/lang/Object;

.field public final mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile mTurnedOffWhileRunning:Z


# direct methods
.method public static -$$Nest$mhandleStopSession(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "handleStopSession, force? = "

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "SAccessoryManager_AuthenticationSession"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    const-string/jumbo v0, "waiting for session thread to terminate"

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;

    .line 39
    .line 40
    iput-boolean v2, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->isInterrupted:Z

    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;

    .line 43
    .line 44
    const-wide/16 v3, 0xbb8

    .line 45
    .line 46
    invoke-virtual {v0, v3, v4}, Ljava/lang/Thread;->join(J)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    const-string v0, "Thread is still running.. force stop session!"

    .line 58
    .line 59
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move p1, v2

    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :goto_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    :goto_2
    const-string/jumbo v0, "session thread is terminated"

    .line 74
    .line 75
    .line 76
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    :cond_2
    const/16 v0, 0xb

    .line 80
    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    .line 84
    .line 85
    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 89
    .line 90
    const/16 v3, 0x1f

    .line 91
    .line 92
    invoke-virtual {v0, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_3
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    .line 97
    .line 98
    invoke-virtual {v3, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    const-string/jumbo p1, "session will be restarted.. "

    .line 105
    .line 106
    .line 107
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    iput v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I

    .line 111
    .line 112
    goto :goto_5

    .line 113
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 114
    .line 115
    const/4 v3, 0x4

    .line 116
    if-eqz v0, :cond_5

    .line 117
    .line 118
    invoke-virtual {v0, v3}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setSessionState(I)V

    .line 119
    .line 120
    .line 121
    :cond_5
    invoke-virtual {p0, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setState(I)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 125
    .line 126
    if-eqz v0, :cond_8

    .line 127
    .line 128
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    .line 129
    .line 130
    if-eqz v0, :cond_8

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->isEnabledInternally()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_8

    .line 137
    .line 138
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 139
    .line 140
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->isEnabled()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_6

    .line 147
    .line 148
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 149
    .line 150
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->disable()Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_6

    .line 157
    .line 158
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 159
    .line 160
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 161
    .line 162
    .line 163
    if-nez p1, :cond_8

    .line 164
    .line 165
    const-string/jumbo p1, "waiting for connectivity off"

    .line 166
    .line 167
    .line 168
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    const/4 p1, 0x2

    .line 172
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I

    .line 173
    .line 174
    goto :goto_5

    .line 175
    :cond_6
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTurnedOffWhileRunning:Z

    .line 176
    .line 177
    if-eqz v0, :cond_7

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_7
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_8

    .line 187
    .line 188
    const-string/jumbo v0, "waiting for connectivity on"

    .line 189
    .line 190
    .line 191
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    if-nez p1, :cond_8

    .line 195
    .line 196
    iput v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I

    .line 197
    .line 198
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 199
    .line 200
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 201
    .line 202
    .line 203
    goto :goto_5

    .line 204
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 205
    .line 206
    const/4 v0, 0x0

    .line 207
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 208
    .line 209
    .line 210
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 211
    .line 212
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 213
    .line 214
    .line 215
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    .line 216
    .line 217
    const/16 p1, 0xd

    .line 218
    .line 219
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 220
    .line 221
    .line 222
    :goto_5
    return-void
.end method

.method public static -$$Nest$mhandleTearDown(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "SAccessoryManager_AuthenticationSession"

    .line 5
    .line 6
    const-string v1, "handleTearDown"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 12
    .line 13
    const/4 v1, 0x5

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :try_start_0
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->sendStopUsbAuth()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setSessionState(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->close()V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mHandlerThread:Landroid/os/HandlerThread;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mHandlerThread:Landroid/os/HandlerThread;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 56
    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mHandlerThread:Landroid/os/HandlerThread;

    .line 60
    .line 61
    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setState(I)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    const/4 v1, 0x4

    .line 69
    invoke-virtual {v0, v1, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$1;->onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    .line 73
    .line 74
    const/16 v0, 0xe

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mState:I

    .line 9
    .line 10
    new-instance v0, Ljava/lang/Object;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mStateLock:Ljava/lang/Object;

    .line 16
    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthResultCallback:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    .line 36
    .line 37
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTurnedOffWhileRunning:Z

    .line 38
    .line 39
    new-instance v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;-><init>(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectivityStateCallback:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    new-instance p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 49
    .line 50
    invoke-direct {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 54
    .line 55
    iput-object p2, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mRequestPkg:Ljava/lang/String;

    .line 56
    .line 57
    iput p3, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mConnectivityType:I

    .line 58
    .line 59
    const/16 p0, 0x5a

    .line 60
    .line 61
    invoke-virtual {p1, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public static convertMsg(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :pswitch_1
    const-string p0, "MSG_SESSION_TIMEOUT"

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_2
    const-string p0, "MSG_SESSION_REQUEST_TEAR_DOWN"

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_3
    const-string p0, "MSG_SESSION_STOP"

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_4
    const-string p0, "MSG_SESSION_START"

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_5
    const-string p0, "MSG_CONNECTIVITY_DISCONNECTED"

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_6
    const-string p0, "MSG_CONNECTIVITY_CONNECTED"

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_7
    const-string p0, "MSG_CONNECTIVITY_CONNECT"

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_8
    const-string p0, "MSG_CONNECTIVITY_TURNING_OFF"

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_9
    const-string p0, "MSG_CONNECTIVITY_OFF"

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_a
    const-string p0, "MSG_CONNECTIVITY_ON"

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_b
    const-string p0, "MSG_CONNECTIVITY_READY"

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_c
    const-string p0, "MSG_CONNECTIVITY_SET_CONNECTION"

    .line 40
    .line 41
    return-object p0

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p1, " Current AuthenticationSession state:"

    .line 2
    .line 3
    const-string p3, "  state = "

    .line 4
    .line 5
    invoke-static {p2, p1, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getSessionState()I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string p3, "  internal state = "

    .line 26
    .line 27
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget p3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I

    .line 31
    .line 32
    const-string v0, "  mConnectAfterEnable = "

    .line 33
    .line 34
    invoke-static {p1, p3, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object p3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    .line 40
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string p3, "  mTeardownRequested = "

    .line 57
    .line 58
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    .line 63
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 78
    .line 79
    if-eqz p0, :cond_0

    .line 80
    .line 81
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    .line 82
    .line 83
    if-eqz p0, :cond_0

    .line 84
    .line 85
    invoke-virtual {p0, p2}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->dump(Ljava/io/PrintWriter;)V

    .line 86
    .line 87
    .line 88
    :cond_0
    return-void
.end method

.method public final getSessionState()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mStateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mState:I

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final replayAuthfail(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    invoke-virtual {p1, v0, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$1;->onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->startAuthChall()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 7
    .line 8
    .line 9
    :goto_0
    const-string v0, "SAccessoryManager_AuthenticationSession"

    .line 10
    .line 11
    const-string v1, "disconnect"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v1, v1, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->disconnect()V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setSessionState(I)V

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-virtual {p0, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setState(I)V

    .line 37
    .line 38
    .line 39
    iget-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTurnedOffWhileRunning:Z

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string/jumbo v2, "mTurnedOffWhileRunning ? "

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTurnedOffWhileRunning:Z

    .line 52
    .line 53
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 57
    .line 58
    const/16 v1, 0xc

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 61
    .line 62
    .line 63
    :cond_3
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    .line 64
    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    const/4 v1, 0x3

    .line 68
    invoke-virtual {v0, v1, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$1;->onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 69
    .line 70
    .line 71
    :cond_4
    return-void
.end method

.method public final setState(I)V
    .locals 4

    .line 1
    const-string v0, "Session state "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mStateLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    const-string v2, "SAccessoryManager_AuthenticationSession"

    .line 7
    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mState:I

    .line 14
    .line 15
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->convertMsg(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, " -> "

    .line 23
    .line 24
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->convertMsg(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mState:I

    .line 42
    .line 43
    monitor-exit v1

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0
.end method

.method public final startAuthChall()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v4, 0x1

    .line 4
    const/4 v6, 0x0

    .line 5
    iget-object v7, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 6
    .line 7
    if-nez v7, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v8, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 11
    .line 12
    check-cast v7, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v9, "onAuthenticationChallenge, type ="

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget v9, v7, Lcom/samsung/accessory/manager/authentication/Authenticator;->mType:I

    .line 23
    .line 24
    const-string v10, "SAccessoryManager_AuthenticatorClientImpl"

    .line 25
    .line 26
    invoke-static {v0, v9, v10}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget v0, v7, Lcom/samsung/accessory/manager/authentication/Authenticator;->mType:I

    .line 30
    .line 31
    iget-object v9, v7, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    .line 32
    .line 33
    const-string v11, "Extra is not exist."

    .line 34
    .line 35
    const-string v12, "Url is not exist."

    .line 36
    .line 37
    const-string v13, "Read id fail."

    .line 38
    .line 39
    const-string v1, "3rd data is not exist."

    .line 40
    .line 41
    const-string v15, "atqS fail, call sendStopAuth()"

    .line 42
    .line 43
    const-string v3, "Success auth, call sendStopAuth()"

    .line 44
    .line 45
    const/16 v5, 0xc

    .line 46
    .line 47
    const-string/jumbo v14, "onAuthenticationChallenge, mConnection is null!"

    .line 48
    .line 49
    .line 50
    if-ne v0, v4, :cond_1f

    .line 51
    .line 52
    const-string v0, "Received atqS Data: "

    .line 53
    .line 54
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 55
    .line 56
    .line 57
    move-result v16

    .line 58
    iget-object v2, v7, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    .line 59
    .line 60
    if-nez v2, :cond_1

    .line 61
    .line 62
    invoke-static {v10, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_7

    .line 69
    .line 70
    :cond_1
    :try_start_0
    iput v4, v8, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    .line 71
    .line 72
    invoke-virtual {v2, v8}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    if-eqz v2, :cond_f

    .line 77
    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v2}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->byteArrayToString([B)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    sget-object v0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->NOT_SUPPORT:[B

    .line 98
    .line 99
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 100
    .line 101
    .line 102
    array-length v0, v2

    .line 103
    if-ne v0, v4, :cond_d

    .line 104
    .line 105
    aget-byte v0, v2, v6

    .line 106
    .line 107
    if-ne v0, v4, :cond_2

    .line 108
    .line 109
    const/16 v0, 0x14

    .line 110
    .line 111
    invoke-virtual {v8, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_0

    .line 115
    .line 116
    :catch_0
    move-exception v0

    .line 117
    goto/16 :goto_2

    .line 118
    .line 119
    :cond_2
    const/16 v1, -0x4f

    .line 120
    .line 121
    if-ne v0, v1, :cond_3

    .line 122
    .line 123
    const/16 v0, 0x15

    .line 124
    .line 125
    invoke-virtual {v8, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_3
    const/16 v1, -0x4e

    .line 130
    .line 131
    if-ne v0, v1, :cond_4

    .line 132
    .line 133
    const/16 v0, 0x16

    .line 134
    .line 135
    invoke-virtual {v8, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_4
    const/16 v1, -0x20

    .line 140
    .line 141
    if-ne v0, v1, :cond_5

    .line 142
    .line 143
    const/16 v0, 0xd

    .line 144
    .line 145
    invoke-virtual {v8, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_5
    const/16 v1, -0xf

    .line 150
    .line 151
    if-ne v0, v1, :cond_6

    .line 152
    .line 153
    const/16 v0, 0x28

    .line 154
    .line 155
    invoke-virtual {v8, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_6
    const/16 v1, -0xe

    .line 160
    .line 161
    if-ne v0, v1, :cond_7

    .line 162
    .line 163
    const/16 v0, 0x29

    .line 164
    .line 165
    invoke-virtual {v8, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_7
    const/16 v1, -0xd

    .line 170
    .line 171
    if-ne v0, v1, :cond_8

    .line 172
    .line 173
    const/16 v0, 0x2a

    .line 174
    .line 175
    invoke-virtual {v8, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 176
    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_8
    const/16 v1, -0xc

    .line 180
    .line 181
    if-ne v0, v1, :cond_9

    .line 182
    .line 183
    const/16 v0, 0x2b

    .line 184
    .line 185
    invoke-virtual {v8, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 186
    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_9
    const/16 v1, -0xb

    .line 190
    .line 191
    if-ne v0, v1, :cond_a

    .line 192
    .line 193
    const/16 v0, 0x2c

    .line 194
    .line 195
    invoke-virtual {v8, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 196
    .line 197
    .line 198
    goto :goto_0

    .line 199
    :cond_a
    const/16 v1, -0xa

    .line 200
    .line 201
    if-ne v0, v1, :cond_b

    .line 202
    .line 203
    const/16 v0, 0x2d

    .line 204
    .line 205
    invoke-virtual {v8, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 206
    .line 207
    .line 208
    goto :goto_0

    .line 209
    :cond_b
    const/16 v1, -0x9

    .line 210
    .line 211
    if-ne v0, v1, :cond_c

    .line 212
    .line 213
    const/16 v0, 0x2e

    .line 214
    .line 215
    invoke-virtual {v8, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 216
    .line 217
    .line 218
    goto :goto_0

    .line 219
    :cond_c
    const/16 v0, 0x1b

    .line 220
    .line 221
    invoke-virtual {v8, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 222
    .line 223
    .line 224
    :goto_0
    invoke-virtual {v7}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_7

    .line 228
    .line 229
    :cond_d
    array-length v0, v2

    .line 230
    const/16 v5, 0x10

    .line 231
    .line 232
    if-ne v0, v5, :cond_e

    .line 233
    .line 234
    invoke-virtual {v9, v4, v2, v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->parseData(I[BZ)Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    goto :goto_1

    .line 239
    :cond_e
    const-string v0, "atqS is not correct"

    .line 240
    .line 241
    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    const/16 v0, 0x19

    .line 245
    .line 246
    invoke-virtual {v8, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v7}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_7

    .line 253
    .line 254
    :cond_f
    const-string v0, " atqS is null"

    .line 255
    .line 256
    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    move v0, v6

    .line 260
    :goto_1
    if-nez v0, :cond_10

    .line 261
    .line 262
    const/16 v0, 0x1a

    .line 263
    .line 264
    invoke-virtual {v8, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 265
    .line 266
    .line 267
    invoke-static {v10, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    invoke-virtual {v7}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()V

    .line 271
    .line 272
    .line 273
    goto/16 :goto_7

    .line 274
    .line 275
    :cond_10
    iget-boolean v0, v8, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isKeyChanged:Z

    .line 276
    .line 277
    if-nez v0, :cond_17

    .line 278
    .line 279
    const/4 v0, 0x2

    .line 280
    invoke-virtual {v7, v8, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-nez v2, :cond_11

    .line 285
    .line 286
    invoke-virtual {v7}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()V

    .line 287
    .line 288
    .line 289
    goto/16 :goto_7

    .line 290
    .line 291
    :cond_11
    const/4 v0, 0x3

    .line 292
    invoke-virtual {v7, v8, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    if-nez v2, :cond_12

    .line 297
    .line 298
    invoke-virtual {v7}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()V

    .line 299
    .line 300
    .line 301
    goto/16 :goto_7

    .line 302
    .line 303
    :cond_12
    const/4 v0, 0x5

    .line 304
    invoke-virtual {v7, v8, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    if-nez v2, :cond_13

    .line 309
    .line 310
    invoke-static {v10, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .line 312
    .line 313
    invoke-virtual {v7}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()V

    .line 314
    .line 315
    .line 316
    goto/16 :goto_7

    .line 317
    .line 318
    :cond_13
    iget v0, v8, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    .line 319
    .line 320
    if-ne v0, v4, :cond_14

    .line 321
    .line 322
    const/16 v2, 0x9

    .line 323
    .line 324
    invoke-virtual {v7, v8, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    if-nez v0, :cond_16

    .line 329
    .line 330
    invoke-static {v10, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .line 332
    .line 333
    if-nez v16, :cond_16

    .line 334
    .line 335
    invoke-virtual {v7}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()V

    .line 336
    .line 337
    .line 338
    goto/16 :goto_7

    .line 339
    .line 340
    :cond_14
    const/4 v2, 0x2

    .line 341
    if-ne v0, v2, :cond_15

    .line 342
    .line 343
    const/16 v2, 0xa

    .line 344
    .line 345
    invoke-virtual {v7, v8, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    if-nez v0, :cond_16

    .line 350
    .line 351
    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    .line 353
    .line 354
    if-nez v16, :cond_16

    .line 355
    .line 356
    invoke-virtual {v7}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()V

    .line 357
    .line 358
    .line 359
    goto/16 :goto_7

    .line 360
    .line 361
    :cond_15
    const/4 v2, 0x3

    .line 362
    if-ne v0, v2, :cond_16

    .line 363
    .line 364
    const/16 v0, 0xb

    .line 365
    .line 366
    invoke-virtual {v7, v8, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    .line 367
    .line 368
    .line 369
    move-result v2

    .line 370
    if-nez v2, :cond_16

    .line 371
    .line 372
    invoke-static {v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    .line 374
    .line 375
    if-nez v16, :cond_16

    .line 376
    .line 377
    invoke-virtual {v7}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()V

    .line 378
    .line 379
    .line 380
    goto/16 :goto_7

    .line 381
    .line 382
    :cond_16
    invoke-static {v10, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .line 384
    .line 385
    :cond_17
    iget-boolean v0, v8, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isKeyChanged:Z

    .line 386
    .line 387
    if-ne v0, v4, :cond_1e

    .line 388
    .line 389
    const/16 v0, 0x8

    .line 390
    .line 391
    invoke-virtual {v7, v8, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    .line 392
    .line 393
    .line 394
    move-result v0

    .line 395
    if-nez v0, :cond_18

    .line 396
    .line 397
    invoke-virtual {v7}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()V

    .line 398
    .line 399
    .line 400
    goto/16 :goto_7

    .line 401
    .line 402
    :cond_18
    const/4 v0, 0x3

    .line 403
    invoke-virtual {v7, v8, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    .line 404
    .line 405
    .line 406
    move-result v2

    .line 407
    if-nez v2, :cond_19

    .line 408
    .line 409
    invoke-virtual {v7}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()V

    .line 410
    .line 411
    .line 412
    goto/16 :goto_7

    .line 413
    .line 414
    :cond_19
    const/4 v0, 0x5

    .line 415
    invoke-virtual {v7, v8, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    .line 416
    .line 417
    .line 418
    move-result v0

    .line 419
    if-nez v0, :cond_1a

    .line 420
    .line 421
    invoke-static {v10, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .line 423
    .line 424
    invoke-virtual {v7}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()V

    .line 425
    .line 426
    .line 427
    goto/16 :goto_7

    .line 428
    .line 429
    :cond_1a
    iget v0, v8, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    .line 430
    .line 431
    if-ne v0, v4, :cond_1b

    .line 432
    .line 433
    const/16 v2, 0x9

    .line 434
    .line 435
    invoke-virtual {v7, v8, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    .line 436
    .line 437
    .line 438
    move-result v0

    .line 439
    if-nez v0, :cond_1d

    .line 440
    .line 441
    const-string/jumbo v0, "url is not exist."

    .line 442
    .line 443
    .line 444
    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    .line 446
    .line 447
    if-nez v16, :cond_1d

    .line 448
    .line 449
    invoke-virtual {v7}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()V

    .line 450
    .line 451
    .line 452
    goto/16 :goto_7

    .line 453
    .line 454
    :cond_1b
    const/4 v2, 0x2

    .line 455
    if-ne v0, v2, :cond_1c

    .line 456
    .line 457
    const/16 v2, 0xa

    .line 458
    .line 459
    invoke-virtual {v7, v8, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    .line 460
    .line 461
    .line 462
    move-result v0

    .line 463
    if-nez v0, :cond_1d

    .line 464
    .line 465
    const-string v0, "extra is not exist."

    .line 466
    .line 467
    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    .line 469
    .line 470
    if-nez v16, :cond_1d

    .line 471
    .line 472
    invoke-virtual {v7}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()V

    .line 473
    .line 474
    .line 475
    goto/16 :goto_7

    .line 476
    .line 477
    :cond_1c
    const/4 v2, 0x3

    .line 478
    if-ne v0, v2, :cond_1d

    .line 479
    .line 480
    const/16 v0, 0xb

    .line 481
    .line 482
    invoke-virtual {v7, v8, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    if-nez v0, :cond_1d

    .line 487
    .line 488
    invoke-static {v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    .line 490
    .line 491
    if-nez v16, :cond_1d

    .line 492
    .line 493
    invoke-virtual {v7}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()V

    .line 494
    .line 495
    .line 496
    goto/16 :goto_7

    .line 497
    .line 498
    :cond_1d
    invoke-static {v10, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    .line 500
    .line 501
    :cond_1e
    invoke-virtual {v7}, Lcom/samsung/accessory/manager/authentication/Authenticator;->sendStopAuth()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    .line 503
    .line 504
    invoke-virtual {v8, v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 505
    .line 506
    .line 507
    goto/16 :goto_7

    .line 508
    .line 509
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 510
    .line 511
    .line 512
    const/16 v1, 0xe

    .line 513
    .line 514
    invoke-virtual {v8, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 515
    .line 516
    .line 517
    goto/16 :goto_7

    .line 518
    .line 519
    :cond_1f
    const/4 v2, 0x3

    .line 520
    if-ne v0, v2, :cond_29

    .line 521
    .line 522
    const-string/jumbo v0, "response from ccic: "

    .line 523
    .line 524
    .line 525
    iget-object v2, v7, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    .line 526
    .line 527
    if-nez v2, :cond_20

    .line 528
    .line 529
    invoke-static {v10, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    .line 531
    .line 532
    invoke-virtual {v8, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 533
    .line 534
    .line 535
    goto/16 :goto_7

    .line 536
    .line 537
    :cond_20
    :try_start_1
    iput v4, v8, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    .line 538
    .line 539
    invoke-virtual {v2, v8}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    .line 540
    .line 541
    .line 542
    move-result-object v2

    .line 543
    new-instance v5, Ljava/lang/StringBuilder;

    .line 544
    .line 545
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    invoke-static {v2}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->byteArrayToString([B)Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    .line 561
    .line 562
    array-length v0, v2

    .line 563
    if-ne v0, v4, :cond_21

    .line 564
    .line 565
    const-string/jumbo v0, "need define error code"

    .line 566
    .line 567
    .line 568
    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    .line 570
    .line 571
    goto/16 :goto_7

    .line 572
    .line 573
    :catch_1
    move-exception v0

    .line 574
    goto/16 :goto_3

    .line 575
    .line 576
    :cond_21
    invoke-virtual {v9, v4, v2, v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->parseData(I[BZ)Z

    .line 577
    .line 578
    .line 579
    move-result v0

    .line 580
    if-nez v0, :cond_22

    .line 581
    .line 582
    const/16 v0, 0x1a

    .line 583
    .line 584
    invoke-virtual {v8, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 585
    .line 586
    .line 587
    invoke-static {v10, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    .line 589
    .line 590
    invoke-virtual {v7}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication()V

    .line 591
    .line 592
    .line 593
    goto/16 :goto_7

    .line 594
    .line 595
    :cond_22
    const/4 v0, 0x2

    .line 596
    invoke-virtual {v7, v8, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    .line 597
    .line 598
    .line 599
    move-result v2

    .line 600
    if-nez v2, :cond_23

    .line 601
    .line 602
    invoke-virtual {v7}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication()V

    .line 603
    .line 604
    .line 605
    goto/16 :goto_7

    .line 606
    .line 607
    :cond_23
    const/4 v0, 0x3

    .line 608
    invoke-virtual {v7, v8, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    .line 609
    .line 610
    .line 611
    move-result v2

    .line 612
    if-nez v2, :cond_24

    .line 613
    .line 614
    invoke-virtual {v7}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication()V

    .line 615
    .line 616
    .line 617
    goto/16 :goto_7

    .line 618
    .line 619
    :cond_24
    const/4 v0, 0x5

    .line 620
    invoke-virtual {v7, v8, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    .line 621
    .line 622
    .line 623
    move-result v0

    .line 624
    if-nez v0, :cond_25

    .line 625
    .line 626
    invoke-static {v10, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    .line 628
    .line 629
    invoke-virtual {v7}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication()V

    .line 630
    .line 631
    .line 632
    goto/16 :goto_7

    .line 633
    .line 634
    :cond_25
    iget v0, v8, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    .line 635
    .line 636
    if-ne v0, v4, :cond_26

    .line 637
    .line 638
    const/16 v2, 0x9

    .line 639
    .line 640
    invoke-virtual {v7, v8, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    .line 641
    .line 642
    .line 643
    move-result v0

    .line 644
    if-nez v0, :cond_28

    .line 645
    .line 646
    invoke-static {v10, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    .line 648
    .line 649
    invoke-virtual {v7}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication()V

    .line 650
    .line 651
    .line 652
    goto/16 :goto_7

    .line 653
    .line 654
    :cond_26
    const/4 v2, 0x2

    .line 655
    if-ne v0, v2, :cond_27

    .line 656
    .line 657
    const/16 v2, 0xa

    .line 658
    .line 659
    invoke-virtual {v7, v8, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    .line 660
    .line 661
    .line 662
    move-result v0

    .line 663
    if-nez v0, :cond_28

    .line 664
    .line 665
    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    .line 667
    .line 668
    invoke-virtual {v7}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication()V

    .line 669
    .line 670
    .line 671
    goto/16 :goto_7

    .line 672
    .line 673
    :cond_27
    const/4 v2, 0x3

    .line 674
    if-ne v0, v2, :cond_28

    .line 675
    .line 676
    const/16 v0, 0xb

    .line 677
    .line 678
    invoke-virtual {v7, v8, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    .line 679
    .line 680
    .line 681
    move-result v0

    .line 682
    if-nez v0, :cond_28

    .line 683
    .line 684
    invoke-static {v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    .line 686
    .line 687
    invoke-virtual {v7}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication()V

    .line 688
    .line 689
    .line 690
    goto/16 :goto_7

    .line 691
    .line 692
    :cond_28
    invoke-static {v10, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    .line 694
    .line 695
    invoke-virtual {v7}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 696
    .line 697
    .line 698
    goto :goto_4

    .line 699
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    .line 705
    .line 706
    const/16 v1, 0xe

    .line 707
    .line 708
    invoke-virtual {v8, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 709
    .line 710
    .line 711
    :goto_4
    invoke-virtual {v8, v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 712
    .line 713
    .line 714
    goto :goto_7

    .line 715
    :cond_29
    const/4 v1, 0x4

    .line 716
    if-ne v0, v1, :cond_2e

    .line 717
    .line 718
    iget-object v0, v7, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    .line 719
    .line 720
    if-nez v0, :cond_2a

    .line 721
    .line 722
    invoke-static {v10, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    .line 724
    .line 725
    invoke-virtual {v8, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 726
    .line 727
    .line 728
    goto :goto_7

    .line 729
    :cond_2a
    const/16 v0, 0x10

    .line 730
    .line 731
    new-array v0, v0, [B

    .line 732
    .line 733
    fill-array-data v0, :array_0

    .line 734
    .line 735
    .line 736
    invoke-virtual {v9, v4, v0, v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->parseData(I[BZ)Z

    .line 737
    .line 738
    .line 739
    :try_start_2
    iget-object v0, v7, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    .line 740
    .line 741
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->openNode()Z

    .line 742
    .line 743
    .line 744
    move-result v0

    .line 745
    const-string/jumbo v1, "open wirelesscharger: null"

    .line 746
    .line 747
    .line 748
    invoke-static {v10, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    .line 750
    .line 751
    if-nez v0, :cond_2b

    .line 752
    .line 753
    const-string/jumbo v0, "open fail"

    .line 754
    .line 755
    .line 756
    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    .line 758
    .line 759
    invoke-virtual {v7}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication()V

    .line 760
    .line 761
    .line 762
    goto :goto_7

    .line 763
    :catch_2
    move-exception v0

    .line 764
    goto :goto_5

    .line 765
    :cond_2b
    const/4 v0, 0x2

    .line 766
    invoke-virtual {v7, v8, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    .line 767
    .line 768
    .line 769
    move-result v0

    .line 770
    if-nez v0, :cond_2c

    .line 771
    .line 772
    invoke-virtual {v7}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication()V

    .line 773
    .line 774
    .line 775
    goto :goto_7

    .line 776
    :cond_2c
    const/4 v0, 0x3

    .line 777
    invoke-virtual {v7, v8, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z

    .line 778
    .line 779
    .line 780
    move-result v0

    .line 781
    if-nez v0, :cond_2d

    .line 782
    .line 783
    invoke-virtual {v7}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication()V

    .line 784
    .line 785
    .line 786
    goto :goto_7

    .line 787
    :cond_2d
    invoke-static {v10, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 788
    .line 789
    .line 790
    goto :goto_6

    .line 791
    :goto_5
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v0

    .line 795
    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    .line 797
    .line 798
    const/16 v1, 0xe

    .line 799
    .line 800
    invoke-virtual {v8, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 801
    .line 802
    .line 803
    :goto_6
    invoke-virtual {v8, v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 804
    .line 805
    .line 806
    invoke-virtual {v7}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->stopAuthentication()V

    .line 807
    .line 808
    .line 809
    :cond_2e
    :goto_7
    return-void

    .line 810
    nop

    .line 811
    :array_0
    .array-data 1
        0x0t
        0x55t
        0x6t
        0x8t
        0x5t
        0x20t
        0x1dt
        0x17t
        0x0t
        0x0t
        0x2t
        0x1t
        -0x62t
        -0x57t
        -0x7ft
        0x2t
    .end array-data
.end method

.method public final declared-synchronized startSession()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "SAccessoryManager_AuthenticationSession"

    .line 3
    .line 4
    const-string/jumbo v1, "startSession"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mHandlerThread:Landroid/os/HandlerThread;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string v0, "SAccessoryManager_AuthenticationSession"

    .line 15
    .line 16
    const-string v1, "Create handler thread"

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    new-instance v0, Landroid/os/HandlerThread;

    .line 22
    .line 23
    const-string v1, "SAAuthentication Session Handler"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mHandlerThread:Landroid/os/HandlerThread;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mHandlerThread:Landroid/os/HandlerThread;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, p0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;-><init>(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Landroid/os/Looper;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    .line 45
    .line 46
    const/16 v1, 0xe

    .line 47
    .line 48
    const-wide/32 v2, 0xea60

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    .line 58
    .line 59
    const/16 v1, 0xb

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    .line 65
    .line 66
    const/16 v2, 0xc

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    .line 76
    monitor-exit p0

    .line 77
    return-void

    .line 78
    :goto_1
    monitor-exit p0

    .line 79
    throw v0
.end method
