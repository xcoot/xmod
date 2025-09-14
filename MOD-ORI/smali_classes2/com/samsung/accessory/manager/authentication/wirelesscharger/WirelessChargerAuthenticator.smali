.class public final Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;
.super Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public auth_result:I

.field public final mAuthenticationHistory:Ljava/util/LinkedList;

.field public mAuthenticationStarted:Z

.field public final mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$1;

.field public final mContext:Landroid/content/Context;

.field public mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

.field public mFailuresCount:I

.field public mLastAttachTime:J

.field public mLastDetachTime:J

.field public mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

.field public mPowerManager:Landroid/os/PowerManager;

.field public volatile mPreparing:Z

.field public final mResult:Ljava/util/concurrent/atomic/AtomicReference;

.field public mRetryCounterWhenBusy:I

.field public mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mSystemReady:Z

.field public mWirelessChargerAttachedWhenNanos:J

.field public final mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

.field public mWirelessChargerAuthWakeLock:Landroid/os/PowerManager$WakeLock;

.field public wirelessChargerState:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/accessory/manager/SAccessoryManager$1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mLastAttachTime:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mLastDetachTime:J

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAttachedWhenNanos:J

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mRetryCounterWhenBusy:I

    .line 14
    .line 15
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mFailuresCount:I

    .line 16
    .line 17
    const/4 v1, -0x2

    .line 18
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->auth_result:I

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mSystemReady:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mPreparing:Z

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->wirelessChargerState:I

    .line 26
    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    .line 33
    .line 34
    new-instance v0, Ljava/util/LinkedList;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    .line 47
    .line 48
    new-instance p1, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    .line 49
    .line 50
    invoke-direct {p1, p0, p2}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;-><init>(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;Landroid/os/Looper;)V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, " Current WirelessChargerAuthenticator state:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "  auth reason = "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mReason:I

    .line 24
    .line 25
    invoke-static {v1, v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    const-string v0, "  Historical authentication: "

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    :goto_0
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-ge v0, v1, :cond_1

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v2, "    "

    .line 45
    .line 46
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    .line 50
    .line 51
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v0, v0, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const-string v0, "  mLastAuthenticationTime = 0"

    .line 71
    .line 72
    const-string v1, "  mLastAttachTime = "

    .line 73
    .line 74
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-wide v1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mLastAttachTime:J

    .line 79
    .line 80
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v1, "  mLastDetachTime = "

    .line 97
    .line 98
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-wide v1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mLastDetachTime:J

    .line 102
    .line 103
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public final onAuthenticationComplted(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onAuthenticationStarted()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$1;-><init>(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;I)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onAuthenticationStarting(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$3;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$3;-><init>(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onAuthenticationStopped()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$1;-><init>(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;I)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onWirelessChargerConnected(Z)V
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationStarted:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-string p0, "SAccessoryManager_WirelessChargerAuthenticator"

    .line 12
    .line 13
    const-string p1, "Authentication already starts"

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iput-boolean v3, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationStarted:Z

    .line 20
    .line 21
    iput v2, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->wirelessChargerState:I

    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    iput-wide v4, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAttachedWhenNanos:J

    .line 28
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    iput-wide v4, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mLastAttachTime:J

    .line 34
    .line 35
    invoke-virtual {p0, v0, v1, v3}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->startAuthentication$2(JZ)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iput v3, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->wirelessChargerState:I

    .line 40
    .line 41
    iget-wide v3, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAttachedWhenNanos:J

    .line 42
    .line 43
    cmp-long p1, v3, v0

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    sub-long v3, v0, v3

    .line 48
    .line 49
    const-wide/32 v5, 0x1dcd6500

    .line 50
    .line 51
    .line 52
    cmp-long p1, v3, v5

    .line 53
    .line 54
    if-gez p1, :cond_2

    .line 55
    .line 56
    const-wide/16 v0, 0x1f4

    .line 57
    .line 58
    :cond_2
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 59
    .line 60
    const-wide/16 v3, 0x3e8

    .line 61
    .line 62
    invoke-virtual {p1, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 66
    .line 67
    .line 68
    move-result-wide v3

    .line 69
    iput-wide v3, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mLastDetachTime:J

    .line 70
    .line 71
    iput v2, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mFailuresCount:I

    .line 72
    .line 73
    iput-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationStarted:Z

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->removeAuthenticationTimeOuts()V

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    .line 79
    .line 80
    const/4 p1, 0x2

    .line 81
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 82
    .line 83
    .line 84
    const/4 p1, 0x4

    .line 85
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 86
    .line 87
    .line 88
    :goto_0
    return-void
.end method

.method public final removeAuthenticationTimeOuts()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mPreparing:Z

    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    .line 5
    .line 6
    const/4 v0, 0x5

    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setWirelessChargerVerified(I)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "SAccessoryManager_WirelessChargerAuthenticator"

    .line 3
    .line 4
    const-string/jumbo v2, "setWirelessChargerVerified"

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    const/16 v2, 0x1c

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eq p1, v2, :cond_3

    .line 14
    .line 15
    const/4 v2, 0x5

    .line 16
    move v4, v3

    .line 17
    :goto_0
    if-ltz v2, :cond_3

    .line 18
    .line 19
    if-nez v4, :cond_3

    .line 20
    .line 21
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    .line 22
    .line 23
    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->wirelesscharger_open()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    new-array v5, v0, [B

    .line 28
    .line 29
    aput-byte v0, v5, v3

    .line 30
    .line 31
    new-array v6, v0, [B

    .line 32
    .line 33
    const/4 v7, 0x2

    .line 34
    aput-byte v7, v6, v3

    .line 35
    .line 36
    const-string/jumbo v7, "reason = "

    .line 37
    .line 38
    .line 39
    const-string v8, ", open batt_misc ret = "

    .line 40
    .line 41
    invoke-static {p1, v4, v7, v8, v1}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    if-gez v4, :cond_0

    .line 45
    .line 46
    const-string/jumbo p1, "open fail"

    .line 47
    .line 48
    .line 49
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    const/16 p1, 0x66

    .line 53
    .line 54
    :cond_0
    if-nez p1, :cond_1

    .line 55
    .line 56
    const-string/jumbo v4, "write success"

    .line 57
    .line 58
    .line 59
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    .line 63
    .line 64
    invoke-virtual {v4, v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ioctl_longDataWrite_batt([B)I

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/16 v4, 0x65

    .line 69
    .line 70
    if-eq p1, v4, :cond_2

    .line 71
    .line 72
    const-string/jumbo v4, "write fail"

    .line 73
    .line 74
    .line 75
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    .line 79
    .line 80
    invoke-virtual {v4, v6}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ioctl_longDataWrite_batt([B)I

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_1
    const-string v4, "close batt_misc"

    .line 84
    .line 85
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    .line 89
    .line 90
    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ccic_close()I

    .line 91
    .line 92
    .line 93
    add-int/lit8 v2, v2, -0x1

    .line 94
    .line 95
    move v4, v0

    .line 96
    goto :goto_0

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    const/16 v1, 0x3c

    .line 104
    .line 105
    if-le v0, v1, :cond_4

    .line 106
    .line 107
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    :cond_4
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    .line 113
    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string p1, "/"

    .line 127
    .line 128
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 132
    .line 133
    .line 134
    move-result-wide v4

    .line 135
    invoke-static {v4, v5}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    const/4 p1, -0x2

    .line 150
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->auth_result:I

    .line 151
    .line 152
    iput-boolean v3, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationStarted:Z

    .line 153
    .line 154
    return-void
.end method

.method public final startAuthentication$2(JZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mSystemReady:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroid/os/Message;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 22
    .line 23
    const/4 p3, 0x2

    .line 24
    iput p3, v0, Landroid/os/Message;->what:I

    .line 25
    .line 26
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final systemReady()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method
