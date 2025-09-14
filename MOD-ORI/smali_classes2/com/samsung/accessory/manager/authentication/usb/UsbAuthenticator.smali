.class public final Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;
.super Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAuthenticationHistory:Ljava/util/LinkedList;

.field public final mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$1;

.field public final mContext:Landroid/content/Context;

.field public mCoverType:I

.field public mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

.field public mFailuresCount:I

.field public mIsFactoryBinary:Z

.field public mLastAttachTime:J

.field public mLastDetachTime:J

.field public mPowerManager:Landroid/os/PowerManager;

.field public volatile mPreparing:Z

.field public final mResult:Ljava/util/concurrent/atomic/AtomicReference;

.field public mRetryCounterWhenBusy:I

.field public mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mSystemReady:Z

.field public mUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

.field public mUriData:[B

.field public mUsbAttachedWhenNanos:J

.field public final mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

.field public mUsbAuthWakeLock:Landroid/os/PowerManager$WakeLock;

.field public usbState:I


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
    iput-wide v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mLastAttachTime:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mLastDetachTime:J

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAttachedWhenNanos:J

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mRetryCounterWhenBusy:I

    .line 14
    .line 15
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mFailuresCount:I

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUriData:[B

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mSystemReady:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mPreparing:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mIsFactoryBinary:Z

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->usbState:I

    .line 28
    .line 29
    const/4 v0, 0x2

    .line 30
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mCoverType:I

    .line 31
    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    .line 38
    .line 39
    new-instance v0, Ljava/util/LinkedList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    .line 45
    .line 46
    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    .line 51
    .line 52
    new-instance p1, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    .line 53
    .line 54
    invoke-direct {p1, p0, p2}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;-><init>(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;Landroid/os/Looper;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, " Current UsbAuthenticator state:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

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
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

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
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

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
    iget-wide v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mLastAttachTime:J

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
    iget-wide v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mLastDetachTime:J

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

.method public final notifyFriendsStateChanged$1(Z[B[B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-class v0, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sepunion/SemUnionManagerLocal;->accessoryStateChanged(Z[B[B)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    new-instance p3, Landroid/content/ComponentName;

    .line 23
    .line 24
    const-string v0, "com.sec.enterprise.knox.cloudmdm.smdms"

    .line 25
    .line 26
    const-string v1, "com.sec.enterprise.knox.cloudmdm.smdms.core.AccessoryStateChangeReceiver"

    .line 27
    .line 28
    invoke-direct {p3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Landroid/content/Intent;

    .line 32
    .line 33
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    const-string v0, "accessoryType"

    .line 41
    .line 42
    iget v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mCoverType:I

    .line 43
    .line 44
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    const-string v0, "accessoryState"

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    const/16 p1, 0x3e9

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/16 p1, 0x3ea

    .line 55
    .line 56
    :goto_0
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    const-string p1, "accessoryUid"

    .line 60
    .line 61
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    const-string p1, "from"

    .line 65
    .line 66
    const-string p2, "com.samsung.accessory.manager.authentication"

    .line 67
    .line 68
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    invoke-virtual {p0, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catch_0
    const-string p0, "SAccessoryManager_UsbAuthenticator"

    .line 78
    .line 79
    const-string p1, "error during starting KES service"

    .line 80
    .line 81
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_1
    return-void
.end method

.method public final onAuthenticationComplted(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

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
    new-instance v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;-><init>(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;I)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

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
    new-instance v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$3;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$3;-><init>(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

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
    new-instance v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;-><init>(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;I)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onUsbAttached(Z)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mIsFactoryBinary:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mSystemReady:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iput v3, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->usbState:I

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAttachedWhenNanos:J

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    iput-wide v3, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mLastAttachTime:J

    .line 25
    .line 26
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->startAuthentication$1(JZ)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iput v2, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->usbState:I

    .line 31
    .line 32
    iget-wide v4, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAttachedWhenNanos:J

    .line 33
    .line 34
    cmp-long p1, v4, v0

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    sub-long v4, v0, v4

    .line 39
    .line 40
    const-wide/32 v6, 0x1dcd6500

    .line 41
    .line 42
    .line 43
    cmp-long p1, v4, v6

    .line 44
    .line 45
    if-gez p1, :cond_2

    .line 46
    .line 47
    const-wide/16 v0, 0x1f4

    .line 48
    .line 49
    :cond_2
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 50
    .line 51
    const-wide/16 v4, 0x3e8

    .line 52
    .line 53
    invoke-virtual {p1, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v4

    .line 60
    iput-wide v4, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mLastDetachTime:J

    .line 61
    .line 62
    iput v3, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mFailuresCount:I

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->removeAuthenticationTimeOuts()V

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    .line 68
    .line 69
    const/4 p1, 0x2

    .line 70
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 71
    .line 72
    .line 73
    const/4 p1, 0x4

    .line 74
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 75
    .line 76
    .line 77
    :cond_3
    :goto_0
    return-void
.end method

.method public final removeAuthenticationTimeOuts()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mPreparing:Z

    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

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

.method public final setUsbVerified(ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .locals 2

    .line 1
    const-string v0, "SAccessoryManager_UsbAuthenticator"

    .line 2
    .line 3
    const-string/jumbo v1, "setUsbVerified"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget v0, p2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    .line 12
    .line 13
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mCoverType:I

    .line 14
    .line 15
    :cond_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p3, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayManagerURI:[B

    .line 18
    .line 19
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUriData:[B

    .line 20
    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    iget p3, p2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->url:I

    .line 24
    .line 25
    if-eqz p3, :cond_2

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    array-length p3, p1

    .line 30
    const/4 v0, 0x2

    .line 31
    if-lt p3, v0, :cond_2

    .line 32
    .line 33
    const/4 p3, 0x1

    .line 34
    aget-byte v0, p1, p3

    .line 35
    .line 36
    const/16 v1, 0x11

    .line 37
    .line 38
    if-lt v0, v1, :cond_2

    .line 39
    .line 40
    const/16 v1, 0x20

    .line 41
    .line 42
    if-ge v0, v1, :cond_2

    .line 43
    .line 44
    iget-object p2, p2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    .line 45
    .line 46
    invoke-virtual {p0, p3, p1, p2}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->notifyFriendsStateChanged$1(Z[B[B)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUriData:[B

    .line 51
    .line 52
    const/4 p2, 0x0

    .line 53
    const/4 p3, 0x0

    .line 54
    invoke-virtual {p0, p2, p1, p3}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->notifyFriendsStateChanged$1(Z[B[B)V

    .line 55
    .line 56
    .line 57
    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUriData:[B

    .line 58
    .line 59
    :cond_2
    :goto_0
    return-void
.end method

.method public final startAuthentication$1(JZ)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mSystemReady:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    .line 11
    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->removeAuthenticationTimeOuts()V

    .line 15
    .line 16
    .line 17
    iget-object p3, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    .line 18
    .line 19
    const/4 v0, 0x5

    .line 20
    const-wide/16 v1, 0x6978

    .line 21
    .line 22
    invoke-virtual {p3, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 23
    .line 24
    .line 25
    const/4 p3, 0x1

    .line 26
    iput-boolean p3, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mPreparing:Z

    .line 27
    .line 28
    :cond_1
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    .line 29
    .line 30
    const/4 p3, 0x2

    .line 31
    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final systemReady()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

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
