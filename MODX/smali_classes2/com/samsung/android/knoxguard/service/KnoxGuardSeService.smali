.class public final Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;
.super Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final KEY_INTEGRITY_RESULT:Ljava/lang/String; = "integrity_result"

.field public static final KEY_IS_MAINTENANCE_MODE_SUPPORTED:Ljava/lang/String; = "is_maintenance_mode_supported"

.field public static final KEY_LOCK_RESULT:Ljava/lang/String; = "lock_result"

.field public static final KG_FAILCOUNT_FOR_DELAY:I = 0x1

.field public static final KNOXGUARD_SERVICE:Ljava/lang/String; = "knoxguard_service"

.field public static final LOG:Z = false

.field public static final TAG:Ljava/lang/String;

.field public static final TA_VERSION_NOT_SET:I = -0x1

.field public static final adbBlockKey:Ljava/lang/String; = "adbCommandBlock"

.field public static final doBlockKey:Ljava/lang/String; = "doProvisionBlock"

.field public static intentRelayReceiver:Lcom/samsung/android/knoxguard/service/receiver/IntentRelayReceiver;

.field public static mActionList:Ljava/util/List;

.field public static mBundle:Landroid/os/Bundle;

.field public static mClientName:Ljava/lang/String;

.field public static mContext:Landroid/content/Context;

.field public static mEmailAddress:Ljava/lang/String;

.field public static mFailureCount:I

.field public static mLockResult:I

.field public static mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field public static mMessage:Ljava/lang/String;

.field public static mPhoneNumber:Ljava/lang/String;

.field public static mPreFix:Ljava/lang/String;

.field public static mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

.field public static mRetryRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

.field public static mSettedInterface:Ljava/lang/String;

.field public static mSkipPin:Z

.field public static mSkipSupport:Z

.field public static mTAError:Lcom/samsung/android/knoxguard/service/KgErrWrapper;

.field public static mTAVersion:I

.field public static opListener:Landroid/app/AppOpsManager$OnOpChangedInternalListener;

.field public static sfPolicyCache:Ljava/lang/String;

.field public static userPresentReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;


