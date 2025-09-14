.class public final Lcom/android/server/knox/dar/DarManagerService;
.super Lcom/samsung/android/knox/dar/IDarManagerService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final NULL_USER:Landroid/content/pm/UserInfo;


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mContext:Landroid/content/Context;

.field public mDarHandler:Lcom/android/server/knox/dar/DarManagerService$DarHandler;

.field public final mEndpointMonitorImpl:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

.field public final mEscrowTokenStateChangeCallback:Lcom/android/server/knox/dar/DarManagerService$$ExternalSyntheticLambda0;

.field public final mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

.field public final mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mUserManager:Landroid/os/UserManager;

.field public final mUserSwitchObserver:Lcom/android/server/knox/dar/DarManagerService$1;

.field public final mVirtualLockImpl:Lcom/android/server/knox/dar/VirtualLockImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/pm/UserInfo;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/16 v3, -0x2710

    .line 7
    invoke-direct {v0, v3, v1, v1, v2}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 10
    sput-object v0, Lcom/android/server/knox/dar/DarManagerService;->NULL_USER:Landroid/content/pm/UserInfo;

    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/android/server/knox/dar/DarManagerService$Injector;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    .line 7
    iput-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mUserManager:Landroid/os/UserManager;

    .line 9
    iput-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mDarHandler:Lcom/android/server/knox/dar/DarManagerService$DarHandler;

    .line 11
    new-instance v0, Lcom/android/server/knox/dar/DarManagerService$$ExternalSyntheticLambda0;

    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/knox/dar/DarManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/knox/dar/DarManagerService;)V

    .line 16
    new-instance v1, Lcom/android/server/knox/dar/DarManagerService$1;

    .line 18
    invoke-direct {v1, p0}, Lcom/android/server/knox/dar/DarManagerService$1;-><init>(Lcom/android/server/knox/dar/DarManagerService;)V

    .line 21
    iput-object v1, p0, Lcom/android/server/knox/dar/DarManagerService;->mUserSwitchObserver:Lcom/android/server/knox/dar/DarManagerService$1;

    .line 23
    const-string v1, "DarManagerService"

    .line 25
    const-string v2, "DarManagerService init"

    .line 27
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v1, p1, Lcom/android/server/knox/dar/DarManagerService$Injector;->mContext:Landroid/content/Context;

    .line 32
    iput-object v1, p0, Lcom/android/server/knox/dar/DarManagerService;->mContext:Landroid/content/Context;

    .line 34
    iput-object p1, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 36
    sget-object v2, Lcom/android/server/knox/dar/KeyProtector;->sInstance:Lcom/android/server/knox/dar/KeyProtector;

    .line 38
    if-nez v2, :cond_1

    .line 40
    const-class v2, Lcom/android/server/knox/dar/KeyProtector;

    .line 42
    monitor-enter v2

    .line 43
    :try_start_0
    sget-object v3, Lcom/android/server/knox/dar/KeyProtector;->sInstance:Lcom/android/server/knox/dar/KeyProtector;

    .line 45
    if-nez v3, :cond_0

    .line 47
    new-instance v3, Lcom/android/server/knox/dar/KeyProtector;

    .line 49
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 52
    sput-object v3, Lcom/android/server/knox/dar/KeyProtector;->sInstance:Lcom/android/server/knox/dar/KeyProtector;

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    :goto_0
    monitor-exit v2

    .line 58
    goto :goto_2

    .line 59
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0

    .line 61
    :cond_1
    :goto_2
    sget-object v2, Lcom/android/server/knox/dar/KeyProtector;->sInstance:Lcom/android/server/knox/dar/KeyProtector;

    .line 63
    iput-object v2, p0, Lcom/android/server/knox/dar/DarManagerService;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    .line 65
    iget-object v2, p1, Lcom/android/server/knox/dar/DarManagerService$Injector;->mContext:Landroid/content/Context;

    .line 67
    const-string/jumbo v3, "user"

    .line 70
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Landroid/os/UserManager;

    .line 76
    iput-object v2, p0, Lcom/android/server/knox/dar/DarManagerService;->mUserManager:Landroid/os/UserManager;

    .line 78
    iget-object v2, p1, Lcom/android/server/knox/dar/DarManagerService$Injector;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 80
    iput-object v2, p0, Lcom/android/server/knox/dar/DarManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 82
    iput-object v0, p1, Lcom/android/server/knox/dar/DarManagerService$Injector;->mEscrowTokenStateChangeCallback:Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    .line 84
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->systemReady()V

    .line 87
    new-instance v0, Lcom/android/server/knox/dar/VirtualLockImpl;

    .line 89
    invoke-direct {v0, p1}, Lcom/android/server/knox/dar/VirtualLockImpl;-><init>(Lcom/android/server/knox/dar/DarManagerService$Injector;)V

    .line 92
    iput-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mVirtualLockImpl:Lcom/android/server/knox/dar/VirtualLockImpl;

    .line 94
    const-class p1, Landroid/app/ActivityManagerInternal;

    .line 96
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Landroid/app/ActivityManagerInternal;

    .line 102
    iput-object p1, p0, Lcom/android/server/knox/dar/DarManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 104
    new-instance p1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    .line 106
    invoke-direct {p1, v1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;-><init>(Landroid/content/Context;)V

    .line 109
    iput-object p1, p0, Lcom/android/server/knox/dar/DarManagerService;->mEndpointMonitorImpl:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    .line 111
    const-string p0, "DarManagerService_SDP"

    .line 113
    const-string/jumbo p1, "prepare EndpointMonitor Service"

    .line 116
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method public static fileRead(Ljava/lang/String;)[B
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 10
    goto :goto_3

    .line 11
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 13
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_1

    .line 22
    return-object v0

    .line 23
    :cond_1
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    .line 25
    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 28
    :try_start_1
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    .line 31
    move-result v1

    .line 32
    new-array v1, v1, [B

    .line 34
    invoke-virtual {p0, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 40
    goto :goto_2

    .line 41
    :catch_0
    move-exception p0

    .line 42
    move-object v0, v1

    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 48
    goto :goto_0

    .line 49
    :catchall_1
    move-exception p0

    .line 50
    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 53
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 54
    :catch_1
    move-exception p0

    .line 55
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    move-object v1, v0

    .line 59
    :goto_2
    return-object v1

    .line 60
    :cond_2
    :goto_3
    return-object v0
.end method

.method public static fileWrite(Ljava/lang/String;[B)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_1

    .line 10
    if-nez p1, :cond_0

    .line 12
    goto :goto_2

    .line 13
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 15
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    .line 20
    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 26
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    const/4 v0, 0x1

    .line 30
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 33
    goto :goto_2

    .line 34
    :catch_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 40
    goto :goto_0

    .line 41
    :catchall_1
    move-exception p0

    .line 42
    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 45
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 46
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    :cond_1
    :goto_2
    return v0
.end method


# virtual methods
.method public final addBlockedClearablePackages(ILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final addEngine(Lcom/samsung/android/knox/sdp/core/SdpCreationParam;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    .line 4
    const/16 p0, -0xa

    .line 6
    return p0
.end method

.method public final allow(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    .line 4
    const/16 p0, -0xa

    .line 6
    return p0
.end method

.method public final checkDeviceIntegrity([Ljava/security/cert/Certificate;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object p1, p1, v0

    .line 4
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 6
    :try_start_0
    new-instance v1, Lcom/android/server/knox/dar/AttestedCertParser;

    .line 8
    invoke-direct {v1, p1}, Lcom/android/server/knox/dar/AttestedCertParser;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 11
    iget-object p1, v1, Lcom/android/server/knox/dar/AttestedCertParser;->mKnoxIngetrity:Lcom/android/server/knox/dar/IntegrityStatus;

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz p1, :cond_0

    .line 16
    iget v2, p1, Lcom/android/server/knox/dar/IntegrityStatus;->mWarranty:I

    .line 18
    if-nez v2, :cond_0

    .line 20
    iget p1, p1, Lcom/android/server/knox/dar/IntegrityStatus;->mTrustBoot:I

    .line 22
    if-nez p1, :cond_0

    .line 24
    return v1

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isEmTokenAllowed()Z

    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 31
    const-string p0, "DarManagerService"

    .line 33
    const-string p1, "Failed in device integrity check. But, EM Token is allowed. Continue - "

    .line 35
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return v1

    .line 39
    :catch_0
    move-exception p0

    .line 40
    invoke-virtual {p0}, Ljava/security/cert/CertificateParsingException;->printStackTrace()V

    .line 43
    :cond_1
    return v0
.end method

.method public final checkSystemPermission()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x3e8

    .line 12
    if-ne v0, v1, :cond_0

    .line 14
    return-void

    .line 15
    :cond_0
    const-string v0, "DarManagerService"

    .line 17
    const-string v1, "Require system permission."

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v0, Ljava/lang/SecurityException;

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    const-string v2, "Security Exception Occurred in pid["

    .line 28
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    iget-object v2, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 39
    move-result v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    const-string v2, "] with uid["

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 56
    move-result p0

    .line 57
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    const-string p0, "]"

    .line 62
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 69
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 72
    throw v0
.end method

.method public final clearResetPasswordToken(I)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isVirtualLockSupported()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 8
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mVirtualLockImpl:Lcom/android/server/knox/dar/VirtualLockImpl;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    const-string v2, "Clear Reset password token for user "

    .line 17
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    const-string v2, "VirtualLockImpl"

    .line 29
    invoke-static {v2, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {p1}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 42
    move-result-wide v0

    .line 43
    :try_start_0
    iget-object v2, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    .line 45
    invoke-virtual {v2, p1}, Lcom/android/server/knox/dar/DarDatabaseCache;->getLong(I)J

    .line 48
    move-result-wide v2

    .line 49
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/knox/dar/VirtualLockImpl;->clearResetPasswordTokenInternal(IJ)Z

    .line 52
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    move v1, p0

    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    throw p0

    .line 63
    :cond_1
    :goto_0
    return v1
.end method

.method public final createEncPkgDir(ILjava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    .line 4
    const/4 p0, 0x0

    .line 5
    return p0
.end method

.method public final deleteToeknFromTrusted(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    .line 4
    const/16 p0, -0xa

    .line 6
    return p0
.end method

.method public final disallow(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    .line 4
    const/16 p0, -0xa

    .line 6
    return p0
.end method

.method public doesSpecificKeyExist(Ljava/lang/String;I)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {p2, p1}, Lcom/android/server/knox/dar/KeyProtector;->attach(ILjava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/android/server/knox/dar/KeyProtector;->checkSecretKey(Ljava/lang/String;)Z

    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 24
    const-string p2, "Key exists in keystore("

    .line 26
    const-string v0, ")"

    .line 28
    const-string v1, "KeyProtector"

    .line 30
    invoke-static {p2, p0, v0, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_1
    return p1
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/knox/dar/DarManagerService;->mContext:Landroid/content/Context;

    .line 3
    const-string v0, "DarManagerService"

    .line 5
    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    .line 15
    if-eqz p3, :cond_7

    .line 17
    array-length p0, p3

    .line 18
    if-lez p0, :cond_7

    .line 20
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 23
    move-result-object p0

    .line 24
    const-string p1, "-a"

    .line 26
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_1

    .line 32
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 35
    move-result-object p0

    .line 36
    const-string/jumbo p1, "sdplog"

    .line 39
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_7

    .line 45
    :cond_1
    const-string/jumbo p0, "sdplog_dump"

    .line 48
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    const-string p0, "-------------------------------------------------- START DUMP --------------------------------------------------"

    .line 53
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    sget-boolean p0, Lcom/android/server/knox/dar/sdp/SDPLog;->DEBUG:Z

    .line 58
    sget-boolean p0, Lcom/android/server/knox/dar/sdp/SDPLogger;->DEBUG:Z

    .line 60
    const-string p0, "Failed to dump: "

    .line 62
    sget-object p1, Lcom/android/server/knox/dar/sdp/SDPLogFile;->FILE_LOCK:Ljava/util/concurrent/locks/Lock;

    .line 64
    check-cast p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 66
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    .line 69
    move-result p1

    .line 70
    const-string p3, "SDPLogFile"

    .line 72
    if-nez p1, :cond_2

    .line 74
    const-string p0, "Failed to dump: Maybe target file is already being used..."

    .line 76
    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string p0, "Target file busy"

    .line 81
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    goto :goto_6

    .line 85
    :cond_2
    const/4 p1, 0x0

    .line 86
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 88
    const-string v1, "/data/log/sdp_log"

    .line 90
    const-string/jumbo v2, "r"

    .line 93
    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :try_start_1
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLogFile;->check(Ljava/io/RandomAccessFile;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    const-wide/16 v1, 0x11

    .line 101
    :try_start_2
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 104
    const/4 p0, 0x0

    .line 105
    :goto_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    .line 108
    move-result-object p3

    .line 109
    if-eqz p3, :cond_4

    .line 111
    add-int/lit8 v1, p0, 0x1

    .line 113
    const/16 v2, 0x1770

    .line 115
    if-lt p0, v2, :cond_3

    .line 117
    const-string p1, "Dump line count reached to the limit: 6000"

    .line 119
    goto :goto_1

    .line 120
    :catchall_0
    move-exception p0

    .line 121
    goto :goto_2

    .line 122
    :cond_3
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    move p0, v1

    .line 126
    goto :goto_0

    .line 127
    :cond_4
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 130
    goto :goto_5

    .line 131
    :catch_0
    move-exception p0

    .line 132
    goto :goto_4

    .line 133
    :catch_1
    move-exception v1

    .line 134
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 136
    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    .line 142
    move-result-object p0

    .line 143
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object p1

    .line 150
    if-eqz p1, :cond_5

    .line 152
    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_5
    new-instance p0, Ljava/io/IOException;

    .line 157
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 160
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 161
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 164
    goto :goto_3

    .line 165
    :catchall_1
    move-exception p3

    .line 166
    :try_start_6
    invoke-virtual {p0, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 169
    :goto_3
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 170
    :goto_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 173
    :goto_5
    sget-object p0, Lcom/android/server/knox/dar/sdp/SDPLogFile;->FILE_LOCK:Ljava/util/concurrent/locks/Lock;

    .line 175
    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 177
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 180
    if-eqz p1, :cond_6

    .line 182
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    :cond_6
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 188
    :goto_6
    const-string p0, "-------------------------------------------------- END DUMP --------------------------------------------------"

    .line 190
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    :cond_7
    return-void
.end method

.method public final exists(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    .line 4
    const/16 p0, -0xa

    .line 6
    return p0
.end method

.method public generateAndSaveSpecificKey(Ljava/lang/String;I)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/knox/dar/SecureUtil;->sSecureRandom:Ljava/security/SecureRandom;

    .line 3
    const/16 v1, 0x20

    .line 5
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->generateSeed(I)[B

    .line 8
    move-result-object v0

    .line 9
    :try_start_0
    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 15
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/knox/dar/DarManagerService;->saveSpecificKeyViaProtector([BLjava/lang/String;I)Z

    .line 18
    move-result p0

    .line 19
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    if-eqz p0, :cond_0

    .line 24
    const/4 p0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    .line 32
    return p0

    .line 33
    :goto_1
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    .line 36
    throw p0
.end method

.method public final getAvailableUserId()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isVirtualLockSupported()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mVirtualLockImpl:Lcom/android/server/knox/dar/VirtualLockImpl;

    .line 9
    invoke-virtual {p0}, Lcom/android/server/knox/dar/VirtualLockImpl;->getAvailableUserId()I

    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/16 p0, -0x2710

    .line 16
    return p0
.end method

.method public final getBlockedClearablePackages(I)Ljava/util/List;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getEngineInfo(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method public final getInnerAuthUserId(I)I
    .locals 0

    .line 1
    const/16 p0, -0x2710

    .line 3
    return p0
.end method

.method public final getMainUserId(I)I
    .locals 0

    .line 1
    const/16 p0, -0x2710

    .line 3
    return p0
.end method

.method public final getPackageListForDualDarPolicy(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getPasswordMinimumLengthForInner()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getReservedUserIdForSystem()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isVirtualLockSupported()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mVirtualLockImpl:Lcom/android/server/knox/dar/VirtualLockImpl;

    .line 9
    invoke-virtual {p0}, Lcom/android/server/knox/dar/VirtualLockImpl;->getReservedUserIdForSystem()I

    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/16 p0, -0x2710

    .line 16
    return p0
.end method

.method public getSpecificKeyViaProtector(Ljava/lang/String;I)[B
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/knox/dar/DarManagerService;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v3, "/ENCRYPTED_KEY_"

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v3, "_"

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    const-string/jumbo v4, "readFile - File path : "

    .line 56
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v3

    .line 66
    const-string v4, "KeyProtector"

    .line 68
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v3, Ljava/io/File;

    .line 73
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 79
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 80
    const/4 v5, 0x0

    .line 81
    if-eqz v2, :cond_1

    .line 83
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    .line 85
    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    .line 91
    move-result v3

    .line 92
    new-array v3, v3, [B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    :try_start_3
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    :goto_0
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 100
    goto :goto_4

    .line 101
    :catchall_0
    move-exception p1

    .line 102
    move-object v5, v2

    .line 103
    goto :goto_3

    .line 104
    :catch_0
    move-exception v6

    .line 105
    goto :goto_1

    .line 106
    :catch_1
    move-exception v6

    .line 107
    goto :goto_2

    .line 108
    :catch_2
    move-exception v6

    .line 109
    move-object v3, v5

    .line 110
    goto :goto_1

    .line 111
    :catch_3
    move-exception v6

    .line 112
    move-object v3, v5

    .line 113
    goto :goto_2

    .line 114
    :catchall_1
    move-exception p1

    .line 115
    goto :goto_3

    .line 116
    :catch_4
    move-exception v6

    .line 117
    move-object v2, v5

    .line 118
    move-object v3, v2

    .line 119
    goto :goto_1

    .line 120
    :catch_5
    move-exception v6

    .line 121
    move-object v2, v5

    .line 122
    move-object v3, v2

    .line 123
    goto :goto_2

    .line 124
    :goto_1
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    if-eqz v2, :cond_2

    .line 129
    goto :goto_0

    .line 130
    :goto_2
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 133
    if-eqz v2, :cond_2

    .line 135
    goto :goto_0

    .line 136
    :goto_3
    if-eqz v5, :cond_0

    .line 138
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 141
    :catch_6
    :cond_0
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 142
    :cond_1
    move-object v3, v5

    .line 143
    :catch_7
    :cond_2
    :goto_4
    if-eqz v3, :cond_3

    .line 145
    const/4 v2, 0x0

    .line 146
    const/16 v6, 0xc

    .line 148
    :try_start_8
    invoke-static {v3, v2, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 151
    move-result-object v2

    .line 152
    array-length v7, v3

    .line 153
    invoke-static {v3, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 156
    move-result-object v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 157
    :try_start_9
    invoke-static {p2, p1}, Lcom/android/server/knox/dar/KeyProtector;->attach(ILjava/lang/String;)Ljava/lang/String;

    .line 160
    move-result-object p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 161
    :try_start_a
    invoke-static {p1}, Lcom/android/server/knox/dar/KeyProtector;->getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    .line 164
    move-result-object p1

    .line 165
    const-string p2, "AES/GCM/NoPadding"

    .line 167
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 170
    move-result-object p2

    .line 171
    new-instance v4, Ljavax/crypto/spec/GCMParameterSpec;

    .line 173
    const/16 v6, 0x80

    .line 175
    invoke-direct {v4, v6, v2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 178
    const/4 v2, 0x2

    .line 179
    invoke-virtual {p2, v2, p1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 182
    invoke-virtual {p2, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 185
    move-result-object v5
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 186
    goto :goto_5

    .line 187
    :catch_8
    move-exception p1

    .line 188
    :try_start_b
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    goto :goto_5

    .line 192
    :catch_9
    move-exception p1

    .line 193
    const-string p2, "Failed in copying array..."

    .line 195
    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 201
    :cond_3
    :goto_5
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 203
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 209
    return-object v5

    .line 210
    :catchall_2
    move-exception p1

    .line 211
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 213
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 219
    throw p1
.end method

.method public final getSupportedSDKVersion()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    return-wide v0
.end method

.method public final getUserManager()Landroid/os/UserManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mUserManager:Landroid/os/UserManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mContext:Landroid/content/Context;

    .line 7
    const-string/jumbo v1, "user"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/os/UserManager;

    .line 16
    iput-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mUserManager:Landroid/os/UserManager;

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mUserManager:Landroid/os/UserManager;

    .line 20
    return-object p0
.end method

.method public handleUnlockSecureFolderWithToken(I)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->checkSystemPermission()V

    .line 11
    const-string v0, "SdpTokenHandle"

    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/DarManagerService;->getSpecificKeyViaProtector(Ljava/lang/String;I)[B

    .line 16
    move-result-object v0

    .line 17
    const-string v1, "DarManagerService"

    .line 19
    if-eqz v0, :cond_1

    .line 21
    sget-object v2, Lcom/android/server/knox/dar/sdp/security/BytesUtil;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    .line 23
    const/16 v2, 0x8

    .line 25
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 28
    move-result-object v2

    .line 29
    sget-object v3, Lcom/android/server/knox/dar/sdp/security/BytesUtil;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    .line 31
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 34
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 37
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 40
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    .line 43
    move-result-wide v2

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string/jumbo v0, "get SecureFolder Token Handle Failed"

    .line 48
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-wide/16 v2, 0x0

    .line 53
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->checkSystemPermission()V

    .line 56
    const-string v0, "SdpResetToken"

    .line 58
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/DarManagerService;->getSpecificKeyViaProtector(Ljava/lang/String;I)[B

    .line 61
    move-result-object v0

    .line 62
    iget-object v4, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 64
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    const-class v4, Lcom/android/internal/widget/LockSettingsInternal;

    .line 69
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Lcom/android/internal/widget/LockSettingsInternal;

    .line 75
    if-eqz v4, :cond_2

    .line 77
    :try_start_0
    invoke-virtual {v4, v2, v3, v0, p1}, Lcom/android/internal/widget/LockSettingsInternal;->unlockUserWithToken(J[BI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_1

    .line 81
    :catch_0
    move-exception v2

    .line 82
    const-string v3, "Unexpected failure while unlock secure folder with token"

    .line 84
    invoke-static {v2, v3, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_2
    :goto_1
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    .line 90
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 92
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->getUserManager()Landroid/os/UserManager;

    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    .line 99
    move-result p0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    const-string v2, "SecureFolder user "

    .line 104
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    const-string p1, " has been unlocked [ res : "

    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 118
    const-string p0, " ]"

    .line 120
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object p0

    .line 127
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method

.method public final isDarSupported()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final isDefaultPathUser(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    .line 4
    const/4 p0, 0x0

    .line 5
    return p0
.end method

.method public final isDeviceRootKeyInstalled()Z
    .locals 10

    .line 1
    const-string/jumbo v0, "ro.hardware.virtual_device"

    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    const-string v1, "1"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    const-string v2, "DarManagerService"

    .line 17
    if-eqz v0, :cond_0

    .line 19
    const-string p0, "Will be Failed in device integrity check. But, running on VirtualDevice. Continue .. "

    .line 21
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return v1

    .line 25
    :cond_0
    const-string/jumbo v0, "ro.security.keystore.keytype"

    .line 28
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    const-string/jumbo v3, "sakm"

    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 38
    move-result v0

    .line 39
    const/4 v3, 0x0

    .line 40
    if-eqz v0, :cond_4

    .line 42
    const-string v0, "Check SAK instead for JDM with GRDM or KnoxVault2"

    .line 44
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v0, "KnoxTestKey"

    .line 49
    const-string v4, "Failed while check SAK : "

    .line 51
    iget-object v5, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 53
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 59
    move-result-wide v5

    .line 60
    :try_start_0
    new-instance v7, Lcom/samsung/android/security/keystore/AttestationUtils;

    .line 62
    invoke-direct {v7}, Lcom/samsung/android/security/keystore/AttestationUtils;-><init>()V

    .line 65
    sget-object v8, Lcom/android/server/knox/dar/SecureUtil;->sSecureRandom:Ljava/security/SecureRandom;

    .line 67
    const/16 v9, 0x8

    .line 69
    invoke-virtual {v8, v9}, Ljava/security/SecureRandom;->generateSeed(I)[B

    .line 72
    move-result-object v8

    .line 73
    invoke-virtual {v7, v0, v8}, Lcom/samsung/android/security/keystore/AttestationUtils;->generateKeyPair(Ljava/lang/String;[B)Ljava/security/KeyPair;

    .line 76
    move-result-object v7

    .line 77
    if-eqz v7, :cond_1

    .line 79
    move v3, v1

    .line 80
    :cond_1
    if-eqz v3, :cond_2

    .line 82
    const-string v7, "Generated keypair is protected by SAK"

    .line 84
    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->deleteKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    goto :goto_4

    .line 93
    :catch_0
    move-exception v0

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 103
    goto :goto_3

    .line 104
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isEmTokenAllowed()Z

    .line 107
    move-result v7

    .line 108
    if-eqz v7, :cond_3

    .line 110
    const-string v0, "Failed while check SAK. But, EM Token is allowed. Continue - "

    .line 112
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    goto :goto_2

    .line 116
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 118
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object v1

    .line 132
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    move v1, v3

    .line 139
    :goto_2
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 147
    move v3, v1

    .line 148
    :goto_3
    invoke-static {v3}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)V

    .line 151
    return v3

    .line 152
    :goto_4
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 160
    throw v0

    .line 161
    :cond_4
    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 163
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 169
    move-result-wide v4

    .line 170
    :try_start_2
    new-instance v0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    .line 172
    iget-object v6, p0, Lcom/android/server/knox/dar/DarManagerService;->mContext:Landroid/content/Context;

    .line 174
    invoke-direct {v0, v6}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    .line 177
    invoke-virtual {v0}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isAliveDeviceRootKeyService()Z

    .line 180
    move-result v6

    .line 181
    if-nez v6, :cond_5

    .line 183
    const-string v0, "DRK service is not ready..."

    .line 185
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    goto :goto_5

    .line 189
    :catchall_1
    move-exception v0

    .line 190
    goto :goto_9

    .line 191
    :catch_1
    move-exception v0

    .line 192
    goto :goto_7

    .line 193
    :cond_5
    invoke-virtual {v0, v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isExistDeviceRootKey(I)Z

    .line 196
    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 197
    :goto_5
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 199
    :goto_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 205
    goto :goto_8

    .line 206
    :goto_7
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 209
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 211
    goto :goto_6

    .line 212
    :goto_8
    invoke-static {v3}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)V

    .line 215
    return v3

    .line 216
    :goto_9
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 224
    throw v0
.end method

.method public final isEmTokenAllowed()Z
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    .line 3
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mContext:Landroid/content/Context;

    .line 5
    invoke-direct {v0, p0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 14
    const/4 p0, 0x7

    .line 15
    invoke-virtual {v0, p0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I

    .line 18
    move-result p0

    .line 19
    const/4 v0, 0x1

    .line 20
    if-ne p0, v0, :cond_0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    const-string p0, "EM Token status : "

    .line 26
    const-string v1, "DarManagerService"

    .line 28
    invoke-static {p0, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 31
    return v0
.end method

.method public final isInnerAuthRequired(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isKnoxKeyInstallable()Z
    .locals 15

    .line 1
    const-string v0, "KnoxTestKey"

    .line 3
    const-string/jumbo v1, "ro.hardware.virtual_device"

    .line 6
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    const-string v2, "1"

    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 18
    const-string p0, "DarManagerService"

    .line 20
    const-string v0, "Will be Failed in device integrity check. But, running on VirtualDevice. Continue - "

    .line 22
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 35
    move-result-wide v1

    .line 36
    const/4 v3, 0x0

    .line 37
    :try_start_0
    new-instance v4, Lcom/samsung/android/security/keystore/AttestationUtils;

    .line 39
    invoke-direct {v4}, Lcom/samsung/android/security/keystore/AttestationUtils;-><init>()V

    .line 42
    sget-object v5, Lcom/android/server/knox/dar/SecureUtil;->sSecureRandom:Ljava/security/SecureRandom;

    .line 44
    const/16 v6, 0x8

    .line 46
    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->generateSeed(I)[B

    .line 49
    move-result-object v8

    .line 50
    if-eqz v8, :cond_2

    .line 52
    new-instance v5, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 54
    const/4 v6, 0x4

    .line 55
    invoke-direct {v5, v0, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 58
    const-string v13, "SHA-384"

    .line 60
    const-string v14, "SHA-512"

    .line 62
    const-string v9, "NONE"

    .line 64
    const-string v10, "SHA-1"

    .line 66
    const-string v11, "SHA-224"

    .line 68
    const-string v12, "SHA-256"

    .line 70
    filled-new-array/range {v9 .. v14}, [Ljava/lang/String;

    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v5, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    .line 81
    move-result-object v12

    .line 82
    new-instance v5, Lcom/samsung/android/security/keystore/AttestParameterSpec;

    .line 84
    const/4 v11, 0x0

    .line 85
    const/4 v10, 0x1

    .line 86
    move-object v7, v5

    .line 87
    move v9, v11

    .line 88
    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/security/keystore/AttestParameterSpec;-><init>([BZZZLandroid/security/keystore/KeyGenParameterSpec;)V

    .line 91
    invoke-virtual {v4, v5}, Lcom/samsung/android/security/keystore/AttestationUtils;->generateKeyPair(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/security/KeyPair;

    .line 94
    move-result-object v4

    .line 95
    if-eqz v4, :cond_1

    .line 97
    invoke-static {v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {p0, v4}, Lcom/android/server/knox/dar/DarManagerService;->checkDeviceIntegrity([Ljava/security/cert/Certificate;)Z

    .line 104
    move-result v3

    .line 105
    if-eqz v3, :cond_1

    .line 107
    invoke-static {v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->deleteKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    goto :goto_4

    .line 113
    :catch_0
    move-exception v0

    .line 114
    goto :goto_2

    .line 115
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 117
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 123
    goto :goto_3

    .line 124
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    .line 126
    const-string/jumbo v4, "challenge == null"

    .line 129
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 132
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 138
    goto :goto_1

    .line 139
    :goto_3
    return v3

    .line 140
    :goto_4
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 148
    throw v0
.end method

.method public final isLicensed()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    .line 4
    const/16 p0, -0xa

    .line 6
    return p0
.end method

.method public final isResetPasswordTokenActive(I)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isVirtualLockSupported()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 8
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mVirtualLockImpl:Lcom/android/server/knox/dar/VirtualLockImpl;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {p1}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 23
    move-result-wide v0

    .line 24
    :try_start_0
    iget-object v2, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    .line 26
    invoke-virtual {v2, p1}, Lcom/android/server/knox/dar/DarDatabaseCache;->getLong(I)J

    .line 29
    move-result-wide v2

    .line 30
    iget-object p0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 32
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->isEscrowTokenActive(JI)Z

    .line 35
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    move v1, p0

    .line 40
    :goto_0
    return v1

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    throw p0

    .line 46
    :cond_1
    return v1
.end method

.method public final isSDPEnabled(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    .line 4
    const/4 p0, 0x0

    .line 5
    return p0
.end method

.method public final isSdpSupported()Z
    .locals 1

    .line 1
    const-string p0, "DarManagerService_SDP"

    .line 3
    const-string v0, "SDP not supported"

    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public final isSdpSupportedSecureFolder(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/android/server/knox/dar/DarManagerService;->mUserManager:Landroid/os/UserManager;

    .line 12
    if-eqz v2, :cond_0

    .line 14
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    if-eqz p1, :cond_1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    sget-object p1, Lcom/android/server/knox/dar/DarManagerService;->NULL_USER:Landroid/content/pm/UserInfo;

    .line 33
    :goto_1
    if-eqz p1, :cond_2

    .line 35
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_2

    .line 41
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isSdpNotSupportedSecureFolder()Z

    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_2

    .line 47
    const/4 p0, 0x1

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/4 p0, 0x0

    .line 50
    :goto_2
    return p0
.end method

.method public final isSensitive(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    .line 4
    const/4 p0, 0x0

    .line 5
    return p0
.end method

.method public final isVirtualLockSupported()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mVirtualLockImpl:Lcom/android/server/knox/dar/VirtualLockImpl;

    .line 3
    if-eqz p0, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final lock(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    .line 4
    const/16 p0, -0xa

    .line 6
    return p0
.end method

.method public final migrate(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    .line 4
    const/16 p0, -0xa

    .line 6
    return p0
.end method

.method public final onBiometricsAuthenticated(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    .line 4
    return-void
.end method

.method public final onDeviceOwnerLocked(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    .line 4
    return-void
.end method

.method public prepareSecuredDataKey(I)V
    .locals 2

    .line 1
    const-string v0, "SdpSecureDataKey"

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/DarManagerService;->doesSpecificKeyExist(Ljava/lang/String;I)Z

    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/DarManagerService;->generateAndSaveSpecificKey(Ljava/lang/String;I)Z

    .line 16
    move-result p0

    .line 17
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    move-result-object p0

    .line 21
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 25
    const-string p1, "Generate secure data key for user %d [ res : %b ]"

    .line 27
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    const-string p1, "DarManagerService"

    .line 33
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    return-void
.end method

.method public final registerClient(ILcom/samsung/android/knox/dar/sdp/ISdpListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    .line 4
    return-void
.end method

.method public final registerListener(Ljava/lang/String;Lcom/samsung/android/knox/dar/sdp/ISdpListener;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    .line 4
    const/16 p0, -0xa

    .line 6
    return p0
.end method

.method public final removeEngine(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    .line 4
    const/16 p0, -0xa

    .line 6
    return p0
.end method

.method public final reportApplicationBinding(JIILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->get()Lcom/android/server/knox/zt/devicetrust/AppMonitor;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->isOn()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 14
    move-result v0

    .line 15
    const-string v1, "DarManagerService"

    .line 17
    if-eq v0, p3, :cond_0

    .line 19
    const-string/jumbo p0, "reportApplicationBinding: pid is not matched"

    .line 22
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-void

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 28
    invoke-virtual {p0, p3}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    if-nez p0, :cond_1

    .line 34
    const-string/jumbo p0, "reportApplicationBinding: Package is not valid with pid : "

    .line 37
    invoke-static {p3, p0, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void

    .line 41
    :cond_1
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 44
    move-result-object p0

    .line 45
    new-instance v7, Lcom/android/server/knox/dar/DarManagerService$2;

    .line 47
    move-object v0, v7

    .line 48
    move v1, p3

    .line 49
    move v2, p4

    .line 50
    move-object v3, p5

    .line 51
    move-object v4, p6

    .line 52
    move-wide v5, p1

    .line 53
    invoke-direct/range {v0 .. v6}, Lcom/android/server/knox/dar/DarManagerService$2;-><init>(IILjava/lang/String;Ljava/lang/String;J)V

    .line 56
    invoke-virtual {p0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    :cond_2
    return-void
.end method

.method public final reserveUserIdForSystem()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isVirtualLockSupported()Z

    .line 4
    move-result v0

    .line 5
    const/16 v1, -0x2710

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mVirtualLockImpl:Lcom/android/server/knox/dar/VirtualLockImpl;

    .line 11
    iget-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    const-string/jumbo v0, "reserveUserIdForSystem"

    .line 19
    invoke-static {v0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->enforceCallerKnoxCoreOrSelf(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/android/server/knox/dar/VirtualLockImpl;->getReservedUserIdForSystem()I

    .line 25
    move-result v0

    .line 26
    invoke-virtual {p0}, Lcom/android/server/knox/dar/VirtualLockImpl;->getReservedUserIdForSystem()I

    .line 29
    move-result v2

    .line 30
    if-eq v2, v1, :cond_0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/VirtualLockImpl;->getAvailableUserId()I

    .line 36
    move-result v0

    .line 37
    iget-object p0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    const/4 v2, 0x0

    .line 47
    const-string/jumbo v3, "vl.reserved.userid"

    .line 50
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/knox/dar/DarDatabaseCache;->putInternal(ILjava/lang/String;Ljava/lang/String;)V

    .line 53
    :goto_0
    return v0

    .line 54
    :cond_1
    return v1
.end method

.method public final resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    .line 4
    const/16 p0, -0xa

    .line 6
    return p0
.end method

.method public final resetPasswordWithToken(Ljava/lang/String;[BI)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isVirtualLockSupported()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 8
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mVirtualLockImpl:Lcom/android/server/knox/dar/VirtualLockImpl;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    const-string v2, "Reset password with token for user "

    .line 17
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    const-string v2, "VirtualLockImpl"

    .line 29
    invoke-static {v2, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {p3}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 38
    goto :goto_3

    .line 39
    :cond_0
    if-eqz p1, :cond_1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const-string p1, ""

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    .line 46
    invoke-virtual {v0, p3}, Lcom/android/server/knox/dar/DarDatabaseCache;->getLong(I)J

    .line 49
    move-result-wide v3

    .line 50
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 53
    move-result-wide v7

    .line 54
    :try_start_0
    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->isNumericOnly(Ljava/lang/String;)Z

    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 60
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    .line 63
    move-result-object p1

    .line 64
    :goto_1
    move-object v2, p1

    .line 65
    goto :goto_2

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_4

    .line 68
    :cond_2
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPasswordOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    .line 71
    move-result-object p1

    .line 72
    goto :goto_1

    .line 73
    :goto_2
    iget-object p1, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

    .line 75
    if-nez p1, :cond_3

    .line 77
    const-class p1, Lcom/android/internal/widget/LockSettingsInternal;

    .line 79
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Lcom/android/internal/widget/LockSettingsInternal;

    .line 85
    iput-object p1, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

    .line 87
    :cond_3
    iget-object p0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

    .line 89
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 92
    move-result-object p0

    .line 93
    new-instance p1, Lcom/android/server/knox/dar/VirtualLockImpl$$ExternalSyntheticLambda0;

    .line 95
    move-object v1, p1

    .line 96
    move-object v5, p2

    .line 97
    move v6, p3

    .line 98
    invoke-direct/range {v1 .. v6}, Lcom/android/server/knox/dar/VirtualLockImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/LockscreenCredential;J[BI)V

    .line 101
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 104
    move-result-object p0

    .line 105
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 107
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    move-result-object p0

    .line 111
    check-cast p0, Ljava/lang/Boolean;

    .line 113
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 116
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 120
    :goto_3
    return v1

    .line 121
    :goto_4
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 124
    throw p0

    .line 125
    :cond_4
    return v1
.end method

.method public saveResetTokenViaProtectorForLegacy([BI)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string p0, "SdpResetToken"

    .line 8
    invoke-static {p2, p0, p1}, Lcom/android/server/knox/dar/KeyProtector;->protect(ILjava/lang/String;[B)Z

    .line 11
    move-result p0

    .line 12
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)V

    .line 15
    return p0
.end method

.method public saveSpecificKeyViaProtector([BLjava/lang/String;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Lcom/android/server/knox/dar/SecureUtil;->isAnyoneEmptyHere([Ljava/lang/Object;)Z

    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 20
    iget-object v2, p0, Lcom/android/server/knox/dar/DarManagerService;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-static {p3, p2, p1}, Lcom/android/server/knox/dar/KeyProtector;->protect(ILjava/lang/String;[B)Z

    .line 28
    move-result p1

    .line 29
    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    if-eqz p1, :cond_0

    .line 34
    const/4 p1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    const/4 p1, 0x0

    .line 39
    :goto_0
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    return p1

    .line 48
    :goto_1
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    throw p1
.end method

.method public saveTokenHandleViaProtectorForLegacy(JI)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/knox/dar/sdp/security/BytesUtil;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    .line 3
    const/16 v0, 0x8

    .line 5
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/android/server/knox/dar/sdp/security/BytesUtil;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    .line 11
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 14
    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 17
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 20
    move-result-object p1

    .line 21
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    const-string p0, "SdpTokenHandle"

    .line 28
    invoke-static {p3, p0, p1}, Lcom/android/server/knox/dar/KeyProtector;->protect(ILjava/lang/String;[B)Z

    .line 31
    move-result p0

    .line 32
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)V

    .line 35
    return p0
.end method

.method public final saveTokenIntoTrusted(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    .line 4
    const/16 p0, -0xa

    .line 6
    return p0
.end method

.method public final setDualDarInfo(II)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final setInnerAuthUserId(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setMainUserId(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setPassword(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    .line 4
    const/16 p0, -0xa

    .line 6
    return p0
.end method

.method public final setResetPasswordToken([BI)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isVirtualLockSupported()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 8
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mVirtualLockImpl:Lcom/android/server/knox/dar/VirtualLockImpl;

    .line 10
    const-string/jumbo v0, "vl.rst.token.handle"

    .line 13
    iget-object v2, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    const-string v4, "Set reset password token for user "

    .line 19
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    const-string v4, "VirtualLockImpl"

    .line 31
    invoke-static {v4, v3}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {p2}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    if-eqz p1, :cond_2

    .line 43
    array-length v3, p1

    .line 44
    const/16 v4, 0x20

    .line 46
    if-lt v3, v4, :cond_2

    .line 48
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 51
    move-result-wide v3

    .line 52
    :try_start_0
    invoke-virtual {v2, p2}, Lcom/android/server/knox/dar/DarDatabaseCache;->getLong(I)J

    .line 55
    move-result-wide v5

    .line 56
    invoke-virtual {p0, p2, v5, v6}, Lcom/android/server/knox/dar/VirtualLockImpl;->clearResetPasswordTokenInternal(IJ)Z

    .line 59
    iget-object v5, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 61
    iget-object p0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 63
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mEscrowTokenStateChangeCallback:Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    .line 65
    invoke-virtual {v5, p1, p2, p0}, Lcom/android/internal/widget/LockPatternUtils;->addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    .line 68
    move-result-wide p0

    .line 69
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v2, p2, v0, v5}, Lcom/android/server/knox/dar/DarDatabaseCache;->putInternal(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    const-wide/16 v5, 0x0

    .line 78
    cmp-long p0, p0, v5

    .line 80
    if-eqz p0, :cond_1

    .line 82
    const/4 v1, 0x1

    .line 83
    :cond_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 86
    goto :goto_0

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    throw p0

    .line 92
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 94
    const-string/jumbo p1, "token must be at least 32-byte long"

    .line 97
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 100
    throw p0

    .line 101
    :cond_3
    :goto_0
    return v1
.end method

.method public setResetTokenForLegacy([BI)Z
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Set reset token for Legacy user "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v0

    .line 22
    const-string/jumbo v1, "token"

    .line 25
    const-string/jumbo v2, "userId"

    .line 28
    filled-new-array {v1, p1, v2, v0}, [Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 43
    move-result-wide v0

    .line 44
    const/4 v2, 0x0

    .line 45
    const/4 v3, 0x0

    .line 46
    :try_start_0
    iget-object v4, p0, Lcom/android/server/knox/dar/DarManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 48
    invoke-virtual {v4, p1, p2, v2}, Lcom/android/internal/widget/LockPatternUtils;->addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    .line 51
    move-result-wide v4

    .line 52
    const-wide/16 v6, 0x0

    .line 54
    cmp-long p1, v4, v6

    .line 56
    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p0, v4, v5, p2}, Lcom/android/server/knox/dar/DarManagerService;->saveTokenHandleViaProtectorForLegacy(JI)Z

    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_0

    .line 64
    const/4 v3, 0x1

    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    goto :goto_4

    .line 68
    :catch_0
    move-exception p1

    .line 69
    goto :goto_2

    .line 70
    :cond_0
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_1

    .line 80
    iget-object p1, p0, Lcom/android/server/knox/dar/DarManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 82
    invoke-virtual {p1, v4, v5, p2}, Lcom/android/internal/widget/LockPatternUtils;->removeEscrowToken(JI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_1
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 87
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    goto :goto_3

    .line 94
    :goto_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    const-string p2, "Unexpected exception while set reset token for Legacy"

    .line 99
    invoke-static {p1, v2, p2}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 104
    goto :goto_1

    .line 105
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 107
    const-string p1, "Result of set reset token for Legacy : "

    .line 109
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object p0

    .line 119
    invoke-static {v2, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return v3

    .line 123
    :goto_4
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 131
    throw p1
.end method

.method public final setSensitive(ILjava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    .line 4
    const/4 p0, 0x0

    .line 5
    return p0
.end method

.method public final startMonitoring(IILandroid/os/Bundle;Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->checkSystemPermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mEndpointMonitorImpl:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->startMonitoring(IILandroid/os/Bundle;Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;)I

    .line 11
    move-result p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, -0x6

    .line 14
    :goto_0
    return p0
.end method

.method public final startTracing(IILandroid/os/Bundle;Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->checkSystemPermission()V

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/knox/dar/DarManagerService;->startMonitoring(IILandroid/os/Bundle;Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;)I

    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final stopMonitoring(II)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->checkSystemPermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mEndpointMonitorImpl:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->stopMonitoring(II)I

    .line 11
    move-result p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, -0x6

    .line 14
    :goto_0
    return p0
.end method

.method public final stopTracing(II)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->checkSystemPermission()V

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/DarManagerService;->stopMonitoring(II)I

    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final systemReady()V
    .locals 3

    .line 1
    const-string v0, "DarManagerService"

    .line 3
    const-string/jumbo v1, "systemReady for DarManagerService"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v0, Landroid/os/HandlerThread;

    .line 11
    const-string v1, "DarManagerService"

    .line 13
    const/16 v2, 0xa

    .line 15
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 18
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 21
    new-instance v1, Lcom/android/server/knox/dar/DarManagerService$DarHandler;

    .line 23
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 26
    move-result-object v0

    .line 27
    invoke-direct {v1, p0, v0}, Lcom/android/server/knox/dar/DarManagerService$DarHandler;-><init>(Lcom/android/server/knox/dar/DarManagerService;Landroid/os/Looper;)V

    .line 30
    iput-object v1, p0, Lcom/android/server/knox/dar/DarManagerService;->mDarHandler:Lcom/android/server/knox/dar/DarManagerService$DarHandler;

    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/DarManagerService;->prepareSecuredDataKey(I)V

    .line 36
    const-class p0, Lcom/android/server/knox/dar/DarManagerService;

    .line 38
    monitor-enter p0

    .line 39
    :try_start_0
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw v0
.end method

.method public final unlock(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    .line 4
    const/16 p0, -0xa

    .line 6
    return p0
.end method

.method public final unlockViaTrusted(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    .line 4
    const/16 p0, -0xa

    .line 6
    return p0
.end method

.method public final unregisterClient(ILcom/samsung/android/knox/dar/sdp/ISdpListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    .line 4
    return-void
.end method

.method public final unregisterListener(Ljava/lang/String;Lcom/samsung/android/knox/dar/sdp/ISdpListener;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    .line 4
    const/16 p0, -0xa

    .line 6
    return p0
.end method