# instance fields
.field public mConnectivityManagerService:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;

    .line 2
    .line 3
    const-string v0, "KG.KnoxGuardSeService"

    .line 4
    .line 5
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "knox.guard"

    .line 8
    .line 9
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mPreFix:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mActionList:Ljava/util/List;

    .line 13
    .line 14
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->intentRelayReceiver:Lcom/samsung/android/knoxguard/service/receiver/IntentRelayReceiver;

    .line 15
    .line 16
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->userPresentReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;

    .line 17
    .line 18
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mSettedInterface:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    sput v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mFailureCount:I

    .line 22
    .line 23
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mTAError:Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 24
    .line 25
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mClientName:Ljava/lang/String;

    .line 26
    .line 27
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mPhoneNumber:Ljava/lang/String;

    .line 28
    .line 29
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mEmailAddress:Ljava/lang/String;

    .line 30
    .line 31
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mMessage:Ljava/lang/String;

    .line 32
    .line 33
    sput v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mTAVersion:I

    .line 34
    .line 35
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mBundle:Landroid/os/Bundle;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    sput v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mLockResult:I

    .line 39
    .line 40
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mRetryRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 41
    .line 42
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->sfPolicyCache:Ljava/lang/String;

    .line 43
    .line 44
    new-instance v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$1;

    .line 45
    .line 46
    invoke-direct {v0}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;-><init>()V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->opListener:Landroid/app/AppOpsManager$OnOpChangedInternalListener;

    .line 50
    .line 51
    new-instance v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$2;

    .line 52
    .line 53
    invoke-direct {v0}, Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;-><init>()V

    .line 54
    .line 55
    .line 56
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 57
    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mConnectivityManagerService:Landroid/net/ConnectivityManager;

    .line 6
    .line 7
    sput-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getStateAndSetToKGSystemProperty()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->registerReceiver(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->registerAlarmReceiver(Landroid/content/Context;I)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->registerUserPresentReceiverIfLocked(I)V

    .line 24
    .line 25
    .line 26
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->opListener:Landroid/app/AppOpsManager$OnOpChangedInternalListener;

    .line 29
    .line 30
    invoke-static {p0, p1, v0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->setInitialState(Landroid/content/Context;ILandroid/app/AppOpsManager$OnOpChangedInternalListener;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static bindAndSetToLockScreen()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "bindAndSetToLockScreen"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :try_start_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "lock_settings"

    .line 13
    .line 14
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :catch_0
    move-exception v0

    .line 28
    goto :goto_2

    .line 29
    :cond_0
    :goto_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 30
    .line 31
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 32
    .line 33
    const/4 v2, 0x3

    .line 34
    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/ILockSettings;->registerRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setRemoteLockToLockscreen(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_3

    .line 42
    :goto_1
    throw v0

    .line 43
    :goto_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    :goto_3
    return-void
.end method

.method public static deserialize([BLjava/lang/Class;)Ljava/lang/Object;
    .locals 5

    .line 1
    const-string p1, "Deserialize inputstream failed IO exception"

    .line 2
    .line 3
    const-string v0, "Deserialize failed IO exception"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p0, :cond_6

    .line 7
    .line 8
    array-length v2, p0

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_9

    .line 12
    .line 13
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 16
    .line 17
    .line 18
    :try_start_1
    new-instance p0, Ljava/io/ObjectInputStream;

    .line 19
    .line 20
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    .line 22
    .line 23
    :try_start_2
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :goto_0
    :try_start_4
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 37
    .line 38
    .line 39
    goto/16 :goto_5

    .line 40
    .line 41
    :catch_1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    goto :goto_5

    .line 47
    :catchall_0
    move-exception v1

    .line 48
    goto :goto_6

    .line 49
    :catch_2
    move-exception v3

    .line 50
    goto :goto_1

    .line 51
    :catch_3
    move-exception v3

    .line 52
    goto :goto_3

    .line 53
    :catchall_1
    move-exception p0

    .line 54
    move-object v4, v1

    .line 55
    move-object v1, p0

    .line 56
    move-object p0, v4

    .line 57
    goto :goto_6

    .line 58
    :catch_4
    move-exception v3

    .line 59
    move-object p0, v1

    .line 60
    goto :goto_1

    .line 61
    :catch_5
    move-exception v3

    .line 62
    move-object p0, v1

    .line 63
    goto :goto_3

    .line 64
    :catchall_2
    move-exception p0

    .line 65
    move-object v2, v1

    .line 66
    move-object v1, p0

    .line 67
    move-object p0, v2

    .line 68
    goto :goto_6

    .line 69
    :catch_6
    move-exception v3

    .line 70
    move-object p0, v1

    .line 71
    move-object v2, p0

    .line 72
    goto :goto_1

    .line 73
    :catch_7
    move-exception v3

    .line 74
    move-object p0, v1

    .line 75
    move-object v2, p0

    .line 76
    goto :goto_3

    .line 77
    :goto_1
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 78
    .line 79
    .line 80
    if-eqz v2, :cond_1

    .line 81
    .line 82
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :catch_8
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    :cond_1
    :goto_2
    if-eqz p0, :cond_3

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :goto_3
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 95
    .line 96
    .line 97
    if-eqz v2, :cond_2

    .line 98
    .line 99
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    .line 100
    .line 101
    .line 102
    goto :goto_4

    .line 103
    :catch_9
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    :cond_2
    :goto_4
    if-eqz p0, :cond_3

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_3
    :goto_5
    return-object v1

    .line 112
    :goto_6
    if-eqz v2, :cond_4

    .line 113
    .line 114
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    .line 115
    .line 116
    .line 117
    goto :goto_7

    .line 118
    :catch_a
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    :cond_4
    :goto_7
    if-eqz p0, :cond_5

    .line 124
    .line 125
    :try_start_a
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    .line 126
    .line 127
    .line 128
    goto :goto_8

    .line 129
    :catch_b
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 130
    .line 131
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    :cond_5
    :goto_8
    throw v1

    .line 135
    :cond_6
    :goto_9
    return-object v1
.end method

.method public static getByteArrayResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)[B
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getByteArrayResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static getByteArrayResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;Z)[B
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mTAError:Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    :cond_0
    if-eqz p0, :cond_1

    .line 2
    iget p1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    if-nez p1, :cond_1

    .line 3
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;Z)I

    move-result p0

    return p0
.end method

.method public static getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;Z)I
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mTAError:Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    :cond_0
    if-eqz p0, :cond_2

    .line 2
    iget p1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    if-eqz p1, :cond_1

    const/16 v0, 0x303

    if-ne p1, v0, :cond_2

    .line 3
    :cond_1
    iget p0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static getKGLockObject()Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "getKGVaultData"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    sget v2, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 10
    .line 11
    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getLockObject(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {v2, v3}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getByteArrayResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;Z)[B

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    array-length v3, v2

    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    const-string v2, "No data"

    .line 27
    .line 28
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-class v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;

    .line 35
    .line 36
    invoke-static {v2, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    move-object v1, v0

    .line 43
    goto :goto_1

    .line 44
    :goto_0
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v4, "getKGVaultData error: "

    .line 49
    .line 50
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    :goto_1
    return-object v1
.end method

.method public static getLockoutDelayTime(I)J
    .locals 2

    .line 1
    const/4 v0, 0x6

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    const-wide/32 v0, 0xea60

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x7

    .line 9
    if-ne p0, v0, :cond_1

    .line 10
    .line 11
    const-wide/32 v0, 0x493e0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/16 v0, 0x8

    .line 16
    .line 17
    if-ne p0, v0, :cond_2

    .line 18
    .line 19
    const-wide/32 v0, 0xdbba0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const/16 v0, 0x9

    .line 24
    .line 25
    if-ne p0, v0, :cond_3

    .line 26
    .line 27
    const-wide/32 v0, 0x36ee80

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    const/16 v0, 0xa

    .line 32
    .line 33
    if-lt p0, v0, :cond_4

    .line 34
    .line 35
    const-wide/32 v0, 0x5265c00

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_4
    const-wide/16 v0, 0x0

    .line 40
    .line 41
    :goto_0
    return-wide v0
.end method

.method public static getRemoteLockInfoForRetry()Lcom/android/internal/widget/RemoteLockInfo;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "getRemoteLockInfoForRetry : "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mRetryRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mRetryRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 23
    .line 24
    return-object v0
.end method

.method public static getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;
    .locals 1

    .line 1
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mTAError:Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->getStr()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method

.method public static getTaErrorCode()I
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mTAError:Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public static initializeFailureCount()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getTAInfo(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sput v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mFailureCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v3, "initializeFailureCount error : "

    .line 23
    .line 24
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :goto_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v2, "mFailureCount : "

    .line 46
    .line 47
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mFailureCount:I

    .line 51
    .line 52
    invoke-static {v1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1

    .line 35
    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method public static registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)V
    .locals 7

    .line 32
    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    .line 33
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method public static registerUserPresentReceiver()V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "call registerUserPresentReceiver"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->unregisterUserPresentReceiver()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/content/IntentFilter;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;

    .line 17
    .line 18
    invoke-direct {v1}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->userPresentReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;

    .line 22
    .line 23
    const-string v1, "android.intent.action.USER_PRESENT"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const v1, 0x5f5e101

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 32
    .line 33
    .line 34
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->userPresentReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static registerUserPresentReceiverIfLocked(I)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->registerUserPresentReceiver()V

    .line 5
    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public static setActionList(Ljava/util/List;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCallerAndKgPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mActionList:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public static setBundle(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mBundle:Landroid/os/Bundle;

    .line 2
    .line 3
    return-void
.end method

.method public static setClientName(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mClientName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-void
.end method

.method public static setEmailAddress(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mEmailAddress:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static setFailureCount(I)V
    .locals 0

    .line 1
    sput p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mFailureCount:I

    .line 2
    .line 3
    return-void
.end method

.method public static setIntentRelayReceiver(Lcom/samsung/android/knoxguard/service/receiver/IntentRelayReceiver;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->intentRelayReceiver:Lcom/samsung/android/knoxguard/service/receiver/IntentRelayReceiver;

    .line 2
    .line 3
    return-void
.end method

.method public static setLockResult(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p0, 0x2

    .line 6
    :goto_0
    sput p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mLockResult:I

    .line 7
    .line 8
    return-void
.end method

.method public static setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mMessage:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mPhoneNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static setPreFix(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCallerAndKgPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mPreFix:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static setRemoteLockToLockscreen(Z)V
    .locals 7

    .line 5
    const-string v0, "kgvDelayTime "

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setRemoteLockToLockscreen"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :try_start_0
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v2, :cond_0

    .line 7
    const-string v2, "lock_settings"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_4

    .line 8
    :cond_0
    :goto_0
    sget v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mFailureCount:I

    if-gez v2, :cond_1

    .line 9
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->initializeFailureCount()V

    .line 10
    :cond_1
    sget v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mFailureCount:I

    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getLockoutDelayTime(I)J

    move-result-wide v2

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getKGLockObject()Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->getClientName()Ljava/lang/String;

    move-result-object v1

    .line 14
    sput-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mClientName:Ljava/lang/String;

    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 16
    sput-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mPhoneNumber:Ljava/lang/String;

    .line 17
    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    .line 18
    sput-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mEmailAddress:Ljava/lang/String;

    .line 19
    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 20
    sput-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mMessage:Ljava/lang/String;

    .line 21
    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->getSkipPin()Z

    move-result v1

    .line 22
    sput-boolean v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mSkipPin:Z

    .line 23
    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->getSkipSupport()Z

    move-result v1

    .line 24
    sput-boolean v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mSkipSupport:Z

    .line 25
    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 26
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mBundle:Landroid/os/Bundle;

    .line 27
    :cond_2
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isTabletDevice()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "Device Services"

    if-eqz v0, :cond_3

    .line 28
    :try_start_1
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const v4, 0x1040712

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 29
    sget-object v4, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const v5, 0x1040710

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 30
    :cond_3
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const v4, 0x1040711

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 31
    sget-object v4, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const v5, 0x104070e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 32
    :goto_1
    new-instance v4, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    const/4 v5, 0x3

    invoke-direct {v4, v5, p0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    .line 33
    sget-object v5, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mClientName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, ""

    if-eqz v5, :cond_5

    :try_start_2
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mClientName:Ljava/lang/String;

    :cond_5
    :goto_2
    invoke-virtual {v4, v0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setClientName(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    .line 34
    sget-object v4, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mPhoneNumber:Ljava/lang/String;

    if-nez v4, :cond_6

    move-object v4, v6

    :cond_6
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setPhoneNumber(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    .line 35
    sget-object v4, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mEmailAddress:Ljava/lang/String;

    if-nez v4, :cond_7

    move-object v4, v6

    :cond_7
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setEmailAddress(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    .line 36
    sget-object v4, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mMessage:Ljava/lang/String;

    if-eqz v4, :cond_9

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mMessage:Ljava/lang/String;

    :cond_9
    :goto_3
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 37
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setAllowFailCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setLockTimeOut(J)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setBlockCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mSkipPin:Z

    .line 40
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setSkipPinContainer(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mSkipSupport:Z

    .line 41
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setSkipSupportContainer(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mBundle:Landroid/os/Bundle;

    .line 42
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setBundle(Landroid/os/Bundle;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v0

    .line 44
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    invoke-static {v1, v0, p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->performLockscreen(Lcom/android/internal/widget/ILockSettings;Lcom/android/internal/widget/RemoteLockInfo;Z)Z

    move-result v1

    if-eqz p0, :cond_a

    if-nez v1, :cond_a

    .line 45
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 46
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->startRetryLockAlarm(Landroid/content/Context;Lcom/android/internal/widget/RemoteLockInfo;)V

    .line 47
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 48
    :goto_4
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_a
    :goto_5
    return-void
.end method

.method public static setRetryRemoteLockInfo(Lcom/android/internal/widget/RemoteLockInfo;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "setRetryRemoteLockInfo : "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mRetryRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 22
    .line 23
    return-void
.end method

.method public static setSettedInterface(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mSettedInterface:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static setSfPolicyCache(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->sfPolicyCache:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static setSkipPin(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mSkipPin:Z

    .line 2
    .line 3
    return-void
.end method

.method public static setSkipSupport(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mSkipSupport:Z

    .line 2
    .line 3
    return-void
.end method

.method public static setTAVersion(I)V
    .locals 0

    .line 1
    sput p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mTAVersion:I

    .line 2
    .line 3
    return-void
.end method

.method public static setTaError(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mTAError:Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 2
    .line 3
    return-void
.end method

.method public static setUserPresentReceiverEnabled(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->registerUserPresentReceiver()V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->unregisterUserPresentReceiver()V

    .line 8
    .line 9
    .line 10
    :goto_0
    return-void
.end method

.method public static unbindFromLockScreen()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "unbindFromLockScreen"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    :try_start_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "lock_settings"

    .line 14
    .line 15
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :catch_0
    move-exception v0

    .line 29
    goto :goto_2

    .line 30
    :cond_0
    :goto_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 31
    .line 32
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 33
    .line 34
    const/4 v2, 0x3

    .line 35
    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/ILockSettings;->unregisterRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setRemoteLockToLockscreen(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_3

    .line 43
    :goto_1
    throw v0

    .line 44
    :goto_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    :goto_3
    return-void
.end method

.method public static unlockCompleted()V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "onUnlockedByPasscode"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    const-string v3, "com.samsung.kgclient.android.intent.action.MANUAL_UNLOCK"

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-static {v2, v3, v4}, Lcom/samsung/android/knoxguard/service/IntentRelayManager;->sendRequestedIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static unregisterUserPresentReceiver()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "call unregisterUserPresentReceiver"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->userPresentReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->userPresentReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final bindToLockScreen()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->bindAndSetToLockScreen()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    .line 1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string p1, "call dump"

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {p1, p0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    const-string p1, " state: "

    .line 22
    .line 23
    invoke-static {p2, p0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :try_start_0
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    sget-object v3, Lcom/samsung/android/knoxguard/service/utils/Constants;->KG_LOG_URI:Landroid/net/Uri;

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v7, 0x0

    .line 36
    const/4 v4, 0x0

    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 39
    .line 40
    .line 41
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    :goto_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    const-string p1, "data"

    .line 51
    .line 52
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    if-eqz p0, :cond_1

    .line 66
    .line 67
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catchall_1
    move-exception p0

    .line 72
    :try_start_3
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :catchall_2
    move-exception p0

    .line 77
    goto :goto_2

    .line 78
    :cond_1
    :goto_1
    throw p1

    .line 79
    :cond_2
    if-eqz p0, :cond_3

    .line 80
    .line 81
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    .line 90
    .line 91
    throw p0
.end method

.method public final generateHotpDHRequest()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCallerAndKgPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "generateHotpDHRequest"

    .line 9
    .line 10
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 14
    .line 15
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_generateHotpDhRequest(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final getBooleanValueFromJson(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_1

    .line 6
    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    .line 15
    .line 16
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return p0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v0, "getBooleanValueFromJson error : "

    .line 30
    .line 31
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    return p3

    .line 49
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    const-string p1, "getBooleanValueFromJson empty values"

    .line 52
    .line 53
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    return p3
.end method

.method public final getClientData()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCallerAndKgPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "getClientData"

    .line 9
    .line 10
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 14
    .line 15
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getClientData(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final getConnectivityManagerService()Landroid/net/ConnectivityManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "call getConnectivityManagerService"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const-string v0, "connectivity"

    .line 9
    .line 10
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mConnectivityManagerService:Landroid/net/ConnectivityManager;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mConnectivityManagerService:Landroid/net/ConnectivityManager;

    .line 29
    .line 30
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mConnectivityManagerService:Landroid/net/ConnectivityManager;

    .line 31
    .line 32
    return-object p0
.end method

.method public final getHotpChallenge()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCallerAndKgPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "getHotpChallenge"

    .line 9
    .line 10
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 14
    .line 15
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getHotpChallenge(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final getKGID()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCallerAndKgPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "getKGID"

    .line 9
    .line 10
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 14
    .line 15
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getKGID(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final getKGPolicy()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCallerAndKgPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "getKGPolicy"

    .line 9
    .line 10
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getKGPolicyRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public final getKGPolicyCompany()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "getKGPolicyCompany"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getKGPolicyCompany()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final getKGServiceInfo()Landroid/os/Bundle;
    .locals 3

    .line 1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCallerAndKgPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "getKGServiceInfo"

    .line 9
    .line 10
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAState()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-static {v0, p0, v1}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkKGClientIntegrityAndEnableComponentsWithFlag(Landroid/content/Context;IZ)Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    new-instance v0, Landroid/os/Bundle;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v1, "lock_result"

    .line 30
    .line 31
    sget v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mLockResult:I

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    const-string v1, "integrity_result"

    .line 37
    .line 38
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->getFailedIntegrityResult(Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string p0, "is_maintenance_mode_supported"

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    return-object v0
.end method

.method public final getKGServiceVersion()I
    .locals 0

    .line 1
    const p0, 0xa21fe81

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final getLockAction()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCallerAndKgPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "getLockAction"

    .line 9
    .line 10
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 14
    .line 15
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getLockAction(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final getNonce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCallerAndKgPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "getNonce"

    .line 9
    .line 10
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getNonceRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    :goto_0
    const-string p1, "getNonce null parameter!"

    .line 28
    .line 29
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public final getPBAUniqueNumber()Ljava/lang/String;
    .locals 10

    .line 1
    const-string p0, "/sys/block/mmcblk0/device/cid"

    .line 2
    .line 3
    const-string v0, "/sys/block/mmcblk0/device/unique_number"

    .line 4
    .line 5
    const-string v1, "/sys/class/sec/mmc/un"

    .line 6
    .line 7
    const-string v2, "/sys/class/scsi_host/host0/unique_number"

    .line 8
    .line 9
    const-string v3, "/sys/class/sec/ufs/un"

    .line 10
    .line 11
    sget-object v4, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v4}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCallerAndKgPermission(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    sget-object v4, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    const-string v5, "call getPBAUniqueNumber"

    .line 19
    .line 20
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    :try_start_0
    invoke-static {v3}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isExistFile(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    const-string v7, ""

    .line 32
    .line 33
    const/4 v8, 0x1

    .line 34
    if-ne v6, v8, :cond_0

    .line 35
    .line 36
    :try_start_1
    invoke-static {v3}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    goto/16 :goto_3

    .line 41
    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto/16 :goto_4

    .line 44
    .line 45
    :cond_0
    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isExistFile(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-ne v3, v8, :cond_1

    .line 50
    .line 51
    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    goto/16 :goto_3

    .line 56
    .line 57
    :cond_1
    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isExistFile(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-ne v2, v8, :cond_2

    .line 62
    .line 63
    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    goto/16 :goto_3

    .line 68
    .line 69
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isExistFile(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-ne v1, v8, :cond_3

    .line 74
    .line 75
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    goto/16 :goto_3

    .line 80
    .line 81
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isExistFile(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-ne v0, v8, :cond_c

    .line 86
    .line 87
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const-string v0, "/sys/block/mmcblk0/device/name"

    .line 92
    .line 93
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    const-string v1, "c"

    .line 98
    .line 99
    if-eqz p0, :cond_a

    .line 100
    .line 101
    const/4 v2, 0x2

    .line 102
    const/4 v3, 0x0

    .line 103
    :try_start_2
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    if-eqz v0, :cond_9

    .line 108
    .line 109
    const-string v9, "15"

    .line 110
    .line 111
    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    if-eqz v9, :cond_4

    .line 116
    .line 117
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    goto :goto_2

    .line 122
    :cond_4
    const-string v2, "02"

    .line 123
    .line 124
    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    const/4 v3, 0x3

    .line 129
    if-nez v2, :cond_8

    .line 130
    .line 131
    const-string v2, "45"

    .line 132
    .line 133
    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_5

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_5
    const-string v2, "11"

    .line 141
    .line 142
    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-nez v2, :cond_7

    .line 147
    .line 148
    const-string v2, "90"

    .line 149
    .line 150
    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-eqz v2, :cond_6

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_6
    const-string v2, "FE"

    .line 158
    .line 159
    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-eqz v2, :cond_9

    .line 164
    .line 165
    const/4 v2, 0x4

    .line 166
    const/4 v3, 0x6

    .line 167
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    goto :goto_2

    .line 172
    :cond_7
    :goto_0
    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    goto :goto_2

    .line 177
    :cond_8
    :goto_1
    const/4 v2, 0x5

    .line 178
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    goto :goto_2

    .line 183
    :cond_9
    move-object v0, v7

    .line 184
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const/16 v0, 0x12

    .line 205
    .line 206
    const/16 v2, 0x14

    .line 207
    .line 208
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const/16 v0, 0x1c

    .line 228
    .line 229
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const/16 v1, 0x1e

    .line 249
    .line 250
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    goto :goto_3

    .line 262
    :cond_a
    move-object p0, v1

    .line 263
    :goto_3
    if-eqz p0, :cond_b

    .line 264
    .line 265
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 270
    .line 271
    .line 272
    return-object p0

    .line 273
    :cond_b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 274
    .line 275
    .line 276
    return-object v7

    .line 277
    :cond_c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 278
    .line 279
    .line 280
    return-object v7

    .line 281
    :goto_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 282
    .line 283
    .line 284
    throw p0
.end method

.method public final getSfPolicy()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCallerAndKgPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "getSfPolicy"

    .line 9
    .line 10
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 14
    .line 15
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getSfPolicy(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final getSfPolicyValue(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->sfPolicyCache:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    sget v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 7
    .line 8
    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getSfPolicy(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sput-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->sfPolicyCache:Ljava/lang/String;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->sfPolicyCache:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p0, v1, p1, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getBooleanValueFromJson(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 24
    .line 25
    .line 26
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    return p0

    .line 28
    :goto_1
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "getSfPolicyValue error : "

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return v0
.end method

.method public final getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCallerAndKgPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final getTAError()I
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCallerAndKgPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getTaErrorCode()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final getTAInfo(I)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCallerAndKgPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "getTAInfo: infoFlag : "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getTAInfo(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public final getTAState()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getTAStateSetError(Z)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final getTAStateSetError(Z)I
    .locals 1

    .line 1
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getTAState(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;Z)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "getTAState : "

    .line 14
    .line 15
    invoke-static {p0, v0, p1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x5

    .line 19
    if-ltz p0, :cond_0

    .line 20
    .line 21
    if-le p0, p1, :cond_1

    .line 22
    .line 23
    :cond_0
    move p0, p1

    .line 24
    :cond_1
    return p0
.end method

.method public final getTAVersion()I
    .locals 3

    .line 1
    const-string p0, "getTAVersion : "

    .line 2
    .line 3
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mTAVersion:I

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v1, v0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getTAInfo(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    sput v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mTAVersion:I

    .line 27
    .line 28
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v2, "TA version not converted to int: "

    .line 52
    .line 53
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    :goto_0
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mTAVersion:I

    .line 71
    .line 72
    return p0
.end method

.method public final isKGAllowADB()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->isSfPolicyRequired()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const-string v0, "adbCommandBlock"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getSfPolicyValue(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    xor-int/2addr p0, v1

    .line 16
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, "isKGAllowADB : "

    .line 19
    .line 20
    invoke-static {v1, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    return p0
.end method

.method public final isKGAllowDO()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->isSfPolicyRequired()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const-string v0, "doProvisionBlock"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getSfPolicyValue(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    xor-int/2addr p0, v1

    .line 16
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, "isKGAllowDO : "

    .line 19
    .line 20
    invoke-static {v1, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    return p0
.end method

.method public final isRetryLockActivationRequired(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getTAVersion()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x3

    .line 6
    if-lt p0, v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isSingleOtpBitFusedAndStateIsNotCompleted(I)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isOtpBitFusedWithActive()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_2

    .line 18
    .line 19
    if-eq v0, p1, :cond_2

    .line 20
    .line 21
    const/4 p0, 0x2

    .line 22
    if-ne p0, p1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 28
    :goto_1
    return p0
.end method

.method public final isSfPolicyRequired()Z
    .locals 4

    .line 1
    const-string/jumbo v0, "ro.boot.kg.bit"

    .line 2
    .line 3
    .line 4
    const-string v1, "FF"

    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v2, "0"

    .line 11
    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    if-nez v2, :cond_3

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-boolean v1, Lcom/samsung/android/knoxguard/service/utils/Constants;->IS_FIRST_API_SUPPORT_SF_POLICY:Z

    .line 27
    .line 28
    const/4 v2, 0x4

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getTAVersion()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-ge p0, v2, :cond_1

    .line 36
    .line 37
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    const-string v0, "isSfPolicyRequired: not supported"

    .line 40
    .line 41
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return v3

    .line 45
    :cond_1
    const-string p0, "1"

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAState()I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-ne v2, p0, :cond_2

    .line 58
    .line 59
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 60
    .line 61
    const-string v0, "isSfPolicyRequired: completed"

    .line 62
    .line 63
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    return v3

    .line 67
    :cond_2
    const/4 p0, 0x1

    .line 68
    return p0

    .line 69
    :cond_3
    :goto_0
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 70
    .line 71
    const-string v1, "isSfPolicyRequired: not fused ("

    .line 72
    .line 73
    const-string v2, ")"

    .line 74
    .line 75
    invoke-static {v1, v0, v2, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return v3
.end method

.method public final isSkipSupportContainerSupported()Z
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "call isSkipSupportContainerSupported"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isSkipSupportContainerSupported()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final isVpnExceptionRequired()Z
    .locals 7

    .line 1
    const-string v0, "call isVpnExceptionRequired, state : "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    const-string v3, "knox.kg.state"

    .line 8
    .line 9
    sget-object v4, Lcom/samsung/android/knoxguard/service/utils/Constants;->strState:[Ljava/lang/String;

    .line 10
    .line 11
    const/4 v5, 0x5

    .line 12
    aget-object v6, v4, v5

    .line 13
    .line 14
    invoke-static {v3, v6}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getTAVersion()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const/4 v6, 0x3

    .line 23
    if-lt p0, v6, :cond_0

    .line 24
    .line 25
    invoke-static {v3}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isSingleOtpBitFusedAndStateIsNotCompleted(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_2

    .line 32
    :cond_0
    const/4 p0, 0x2

    .line 33
    aget-object p0, v4, p0

    .line 34
    .line 35
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_2

    .line 40
    .line 41
    aget-object p0, v4, v6

    .line 42
    .line 43
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-nez p0, :cond_2

    .line 48
    .line 49
    aget-object p0, v4, v5

    .line 50
    .line 51
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-nez p0, :cond_2

    .line 56
    .line 57
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isOtpBitFusedWithActive()Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/4 p0, 0x0

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 67
    :goto_1
    sget-object v4, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 68
    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v0, " , result : "

    .line 78
    .line 79
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    .line 92
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    .line 94
    .line 95
    return p0

    .line 96
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 97
    .line 98
    .line 99
    throw p0
.end method

.method public final lockScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)I
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCallerAndKgPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "lockScreen"

    .line 9
    .line 10
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    sput-object p2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mClientName:Ljava/lang/String;

    .line 14
    .line 15
    sput-object p3, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mPhoneNumber:Ljava/lang/String;

    .line 16
    .line 17
    sput-object p4, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mEmailAddress:Ljava/lang/String;

    .line 18
    .line 19
    sput-object p5, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mMessage:Ljava/lang/String;

    .line 20
    .line 21
    sput-boolean p6, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mSkipPin:Z

    .line 22
    .line 23
    sput-boolean p7, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mSkipSupport:Z

    .line 24
    .line 25
    sput-object p8, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mBundle:Landroid/os/Bundle;

    .line 26
    .line 27
    invoke-static/range {p1 .. p8}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->lockScreenRefactor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/4 p1, 0x1

    .line 32
    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;Z)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setKGSystemProperty()V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->bindAndSetToLockScreen()V

    .line 40
    .line 41
    .line 42
    return p0
.end method

.method public final makeRotReturn(II)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string p1, "<%d>:<%d>"

    .line 14
    .line 15
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public final provisionCert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCallerAndKgPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string/jumbo v0, "provisionCert"

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->provisionCert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const/4 p1, 0x1

    .line 44
    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;Z)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    return p0

    .line 49
    :cond_1
    :goto_0
    const-string/jumbo p1, "provisionCert failed: input null"

    .line 50
    .line 51
    .line 52
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    const/4 p0, -0x1

    .line 56
    return p0
.end method

.method public final registerAlarmReceiver(Landroid/content/Context;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "call registerAlarmReceiver"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->isRetryLockActivationRequired(I)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string p0, "com.samsung.android.knoxguard.RETRY_LOCK"

    .line 16
    .line 17
    invoke-static {p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    new-instance p2, Lcom/samsung/android/knoxguard/service/receiver/AlarmReceiver;

    .line 22
    .line 23
    invoke-direct {p2}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x4

    .line 27
    invoke-static {p1, p2, p0, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final registerIntent(Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCallerAndKgPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->unRegisterIntent()V

    .line 7
    .line 8
    .line 9
    new-instance p0, Lcom/samsung/android/knoxguard/service/receiver/IntentRelayReceiver;

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->intentRelayReceiver:Lcom/samsung/android/knoxguard/service/receiver/IntentRelayReceiver;

    .line 15
    .line 16
    new-instance p0, Landroid/content/IntentFilter;

    .line 17
    .line 18
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setPreFix(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setActionList(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    check-cast p2, Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    sget-object p2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->intentRelayReceiver:Lcom/samsung/android/knoxguard/service/receiver/IntentRelayReceiver;

    .line 50
    .line 51
    invoke-static {p1, p2, p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 52
    .line 53
    .line 54
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 55
    .line 56
    const-string p1, "KG registerIntent"

    .line 57
    .line 58
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final registerReceiver(Landroid/content/Context;)V
    .locals 7

    .line 1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v0, "call registerReceiver"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 3
    new-instance v0, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;

    .line 4
    invoke-direct {v0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 5
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isChinaDevice()Z

    move-result v1

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    const/4 v4, 0x0

    const-string/jumbo v5, "package"

    if-eqz v1, :cond_0

    .line 6
    const-string v1, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    const-string v1, "com.sec.android.app.setupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8
    invoke-static {p1, v0, p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 10
    const-string v1, "com.samsung.android.kgclient"

    invoke-virtual {p0, v1, v4}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 11
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 13
    const-string v6, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 14
    invoke-static {p0, v3, v1, v2, v6}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    invoke-static {p1, v0, p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 17
    :goto_0
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 18
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const v1, 0x5f5e101

    .line 19
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 20
    invoke-static {p1, v0, p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 21
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 22
    invoke-virtual {p0, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 23
    const-string v5, "com.android.systemui"

    invoke-virtual {p0, v5, v4}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 24
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 27
    invoke-static {p1, v0, p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public final resetRPMB()I
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCallerAndKgPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string/jumbo v0, "resetRPMB"

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->resetRPMBRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;Z)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setKGSystemProperty()V

    .line 25
    .line 26
    .line 27
    return p0
.end method

.method public final setAirplaneMode(Z)V
    .locals 4

    .line 1
    const-string p0, "Exception : "

    .line 2
    .line 3
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCallerAndKgPermission(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "call setAirplaneMode"

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    :try_start_0
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const-string v3, "connectivity"

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/net/ConnectivityManager;

    .line 28
    .line 29
    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_2

    .line 38
    :catch_0
    move-exception p1

    .line 39
    :try_start_1
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :goto_1
    return-void

    .line 62
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    .line 64
    .line 65
    throw p0
.end method

.method public final setCheckingState()I
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCallerAndKgPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string/jumbo v0, "setCheckingState"

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 15
    .line 16
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_userChecking(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;Z)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setKGSystemProperty()V

    .line 26
    .line 27
    .line 28
    return p0
.end method

.method public final setClientData(Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCallerAndKgPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string/jumbo v0, "setClientData"

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->setClientDataRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 p1, 0x1

    .line 19
    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;Z)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final setRemoteLockToLockscreen(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;)V
    .locals 17

    .line 1
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCallerAndKgPermission(Landroid/content/Context;)V

    .line 2
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    const-string v1, "call setRemoteLockToLockscreen"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    const/16 v16, 0x1

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    move/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    .line 4
    invoke-static/range {v2 .. v16}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setRemoteLockToLockscreen(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;Z)V

    return-void
.end method

.method public final setRemoteLockToLockscreenWithSkipSupport(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;Z)V
    .locals 17

    .line 1
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCallerAndKgPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "call setRemoteLockToLockscreen with skipSupportContainer"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    move/from16 v3, p1

    .line 16
    .line 17
    move/from16 v4, p2

    .line 18
    .line 19
    move-object/from16 v5, p3

    .line 20
    .line 21
    move-object/from16 v6, p4

    .line 22
    .line 23
    move-object/from16 v7, p5

    .line 24
    .line 25
    move/from16 v8, p6

    .line 26
    .line 27
    move-object/from16 v9, p7

    .line 28
    .line 29
    move/from16 v10, p8

    .line 30
    .line 31
    move-wide/from16 v11, p9

    .line 32
    .line 33
    move/from16 v13, p11

    .line 34
    .line 35
    move/from16 v14, p12

    .line 36
    .line 37
    move-object/from16 v15, p13

    .line 38
    .line 39
    move/from16 v16, p14

    .line 40
    .line 41
    invoke-static/range {v2 .. v16}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setRemoteLockToLockscreen(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;Z)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final shouldBlockCustomRom()Z
    .locals 7

    .line 1
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/Constants;->strState:[Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    aget-object v2, v0, v1

    .line 5
    .line 6
    const-string v3, "knox.kg.state"

    .line 7
    .line 8
    invoke-static {v3, v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getTAVersion()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x2

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x3

    .line 20
    if-lt p0, v6, :cond_0

    .line 21
    .line 22
    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isSingleOtpBitFusedAndStateIsNotCompleted(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_2

    .line 27
    .line 28
    aget-object p0, v0, v5

    .line 29
    .line 30
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_2

    .line 35
    .line 36
    aget-object p0, v0, v4

    .line 37
    .line 38
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-nez p0, :cond_2

    .line 43
    .line 44
    aget-object p0, v0, v6

    .line 45
    .line 46
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-nez p0, :cond_2

    .line 51
    .line 52
    aget-object p0, v0, v1

    .line 53
    .line 54
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-eqz p0, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    aget-object p0, v0, v5

    .line 62
    .line 63
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-nez p0, :cond_2

    .line 68
    .line 69
    aget-object p0, v0, v4

    .line 70
    .line 71
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-nez p0, :cond_2

    .line 76
    .line 77
    aget-object p0, v0, v6

    .line 78
    .line 79
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-nez p0, :cond_2

    .line 84
    .line 85
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isOtpBitFusedWithActive()Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    if-eqz p0, :cond_1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    move v3, v5

    .line 93
    :cond_2
    :goto_0
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 94
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v1, "call shouldBlockCustomRom, state : "

    .line 98
    .line 99
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v1, " , result : "

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    return v3
.end method

.method public final showInstallmentStatus()Z
    .locals 6

    .line 1
    const-string v0, "call showInstallmentStatus, state : "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    const-string v3, "knox.kg.state"

    .line 8
    .line 9
    sget-object v4, Lcom/samsung/android/knoxguard/service/utils/Constants;->strState:[Ljava/lang/String;

    .line 10
    .line 11
    const/4 v5, 0x5

    .line 12
    aget-object v5, v4, v5

    .line 13
    .line 14
    invoke-static {v3, v5}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getTAVersion()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const/4 v5, 0x3

    .line 23
    if-lt p0, v5, :cond_0

    .line 24
    .line 25
    invoke-static {v3}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isSingleOtpBitFusedAndStateIsNotCompleted(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_2

    .line 32
    :cond_0
    const/4 p0, 0x2

    .line 33
    aget-object p0, v4, p0

    .line 34
    .line 35
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_2

    .line 40
    .line 41
    aget-object p0, v4, v5

    .line 42
    .line 43
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-nez p0, :cond_2

    .line 48
    .line 49
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isOtpBitFusedWithActive()Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eqz p0, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/4 p0, 0x0

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 59
    :goto_1
    sget-object v4, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v0, " , result : "

    .line 70
    .line 71
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    .line 84
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    .line 86
    .line 87
    return p0

    .line 88
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    .line 90
    .line 91
    throw p0
.end method

.method public final unRegisterIntent()V
    .locals 2

    .line 1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCallerAndKgPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setActionList(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->intentRelayReceiver:Lcom/samsung/android/knoxguard/service/receiver/IntentRelayReceiver;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 17
    .line 18
    .line 19
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->intentRelayReceiver:Lcom/samsung/android/knoxguard/service/receiver/IntentRelayReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    const-string v0, "KG unRegisterIntent"

    .line 35
    .line 36
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final unlockScreen()I
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCallerAndKgPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string/jumbo v0, "unlockScreen"

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->unbindFromLockScreen()V

    .line 15
    .line 16
    .line 17
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 18
    .line 19
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_unlockScreen(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;Z)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    const/4 v0, 0x0

    .line 29
    sput v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mFailureCount:I

    .line 30
    .line 31
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setKGSystemProperty()V

    .line 32
    .line 33
    .line 34
    return p0
.end method

.method public final verifyCompleteToken(Ljava/lang/String;)I
    .locals 2

    .line 1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCallerAndKgPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyCompleteTokenRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;Z)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string/jumbo v1, "verifyCompleteToken result : "

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setKGSystemProperty()V

    .line 36
    .line 37
    .line 38
    if-nez p0, :cond_0

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    sput-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->sfPolicyCache:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->unbindFromLockScreen()V

    .line 44
    .line 45
    .line 46
    :cond_0
    return p0
.end method

.method public final verifyHOTPDHChallenge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCallerAndKgPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2, p3}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyHotpDHChallengeRefactor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;Z)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string/jumbo p3, "verifyHOTPDHChallenge result : "

    .line 20
    .line 21
    .line 22
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setKGSystemProperty()V

    .line 36
    .line 37
    .line 38
    return p0
.end method

.method public final verifyHOTPPin(Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCallerAndKgPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string/jumbo v0, "verifyHOTPPin"

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyHOTPPinRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 p1, 0x1

    .line 19
    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;Z)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    sput p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mFailureCount:I

    .line 24
    .line 25
    return p0
.end method

.method public final verifyKgRot()Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCallerAndKgPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string/jumbo v1, "verifyKgRot"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, "caller: "

    .line 29
    .line 30
    const-string v4, " ("

    .line 31
    .line 32
    const-string v5, ")"

    .line 33
    .line 34
    invoke-static {v1, v3, v2, v4, v5}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->makeRotReturn(II)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_3

    .line 51
    .line 52
    const-string v3, "com.samsung.android.kgclient"

    .line 53
    .line 54
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_0

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkSignatures(Landroid/content/Context;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_1

    .line 68
    .line 69
    const/16 v1, 0x1772

    .line 70
    .line 71
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->makeRotReturn(II)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    :goto_0
    move v2, v0

    .line 76
    goto :goto_2

    .line 77
    :cond_1
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->isEnabled(Landroid/content/Context;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-nez v2, :cond_2

    .line 84
    .line 85
    const/16 v1, 0x1771

    .line 86
    .line 87
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->makeRotReturn(II)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    const/4 v2, 0x1

    .line 93
    goto :goto_2

    .line 94
    :cond_3
    :goto_1
    const/16 v1, 0x1770

    .line 95
    .line 96
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->makeRotReturn(II)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    goto :goto_0

    .line 101
    :goto_2
    if-eqz v2, :cond_4

    .line 102
    .line 103
    :try_start_0
    sget v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 104
    .line 105
    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyKgRot(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_3

    .line 114
    :catch_0
    move-exception v1

    .line 115
    const/16 v2, 0x1773

    .line 116
    .line 117
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->makeRotReturn(II)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 122
    .line 123
    const-string v2, "Error verifyKgRot - "

    .line 124
    .line 125
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    .line 127
    .line 128
    move-object v1, p0

    .line 129
    :cond_4
    :goto_3
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 130
    .line 131
    const-string v0, "RoT: "

    .line 132
    .line 133
    invoke-static {v0, v1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return-object v1
.end method

.method public final verifyPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCallerAndKgPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string/jumbo v0, "verifyPolicy"

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyPolicyRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final verifyRegistrationInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCallerAndKgPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string/jumbo v0, "verifyRegistrationInfo"

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyRegistrationInfoRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setKGSystemProperty()V

    .line 23
    .line 24
    .line 25
    return-object p0
.end method

.method public final verifySfPolicy(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCallerAndKgPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string/jumbo v0, "verifySfPolicy"

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    sput-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->sfPolicyCache:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {p1, p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifySfPolicy(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 p1, 0x1

    .line 22
    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;Z)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method
