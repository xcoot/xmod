.class public final Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
.super Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;
.implements Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;
.implements Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;


# static fields
.field public static final BRAND_NAME:Ljava/lang/String;

.field public static final DBG:Z

.field public static final RUN_SCHEDULED_AUTH_ACTION:Ljava/lang/String;

.field public static USE_SCHEDULED_AUTHENTICATION_WEHN_CHARGING:Z


# instance fields
.field public currentHall:I

.field public mAuthType:I

.field public final mAuthenticationHistory:Ljava/util/LinkedList;

.field public final mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$1;

.field public mBlocklister:Lcom/samsung/accessory/manager/authentication/CertBlocklister;

.field public final mContext:Landroid/content/Context;

.field public final mCoverAttachProcessHanlder:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

.field public mCoverAttachedWhenNanos:J

.field public final mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

.field public mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

.field public mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mCoverBroadcaster:Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;

.field public final mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field public mCoverStateByNfc:I

.field public mCoverStateBySensor:I

.field public mCoverType:I

.field public mCurrentPowerSouce:I

.field public mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

.field public final mDetachCheck:Lcom/samsung/accessory/manager/DetachCheck;

.field public mFactoryIntent:Landroid/content/Intent;

.field public final mFactoryReceiver:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

.field public mFactoryTestRequested:Z

.field public mFailuresCount:I

.field public final mInputManager:Lcom/android/server/input/InputManagerService;

.field public mIsFactoryBinary:Z

.field public mIsSensor:Z

.field public volatile mIsShutingdown:Z

.field public mLastAttachTime:J

.field public volatile mLastAuthenticationTime:J

.field public mLastCoverState:Lcom/samsung/android/cover/CoverState;

.field public mLastDetachTime:J

.field public mNfcServiceReady:Z

.field public mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

.field public mPowerManager:Landroid/os/PowerManager;

.field public volatile mPreparing:Z

.field public mRestrictionPolicyOberver:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

.field public final mResult:Ljava/util/concurrent/atomic/AtomicReference;

.field public mRetryCounterFactoryTest:I

.field public mRetryCounterWhenBusy:I

.field public mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mScheduledAuthReceiver:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

.field public mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

.field public mSensor:Landroid/hardware/Sensor;

.field public final mSensorEventListener:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;

.field public final mSensorHistory:Ljava/util/LinkedList;

.field public mSystemReady:Z

.field public mUriData:[B

.field public modelName:Ljava/lang/String;


# direct methods
.method public static -$$Nest$maddSensorRecord(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensorHistory:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x3c

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensorHistory:Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensorHistory:Ljava/util/LinkedList;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p1, "/"

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public static -$$Nest$monNfcReady(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mNfcServiceReady:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isAuthenticationReady()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const-string v3, "SAccessoryManager_CoverAuthenticator"

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-lt v1, v0, :cond_1

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo v2, "ready to authenticate the cover "

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, " "

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    .line 38
    .line 39
    invoke-static {v1, v2, v3}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 v1, 0x2

    .line 43
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    iput-wide v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAttachTime:J

    .line 50
    .line 51
    const-wide/16 v1, 0x0

    .line 52
    .line 53
    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(JZ)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const-string/jumbo v0, "ready to authenticate the cover but a cover attach state is "

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v0, v3}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensor:Landroid/hardware/Sensor;

    .line 64
    .line 65
    if-nez v0, :cond_2

    .line 66
    .line 67
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    const-string/jumbo v1, "sensor"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Landroid/hardware/SensorManager;

    .line 77
    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    const v1, 0x10067

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensor:Landroid/hardware/Sensor;

    .line 88
    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    const-string/jumbo v1, "registerListener sensor"

    .line 92
    .line 93
    .line 94
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensorEventListener:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;

    .line 98
    .line 99
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensor:Landroid/hardware/Sensor;

    .line 100
    .line 101
    const/4 v2, 0x3

    .line 102
    invoke-virtual {v0, v1, p0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 103
    .line 104
    .line 105
    :cond_2
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-class v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ".action.AUTHENTICATION_INTERVAL_ELAPSED"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->RUN_SCHEDULED_AUTH_ACTION:Ljava/lang/String;

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->USE_SCHEDULED_AUTHENTICATION_WEHN_CHARGING:Z

    .line 38
    .line 39
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->BRAND_NAME:Ljava/lang/String;

    .line 50
    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;Landroid/os/Looper;Lcom/samsung/accessory/manager/SAccessoryManager$1;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSystemReady:Z

    .line 9
    .line 10
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mNfcServiceReady:Z

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsShutingdown:Z

    .line 13
    .line 14
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPreparing:Z

    .line 15
    .line 16
    const-string v2, "Samsung Mobile"

    .line 17
    .line 18
    iput-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->modelName:Ljava/lang/String;

    .line 19
    .line 20
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    .line 21
    .line 22
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    .line 23
    .line 24
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryTestRequested:Z

    .line 25
    .line 26
    const/4 v2, -0x1

    .line 27
    iput v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    .line 28
    .line 29
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    .line 30
    .line 31
    const-wide/16 v3, 0x0

    .line 32
    .line 33
    iput-wide v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    .line 34
    .line 35
    iput-wide v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAttachTime:J

    .line 36
    .line 37
    iput-wide v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastDetachTime:J

    .line 38
    .line 39
    iput-wide v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAttachedWhenNanos:J

    .line 40
    .line 41
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    .line 42
    .line 43
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterFactoryTest:I

    .line 44
    .line 45
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I

    .line 46
    .line 47
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    .line 50
    .line 51
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 52
    .line 53
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    .line 57
    .line 58
    new-instance v3, Ljava/util/LinkedList;

    .line 59
    .line 60
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    .line 64
    .line 65
    new-instance v3, Ljava/util/LinkedList;

    .line 66
    .line 67
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensorHistory:Ljava/util/LinkedList;

    .line 71
    .line 72
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 73
    .line 74
    const/4 v0, 0x2

    .line 75
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverType:I

    .line 76
    .line 77
    iput v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateBySensor:I

    .line 78
    .line 79
    iput v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateByNfc:I

    .line 80
    .line 81
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsSensor:Z

    .line 82
    .line 83
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;

    .line 84
    .line 85
    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensorEventListener:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;

    .line 89
    .line 90
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

    .line 91
    .line 92
    const/4 v1, 0x4

    .line 93
    invoke-direct {v0, p0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    .line 94
    .line 95
    .line 96
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

    .line 97
    .line 98
    const/4 v1, 0x1

    .line 99
    invoke-direct {v0, p0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    .line 100
    .line 101
    .line 102
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryReceiver:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

    .line 103
    .line 104
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 107
    .line 108
    iput-object p4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    .line 109
    .line 110
    new-instance p2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    .line 111
    .line 112
    invoke-direct {p2, p0, p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Landroid/os/Looper;)V

    .line 113
    .line 114
    .line 115
    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    .line 116
    .line 117
    new-instance p2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    .line 118
    .line 119
    invoke-direct {p2, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    .line 120
    .line 121
    .line 122
    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAttachProcessHanlder:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    .line 123
    .line 124
    new-instance p2, Lcom/samsung/android/cover/CoverManager;

    .line 125
    .line 126
    invoke-direct {p2, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    .line 127
    .line 128
    .line 129
    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 130
    .line 131
    new-instance p2, Lcom/samsung/accessory/manager/DetachCheck;

    .line 132
    .line 133
    invoke-direct {p2, p1}, Lcom/samsung/accessory/manager/DetachCheck;-><init>(Landroid/content/Context;)V

    .line 134
    .line 135
    .line 136
    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mDetachCheck:Lcom/samsung/accessory/manager/DetachCheck;

    .line 137
    .line 138
    return-void
.end method

.method public static setTransmitPower(Z)V
    .locals 3

    .line 1
    const-string v0, "Call SemTelephony API : is verified :"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "SAccessoryManager_CoverAuthenticator"

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const-string v0, "isemtelephony"

    .line 21
    .line 22
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-wide/16 v1, 0x4000

    .line 31
    .line 32
    invoke-interface {v0, v1, v2, p0}, Lcom/android/internal/telephony/ISemTelephony;->setTransmitPowerExt(JZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method


# virtual methods
.method public final addRecord(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x3c

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p1, "/"

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    .line 44
    .line 45
    invoke-static {v2, p2, p1, p1, v1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 46
    .line 47
    .line 48
    iget p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    .line 49
    .line 50
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateBySensor:I

    .line 57
    .line 58
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    .line 66
    .line 67
    move-result-wide p0

    .line 68
    invoke-static {p0, p1}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    const-string v0, " Current CoverAuthenticator state:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

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
    iget v2, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mReason:I

    .line 24
    .line 25
    const-string v3, "  auth uri = "

    .line 26
    .line 27
    invoke-static {v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v2, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;

    .line 32
    .line 33
    const-string v3, "  auth extra data = "

    .line 34
    .line 35
    invoke-static {p1, v2, v3, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringExtraData:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v1, v0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    const-string v0, "  Historical authentication: "

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    move v1, v0

    .line 51
    :goto_0
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    const-string v3, "    "

    .line 58
    .line 59
    if-ge v1, v2, :cond_1

    .line 60
    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    .line 67
    .line 68
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    add-int/lit8 v1, v1, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensor:Landroid/hardware/Sensor;

    .line 88
    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    const-string v1, "  Magnetic sensor: "

    .line 92
    .line 93
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    move v1, v0

    .line 97
    :goto_1
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensorHistory:Ljava/util/LinkedList;

    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-ge v1, v2, :cond_2

    .line 104
    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensorHistory:Ljava/util/LinkedList;

    .line 111
    .line 112
    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    check-cast v4, Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    add-int/lit8 v1, v1, 0x1

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v2, "  mNfcServiceReady = "

    .line 134
    .line 135
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mNfcServiceReady:Z

    .line 139
    .line 140
    const-string v3, "  mFactoryTestRequested = "

    .line 141
    .line 142
    invoke-static {v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    iget-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryTestRequested:Z

    .line 147
    .line 148
    const-string v3, "  mLastAuthenticationTime = "

    .line 149
    .line 150
    invoke-static {v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    iget-wide v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    .line 155
    .line 156
    const-string v4, "  isAuthenticatonAllowed? = "

    .line 157
    .line 158
    invoke-static {v1, v2, v3, p1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    sget-boolean v2, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->sIsFelicaAllowed:Z

    .line 163
    .line 164
    const-string v3, "  getBlockedType? = "

    .line 165
    .line 166
    invoke-static {v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    sget-boolean v2, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->sIsFelicaAllowed:Z

    .line 171
    .line 172
    if-nez v2, :cond_3

    .line 173
    .line 174
    const/4 v0, 0x2

    .line 175
    :cond_3
    const-string v2, "  isAuthenticationBlocked? = "

    .line 176
    .line 177
    invoke-static {v1, v0, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlocklister:Lcom/samsung/accessory/manager/authentication/CertBlocklister;

    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    sget-boolean v1, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mIsBlocked:Z

    .line 187
    .line 188
    const-string v2, "  mLastAttachTime = "

    .line 189
    .line 190
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    iget-wide v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAttachTime:J

    .line 195
    .line 196
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    const-string v1, "  mLastDetachTime = "

    .line 213
    .line 214
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iget-wide v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastDetachTime:J

    .line 218
    .line 219
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    const-string v1, "  mFailuresCount = "

    .line 236
    .line 237
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    iget v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I

    .line 241
    .line 242
    const-string v2, "  mIsFactoryBinary = "

    .line 243
    .line 244
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    iget-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    .line 249
    .line 250
    const-string v2, "  mSensor = "

    .line 251
    .line 252
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensor:Landroid/hardware/Sensor;

    .line 257
    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    const-string v1, "  mIsSensor = "

    .line 271
    .line 272
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    iget-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsSensor:Z

    .line 276
    .line 277
    const-string v2, "  mLastCoverState = "

    .line 278
    .line 279
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    .line 284
    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverBroadcaster:Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;

    .line 296
    .line 297
    if-eqz v0, :cond_4

    .line 298
    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    const-string v1, "  mRealCoverType = "

    .line 302
    .line 303
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverBroadcaster:Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;

    .line 307
    .line 308
    iget p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;->mRealCoverType:I

    .line 309
    .line 310
    invoke-static {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 311
    .line 312
    .line 313
    :cond_4
    return-void
.end method

.method public final getCoverSwitchState()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    .line 2
    .line 3
    const/16 v1, -0x100

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensor:Landroid/hardware/Sensor;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsSensor:Z

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateBySensor:I

    .line 20
    .line 21
    return p0

    .line 22
    :cond_1
    :goto_0
    iget-object p0, v3, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 23
    .line 24
    const/16 v0, 0x1b

    .line 25
    .line 26
    invoke-interface {p0, v2, v1, v0}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :cond_2
    iget-object p0, v3, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 32
    .line 33
    const/16 v0, 0x15

    .line 34
    .line 35
    invoke-interface {p0, v2, v1, v0}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0
.end method

.method public final isAuthenticationReady()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSystemReady:Z

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mNfcServiceReady:Z

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsShutingdown:Z

    .line 25
    .line 26
    const-string v2, "SAccessoryManager_CoverAuthenticator"

    .line 27
    .line 28
    invoke-static {v2, v0, v1}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 29
    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSystemReady:Z

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mNfcServiceReady:Z

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    iget-boolean p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsShutingdown:Z

    .line 40
    .line 41
    if-nez p0, :cond_0

    .line 42
    .line 43
    const/4 p0, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 p0, 0x0

    .line 46
    :goto_0
    return p0
.end method

.method public final notifyFriendsStateChanged(Z[B[B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

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
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 16
    .line 17
    if-eqz v0, :cond_4

    .line 18
    .line 19
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverType:I

    .line 20
    .line 21
    const/16 v1, 0xff

    .line 22
    .line 23
    if-ne v0, v1, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 31
    .line 32
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "com.samsung.accessory.manager.action.SEND_ATTACH_INFORMATION"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    const-string v1, "isAttached"

    .line 41
    .line 42
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 51
    .line 52
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sepunion/SemUnionManagerLocal;->accessoryStateChanged(Z[B[B)V

    .line 53
    .line 54
    .line 55
    :try_start_0
    new-instance p3, Landroid/content/ComponentName;

    .line 56
    .line 57
    const-string v0, "com.sec.enterprise.knox.cloudmdm.smdms"

    .line 58
    .line 59
    const-string v1, "com.sec.enterprise.knox.cloudmdm.smdms.core.AccessoryStateChangeReceiver"

    .line 60
    .line 61
    invoke-direct {p3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance v0, Landroid/content/Intent;

    .line 65
    .line 66
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    const-string v0, "accessoryType"

    .line 74
    .line 75
    iget v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverType:I

    .line 76
    .line 77
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    const-string v0, "accessoryState"

    .line 81
    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    const/16 p1, 0x3e9

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    const/16 p1, 0x3ea

    .line 88
    .line 89
    :goto_1
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    const-string p1, "accessoryUid"

    .line 93
    .line 94
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 95
    .line 96
    .line 97
    const-string p1, "from"

    .line 98
    .line 99
    const-string p2, "com.samsung.accessory.manager.authentication"

    .line 100
    .line 101
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    .line 103
    .line 104
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    invoke-virtual {p0, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :catch_0
    const-string p0, "SAccessoryManager_CoverAuthenticator"

    .line 111
    .line 112
    const-string p1, "error during starting KES service"

    .line 113
    .line 114
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    :cond_4
    :goto_2
    return-void
.end method

.method public final onAuthenticationComplted(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

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
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onAuthenticationStarting(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p0, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onAuthenticationStopped()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onCoverAttached(JZZ)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v2, "onCoverAttached "

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    .line 13
    .line 14
    const-string v3, " "

    .line 15
    .line 16
    const-string v4, ",mSensor="

    .line 17
    .line 18
    invoke-static {v1, v2, v3, p4, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensor:Landroid/hardware/Sensor;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "SAccessoryManager_CoverAuthenticator"

    .line 31
    .line 32
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    .line 36
    .line 37
    if-nez v1, :cond_9

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isAuthenticationReady()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :cond_0
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 52
    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    iget-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsSensor:Z

    .line 56
    .line 57
    if-ne v1, p4, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const-string/jumbo p1, "onCoverAttached event is skip."

    .line 61
    .line 62
    .line 63
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    const/4 p1, -0x3

    .line 67
    invoke-virtual {p0, p1, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(II)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_2
    :goto_0
    iput-boolean p4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsSensor:Z

    .line 72
    .line 73
    if-eqz p4, :cond_3

    .line 74
    .line 75
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensor:Landroid/hardware/Sensor;

    .line 76
    .line 77
    if-nez v1, :cond_3

    .line 78
    .line 79
    const-string/jumbo p1, "onCoverAttached: mSensor is null."

    .line 80
    .line 81
    .line 82
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    const/4 p1, -0x4

    .line 86
    invoke-virtual {p0, p1, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(II)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    new-instance v2, Landroid/os/Bundle;

    .line 95
    .line 96
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string/jumbo v3, "when"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAttachProcessHanlder:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    .line 109
    .line 110
    const/4 p2, 0x1

    .line 111
    if-nez p3, :cond_7

    .line 112
    .line 113
    iput p2, v1, Landroid/os/Message;->what:I

    .line 114
    .line 115
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 116
    .line 117
    .line 118
    move-result-object p3

    .line 119
    iput-object p3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 120
    .line 121
    if-nez p4, :cond_4

    .line 122
    .line 123
    iget-object p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    .line 124
    .line 125
    if-eqz p3, :cond_5

    .line 126
    .line 127
    iget-object p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    .line 128
    .line 129
    iget-object p4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    .line 130
    .line 131
    invoke-static {p3, p4}, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->isDataChanged(Landroid/content/Context;[B)Z

    .line 132
    .line 133
    .line 134
    move-result p3

    .line 135
    if-eqz p3, :cond_5

    .line 136
    .line 137
    iget-object p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    .line 138
    .line 139
    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->disableSetting()V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_4
    iget-object p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 144
    .line 145
    const-wide/16 v2, 0x7d0

    .line 146
    .line 147
    invoke-virtual {p3, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 148
    .line 149
    .line 150
    :cond_5
    :goto_1
    iget-object p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    .line 151
    .line 152
    if-eqz p3, :cond_6

    .line 153
    .line 154
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    .line 155
    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    const-string p3, "accessory_cover_uri"

    .line 161
    .line 162
    invoke-static {p0, p3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 167
    .line 168
    .line 169
    move-result p0

    .line 170
    xor-int/2addr p0, p2

    .line 171
    if-eqz p0, :cond_6

    .line 172
    .line 173
    const-wide/16 p2, 0x32

    .line 174
    .line 175
    invoke-virtual {p1, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_6
    const-wide/16 p2, 0x3e8

    .line 180
    .line 181
    invoke-virtual {p1, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_7
    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 186
    .line 187
    .line 188
    move-result p3

    .line 189
    if-eqz p3, :cond_8

    .line 190
    .line 191
    iget-object p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 192
    .line 193
    invoke-virtual {p3}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    .line 194
    .line 195
    .line 196
    move-result-object p3

    .line 197
    if-eqz p3, :cond_8

    .line 198
    .line 199
    iget-object p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 200
    .line 201
    invoke-virtual {p3}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    .line 202
    .line 203
    .line 204
    move-result-object p3

    .line 205
    iget-boolean p3, p3, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 206
    .line 207
    if-eqz p3, :cond_8

    .line 208
    .line 209
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 210
    .line 211
    .line 212
    const/4 p1, -0x2

    .line 213
    invoke-virtual {p0, p1, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(II)V

    .line 214
    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_8
    iput v0, v1, Landroid/os/Message;->what:I

    .line 218
    .line 219
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 220
    .line 221
    .line 222
    :cond_9
    :goto_2
    return-void
.end method

.method public final removeAuthenticationTimeOuts()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPreparing:Z

    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

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

.method public final sendCoverStateToSensorhub(C)V
    .locals 4

    .line 1
    const-string v0, "File write fail "

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "sendCoverStateToSensorhub: "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "SAccessoryManager_CoverAuthenticator"

    .line 19
    .line 20
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsSensor:Z

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    const-string/jumbo p0, "sendCoverStateToSensorhub:skip"

    .line 28
    .line 29
    .line 30
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    const/16 v1, 0x30

    .line 35
    .line 36
    if-ne p1, v1, :cond_1

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v1, 0x1

    .line 41
    :goto_0
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateByNfc:I

    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    .line 45
    .line 46
    const-string v3, "/sys/class/sensors/flip_cover_detector_sensor/nfc_cover_status"

    .line 47
    .line 48
    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 49
    .line 50
    .line 51
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 58
    .line 59
    .line 60
    goto :goto_3

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_4

    .line 63
    :catch_0
    move-exception p0

    .line 64
    goto :goto_2

    .line 65
    :catchall_1
    move-exception p1

    .line 66
    move-object v1, p0

    .line 67
    move-object p0, p1

    .line 68
    goto :goto_4

    .line 69
    :catch_1
    move-exception p1

    .line 70
    move-object v1, p0

    .line 71
    move-object p0, p1

    .line 72
    :goto_2
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    .line 86
    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catch_2
    :cond_2
    :goto_3
    return-void

    .line 91
    :goto_4
    if-eqz v1, :cond_3

    .line 92
    .line 93
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 94
    .line 95
    .line 96
    :catch_3
    :cond_3
    throw p0
.end method

.method public final sendFactoryResult()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "SAccessoryManager_CoverAuthenticator"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "factory intent is null"

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    .line 22
    .line 23
    const-string v3, ""

    .line 24
    .line 25
    if-eqz v2, :cond_3

    .line 26
    .line 27
    array-length v4, v2

    .line 28
    const/16 v5, 0x17

    .line 29
    .line 30
    if-lt v4, v5, :cond_3

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    :goto_0
    array-length v6, v2

    .line 41
    if-ge v5, v6, :cond_1

    .line 42
    .line 43
    aget-byte v6, v2, v5

    .line 44
    .line 45
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    const-string v7, "%02x"

    .line 54
    .line 55
    const/4 v8, 0x1

    .line 56
    invoke-static {v7, v6, v4, v5, v8}, Lcom/android/server/am/mars/MARsFreezeStateRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;II)I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const-string/jumbo v2, "null"

    .line 67
    .line 68
    .line 69
    :goto_1
    const/16 v4, 0xa

    .line 70
    .line 71
    const/16 v5, 0x12

    .line 72
    .line 73
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const-string v4, "Service ID = "

    .line 78
    .line 79
    invoke-static {v4, v2, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    move-object v2, v3

    .line 84
    :goto_2
    const-string v1, "NG_NFC"

    .line 85
    .line 86
    if-eqz v0, :cond_7

    .line 87
    .line 88
    new-instance v4, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;

    .line 89
    .line 90
    iget-object v5, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    .line 91
    .line 92
    invoke-direct {v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;-><init>([B)V

    .line 93
    .line 94
    .line 95
    iget v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mReason:I

    .line 96
    .line 97
    if-nez v0, :cond_4

    .line 98
    .line 99
    iget-boolean v5, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->valid:Z

    .line 100
    .line 101
    if-eqz v5, :cond_4

    .line 102
    .line 103
    iget-object v0, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->serial:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v1, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->id:Ljava/lang/String;

    .line 106
    .line 107
    const-string v3, "OK"

    .line 108
    .line 109
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_4
    if-nez v0, :cond_5

    .line 114
    .line 115
    iget-boolean v2, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->valid:Z

    .line 116
    .line 117
    if-nez v2, :cond_5

    .line 118
    .line 119
    const-string v0, "NG_ID"

    .line 120
    .line 121
    invoke-virtual {p0, v0, v3, v3, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_5
    const/4 v2, 0x1

    .line 126
    if-ne v0, v2, :cond_6

    .line 127
    .line 128
    const-string v0, "NG_KEY"

    .line 129
    .line 130
    invoke-virtual {p0, v0, v3, v3, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_6
    invoke-virtual {p0, v1, v3, v3, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_7
    invoke-virtual {p0, v1, v3, v3, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :goto_3
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    .line 142
    .line 143
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    .line 144
    .line 145
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 146
    .line 147
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method public final setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    .line 2
    .line 3
    const-string/jumbo v1, "result_factory"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    .line 10
    .line 11
    const-string/jumbo v0, "serial_factory"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    .line 18
    .line 19
    const-string p2, "id_factory"

    .line 20
    .line 21
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    .line 25
    .line 26
    const-string/jumbo p2, "serviceid_factory"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    const/4 p2, 0x1

    .line 37
    if-lt p1, p2, :cond_0

    .line 38
    .line 39
    const-string p1, "OK"

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string p1, "NG"

    .line 43
    .line 44
    :goto_0
    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    .line 45
    .line 46
    const-string p3, ", "

    .line 47
    .line 48
    invoke-static {p1, p3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-wide p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAttachTime:J

    .line 53
    .line 54
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    const-wide/16 v7, 0x0

    .line 59
    .line 60
    cmp-long v0, p3, v7

    .line 61
    .line 62
    const-string v9, ""

    .line 63
    .line 64
    const-string v10, "%ty-%tm-%td %tH:%tM:%tS.%tL"

    .line 65
    .line 66
    if-lez v0, :cond_1

    .line 67
    .line 68
    invoke-virtual {v6, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 69
    .line 70
    .line 71
    move-object v0, v6

    .line 72
    move-object v1, v6

    .line 73
    move-object v2, v6

    .line 74
    move-object v3, v6

    .line 75
    move-object v4, v6

    .line 76
    move-object v5, v6

    .line 77
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    invoke-static {v10, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    move-object p3, v9

    .line 87
    :goto_1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const-string p3, "attachInfo"

    .line 95
    .line 96
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    .line 100
    .line 101
    iget-wide p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastDetachTime:J

    .line 102
    .line 103
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    cmp-long p0, p2, v7

    .line 108
    .line 109
    if-lez p0, :cond_2

    .line 110
    .line 111
    invoke-virtual {v6, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 112
    .line 113
    .line 114
    move-object v0, v6

    .line 115
    move-object v1, v6

    .line 116
    move-object v2, v6

    .line 117
    move-object v3, v6

    .line 118
    move-object v4, v6

    .line 119
    move-object v5, v6

    .line 120
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-static {v10, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    :cond_2
    const-string p0, "detachInfo"

    .line 129
    .line 130
    invoke-virtual {p1, p0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method public final setCoverVerified(ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverBroadcaster:Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x4

    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget v7, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    .line 18
    .line 19
    iput v7, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;->mRealCoverType:I

    .line 20
    .line 21
    if-ne v7, v6, :cond_0

    .line 22
    .line 23
    iput v5, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    .line 24
    .line 25
    :cond_0
    new-instance v4, Lcom/samsung/android/cover/CoverState;

    .line 26
    .line 27
    invoke-direct {v4}, Lcom/samsung/android/cover/CoverState;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v5}, Lcom/samsung/android/cover/CoverState;->setFakeCover(Z)V

    .line 31
    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    iget v7, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    .line 36
    .line 37
    const/4 v8, 0x6

    .line 38
    if-ne v7, v8, :cond_1

    .line 39
    .line 40
    invoke-static/range {p1 .. p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setTransmitPower(Z)V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    const/4 v8, 0x1

    .line 48
    if-lt v7, v8, :cond_2

    .line 49
    .line 50
    move v7, v8

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    move v7, v5

    .line 53
    :goto_0
    const-string/jumbo v9, "setCoverVerified isVerified: "

    .line 54
    .line 55
    .line 56
    const-string v10, ", type:"

    .line 57
    .line 58
    invoke-static {v9, v10, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    iget v10, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    .line 65
    .line 66
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    const-string/jumbo v10, "null"

    .line 72
    .line 73
    .line 74
    :goto_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v10, ", isCoverAttached:"

    .line 78
    .line 79
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    const-string v10, "SAccessoryManager_CoverAuthenticator"

    .line 90
    .line 91
    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    if-eqz v2, :cond_4

    .line 95
    .line 96
    iget v9, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    .line 97
    .line 98
    const/16 v11, 0xe

    .line 99
    .line 100
    if-ne v9, v11, :cond_4

    .line 101
    .line 102
    iget-object v9, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    .line 103
    .line 104
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    const-string v11, "com.sec.feature.nfc_suitled_authentication_cover"

    .line 109
    .line 110
    invoke-virtual {v9, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    if-eqz v9, :cond_4

    .line 115
    .line 116
    move v9, v8

    .line 117
    goto :goto_2

    .line 118
    :cond_4
    move v9, v5

    .line 119
    :goto_2
    if-eqz v2, :cond_5

    .line 120
    .line 121
    iget v11, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    .line 122
    .line 123
    const/16 v12, 0x12

    .line 124
    .line 125
    if-eq v11, v12, :cond_6

    .line 126
    .line 127
    :cond_5
    if-eqz v9, :cond_7

    .line 128
    .line 129
    :cond_6
    move v11, v8

    .line 130
    goto :goto_3

    .line 131
    :cond_7
    move v11, v5

    .line 132
    :goto_3
    const-string v12, "is_SUITE_LED = "

    .line 133
    .line 134
    invoke-static {v12, v10, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 135
    .line 136
    .line 137
    const-string v12, "CoverManager_"

    .line 138
    .line 139
    const-string v13, ""

    .line 140
    .line 141
    const/4 v14, 0x2

    .line 142
    const/4 v15, 0x0

    .line 143
    if-eqz v11, :cond_f

    .line 144
    .line 145
    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    .line 146
    .line 147
    if-eqz v6, :cond_8

    .line 148
    .line 149
    if-eqz v7, :cond_f

    .line 150
    .line 151
    :cond_8
    if-nez v6, :cond_9

    .line 152
    .line 153
    new-instance v6, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    .line 154
    .line 155
    iget-object v7, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    .line 156
    .line 157
    invoke-direct {v6, v7}, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;-><init>(Landroid/content/Context;)V

    .line 158
    .line 159
    .line 160
    iput-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    .line 161
    .line 162
    :cond_9
    iget-object v6, v3, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayManagerURI:[B

    .line 163
    .line 164
    iput-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    .line 165
    .line 166
    iget-object v7, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    .line 167
    .line 168
    iget-boolean v7, v7, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mCoverAttached:Z

    .line 169
    .line 170
    if-eqz v7, :cond_a

    .line 171
    .line 172
    iget-object v7, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    .line 173
    .line 174
    invoke-static {v7, v6}, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->isDataChanged(Landroid/content/Context;[B)Z

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    if-eqz v6, :cond_a

    .line 179
    .line 180
    const-string v6, "Palette Cover changed, force detach first"

    .line 181
    .line 182
    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    const-string/jumbo v6, "palette cover detach by data change"

    .line 186
    .line 187
    .line 188
    invoke-static {v12, v6}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    .line 192
    .line 193
    invoke-virtual {v6, v5, v15}, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->setCoverVerified(ZLcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 194
    .line 195
    .line 196
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    const-string v7, "Palette Cover attached info = "

    .line 199
    .line 200
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget-object v7, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    .line 204
    .line 205
    if-eqz v7, :cond_b

    .line 206
    .line 207
    invoke-static {v7}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    goto :goto_4

    .line 212
    :cond_b
    move-object v7, v13

    .line 213
    :goto_4
    invoke-static {v6, v7, v10}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    .line 217
    .line 218
    iget-boolean v6, v6, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mCoverAttached:Z

    .line 219
    .line 220
    if-nez v6, :cond_d

    .line 221
    .line 222
    new-instance v6, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    const-string/jumbo v7, "palette cover attach"

    .line 225
    .line 226
    .line 227
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    iget-object v7, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    .line 231
    .line 232
    if-eqz v7, :cond_c

    .line 233
    .line 234
    invoke-static {v7}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v7

    .line 238
    goto :goto_5

    .line 239
    :cond_c
    move-object v7, v13

    .line 240
    :goto_5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    invoke-static {v12, v6}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    iget v6, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    .line 251
    .line 252
    iput v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverType:I

    .line 253
    .line 254
    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    .line 255
    .line 256
    invoke-virtual {v6, v1, v3}, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->setCoverVerified(ZLcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 257
    .line 258
    .line 259
    if-nez v9, :cond_d

    .line 260
    .line 261
    invoke-virtual {v4, v14}, Lcom/samsung/android/cover/CoverState;->setType(I)V

    .line 262
    .line 263
    .line 264
    iput v14, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    .line 265
    .line 266
    :cond_d
    if-nez v9, :cond_13

    .line 267
    .line 268
    iget-object v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    .line 269
    .line 270
    if-eqz v1, :cond_e

    .line 271
    .line 272
    iget-boolean v1, v1, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mCoverAttached:Z

    .line 273
    .line 274
    if-eqz v1, :cond_e

    .line 275
    .line 276
    iput-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    .line 277
    .line 278
    invoke-virtual {v4, v8}, Lcom/samsung/android/cover/CoverState;->setAttachState(Z)V

    .line 279
    .line 280
    .line 281
    :cond_e
    return-void

    .line 282
    :cond_f
    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    .line 283
    .line 284
    if-eqz v6, :cond_13

    .line 285
    .line 286
    iget-boolean v6, v6, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mCoverAttached:Z

    .line 287
    .line 288
    if-eqz v6, :cond_13

    .line 289
    .line 290
    if-eqz v7, :cond_10

    .line 291
    .line 292
    if-eqz v11, :cond_10

    .line 293
    .line 294
    if-nez v1, :cond_13

    .line 295
    .line 296
    :cond_10
    const-string v6, "Palette Cover detached"

    .line 297
    .line 298
    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    const-string/jumbo v6, "palette cover detach"

    .line 302
    .line 303
    .line 304
    invoke-static {v12, v6}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    .line 308
    .line 309
    invoke-virtual {v6, v5, v15}, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->setCoverVerified(ZLcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 310
    .line 311
    .line 312
    iput-object v15, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    .line 313
    .line 314
    iput-object v15, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    .line 315
    .line 316
    if-eqz v11, :cond_12

    .line 317
    .line 318
    if-nez v1, :cond_11

    .line 319
    .line 320
    goto :goto_6

    .line 321
    :cond_11
    if-nez v9, :cond_13

    .line 322
    .line 323
    iput-object v15, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    .line 324
    .line 325
    return-void

    .line 326
    :cond_12
    :goto_6
    const-string v6, "Palette Cover detached by other cover"

    .line 327
    .line 328
    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .line 330
    .line 331
    :cond_13
    const/4 v9, -0x1

    .line 332
    if-eqz v1, :cond_2a

    .line 333
    .line 334
    invoke-virtual {v4, v8}, Lcom/samsung/android/cover/CoverState;->setAttachState(Z)V

    .line 335
    .line 336
    .line 337
    iget v11, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->color:I

    .line 338
    .line 339
    invoke-virtual {v4, v11}, Lcom/samsung/android/cover/CoverState;->setColor(I)V

    .line 340
    .line 341
    .line 342
    iget v11, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->model:I

    .line 343
    .line 344
    invoke-virtual {v4, v11}, Lcom/samsung/android/cover/CoverState;->setModel(I)V

    .line 345
    .line 346
    .line 347
    iget-object v11, v3, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;

    .line 348
    .line 349
    invoke-virtual {v4, v11}, Lcom/samsung/android/cover/CoverState;->setSmartCoverAppUri(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    iget-object v11, v3, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayExtraData:[B

    .line 353
    .line 354
    invoke-virtual {v4, v11}, Lcom/samsung/android/cover/CoverState;->setSmartCoverCookie([B)V

    .line 355
    .line 356
    .line 357
    iget-object v11, v3, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayManagerURI:[B

    .line 358
    .line 359
    iput-object v11, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    .line 360
    .line 361
    const/16 v12, 0x17

    .line 362
    .line 363
    if-eqz v11, :cond_14

    .line 364
    .line 365
    array-length v6, v11

    .line 366
    if-ne v6, v12, :cond_14

    .line 367
    .line 368
    const/4 v6, 0x4

    .line 369
    aget-byte v16, v11, v6

    .line 370
    .line 371
    const/4 v6, 0x5

    .line 372
    aget-byte v6, v11, v6

    .line 373
    .line 374
    move/from16 v11, v16

    .line 375
    .line 376
    goto :goto_7

    .line 377
    :cond_14
    move v6, v9

    .line 378
    move v11, v6

    .line 379
    :goto_7
    invoke-virtual {v4, v5}, Lcom/samsung/android/cover/CoverState;->setFriendsType(I)V

    .line 380
    .line 381
    .line 382
    iget v7, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    .line 383
    .line 384
    const/16 v12, 0x8

    .line 385
    .line 386
    if-ne v7, v12, :cond_15

    .line 387
    .line 388
    iget-object v7, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    .line 389
    .line 390
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 391
    .line 392
    .line 393
    move-result-object v7

    .line 394
    const-string v12, "com.sec.feature.cover.clearsideviewcover"

    .line 395
    .line 396
    invoke-virtual {v7, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 397
    .line 398
    .line 399
    move-result v7

    .line 400
    if-eqz v7, :cond_15

    .line 401
    .line 402
    const/16 v7, 0xf

    .line 403
    .line 404
    iput v7, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    .line 405
    .line 406
    :cond_15
    iget-object v7, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensor:Landroid/hardware/Sensor;

    .line 407
    .line 408
    if-eqz v7, :cond_16

    .line 409
    .line 410
    iget v7, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverType:I

    .line 411
    .line 412
    iget v12, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    .line 413
    .line 414
    if-eq v7, v12, :cond_16

    .line 415
    .line 416
    new-instance v7, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    const-string v12, "force detach event, "

    .line 419
    .line 420
    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    iget v12, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverType:I

    .line 424
    .line 425
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    const-string v12, " "

    .line 429
    .line 430
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    iget v12, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    .line 434
    .line 435
    invoke-static {v7, v12, v10}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0, v5, v15, v15}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverVerified(ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 439
    .line 440
    .line 441
    :cond_16
    iget v7, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    .line 442
    .line 443
    iput v7, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverType:I

    .line 444
    .line 445
    iget v12, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->smapp:I

    .line 446
    .line 447
    const/4 v15, 0x3

    .line 448
    if-nez v12, :cond_17

    .line 449
    .line 450
    invoke-virtual {v4, v7}, Lcom/samsung/android/cover/CoverState;->setType(I)V

    .line 451
    .line 452
    .line 453
    iget-object v6, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->serial:Ljava/lang/String;

    .line 454
    .line 455
    invoke-virtual {v4, v6}, Lcom/samsung/android/cover/CoverState;->setSerialNumber(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    goto :goto_8

    .line 459
    :cond_17
    if-ne v12, v8, :cond_18

    .line 460
    .line 461
    const/16 v6, 0xff

    .line 462
    .line 463
    invoke-virtual {v4, v6}, Lcom/samsung/android/cover/CoverState;->setType(I)V

    .line 464
    .line 465
    .line 466
    goto :goto_8

    .line 467
    :cond_18
    iget-object v7, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    .line 468
    .line 469
    if-eqz v7, :cond_1a

    .line 470
    .line 471
    if-ne v11, v8, :cond_1a

    .line 472
    .line 473
    if-eq v6, v9, :cond_1a

    .line 474
    .line 475
    invoke-virtual {v4, v14}, Lcom/samsung/android/cover/CoverState;->setType(I)V

    .line 476
    .line 477
    .line 478
    if-ne v6, v8, :cond_19

    .line 479
    .line 480
    invoke-virtual {v4, v8}, Lcom/samsung/android/cover/CoverState;->setFriendsType(I)V

    .line 481
    .line 482
    .line 483
    goto :goto_8

    .line 484
    :cond_19
    if-ne v6, v15, :cond_1b

    .line 485
    .line 486
    invoke-virtual {v4, v5}, Lcom/samsung/android/cover/CoverState;->setType(I)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v4, v14}, Lcom/samsung/android/cover/CoverState;->setFriendsType(I)V

    .line 490
    .line 491
    .line 492
    goto :goto_8

    .line 493
    :cond_1a
    invoke-virtual {v4, v14}, Lcom/samsung/android/cover/CoverState;->setType(I)V

    .line 494
    .line 495
    .line 496
    :cond_1b
    :goto_8
    iput-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    .line 497
    .line 498
    iget v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    .line 499
    .line 500
    if-nez v6, :cond_1f

    .line 501
    .line 502
    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 503
    .line 504
    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 505
    .line 506
    .line 507
    move-result v7

    .line 508
    invoke-virtual {v6, v7}, Lcom/android/server/input/InputManagerService;->setCoverVerify(I)V

    .line 509
    .line 510
    .line 511
    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    .line 512
    .line 513
    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 514
    .line 515
    .line 516
    move-result v7

    .line 517
    invoke-virtual {v6, v7}, Landroid/os/PowerManager;->setCoverType(I)V

    .line 518
    .line 519
    .line 520
    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 521
    .line 522
    if-nez v6, :cond_1c

    .line 523
    .line 524
    const-class v6, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 525
    .line 526
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v6

    .line 530
    check-cast v6, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 531
    .line 532
    iput-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 533
    .line 534
    :cond_1c
    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 535
    .line 536
    if-eqz v6, :cond_1d

    .line 537
    .line 538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 539
    .line 540
    .line 541
    move-result-wide v11

    .line 542
    invoke-virtual {v6, v11, v12, v1, v4}, Lcom/samsung/android/sepunion/SemUnionManagerLocal;->notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V

    .line 543
    .line 544
    .line 545
    :cond_1d
    iget v4, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    .line 546
    .line 547
    if-nez v4, :cond_1f

    .line 548
    .line 549
    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    .line 550
    .line 551
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 552
    .line 553
    .line 554
    move-result-object v4

    .line 555
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    .line 556
    .line 557
    .line 558
    move-result-object v4

    .line 559
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 560
    .line 561
    .line 562
    move-result-object v4

    .line 563
    :cond_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 564
    .line 565
    .line 566
    move-result v6

    .line 567
    if-eqz v6, :cond_1f

    .line 568
    .line 569
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v6

    .line 573
    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 574
    .line 575
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 576
    .line 577
    const-string v7, "com.samsung.android.isag.issmanager"

    .line 578
    .line 579
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 580
    .line 581
    .line 582
    move-result v6

    .line 583
    if-eqz v6, :cond_1e

    .line 584
    .line 585
    const-string/jumbo v4, "send to iss manager"

    .line 586
    .line 587
    .line 588
    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    .line 590
    .line 591
    new-instance v4, Landroid/content/Intent;

    .line 592
    .line 593
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 594
    .line 595
    .line 596
    const-string v6, "com.samsung.android.isag.issmanager.ACTION_COVER_AUTH"

    .line 597
    .line 598
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    .line 603
    .line 604
    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    .line 605
    .line 606
    const-string v7, "com.samsung.android.isag.issmanager.permission.COVER_AUTH"

    .line 607
    .line 608
    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    :cond_1f
    iget v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    .line 612
    .line 613
    if-eq v4, v8, :cond_20

    .line 614
    .line 615
    if-eq v4, v14, :cond_20

    .line 616
    .line 617
    if-ne v4, v15, :cond_25

    .line 618
    .line 619
    :cond_20
    new-instance v4, Ljava/lang/StringBuilder;

    .line 620
    .line 621
    const-string v6, "coverInfo.getUrl: "

    .line 622
    .line 623
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    iget v6, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->url:I

    .line 627
    .line 628
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v4

    .line 635
    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    .line 637
    .line 638
    new-instance v4, Landroid/content/Intent;

    .line 639
    .line 640
    const-string v6, "com.samsung.android.intent.action.ACCESSORY_AUTHENTICATION_COMPLETE"

    .line 641
    .line 642
    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    iget v6, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->url:I

    .line 646
    .line 647
    const-string v7, "cover"

    .line 648
    .line 649
    const-string v9, "DEVICE_TYPE"

    .line 650
    .line 651
    if-eqz v6, :cond_24

    .line 652
    .line 653
    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    .line 654
    .line 655
    if-eqz v6, :cond_23

    .line 656
    .line 657
    array-length v11, v6

    .line 658
    const/16 v12, 0x17

    .line 659
    .line 660
    if-lt v11, v12, :cond_23

    .line 661
    .line 662
    aget-byte v10, v6, v8

    .line 663
    .line 664
    const/16 v11, 0x11

    .line 665
    .line 666
    if-lt v10, v11, :cond_22

    .line 667
    .line 668
    const/16 v11, 0x20

    .line 669
    .line 670
    if-ge v10, v11, :cond_22

    .line 671
    .line 672
    const/4 v10, 0x4

    .line 673
    aget-byte v6, v6, v10

    .line 674
    .line 675
    if-ne v6, v14, :cond_21

    .line 676
    .line 677
    invoke-virtual {v4, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 678
    .line 679
    .line 680
    goto :goto_9

    .line 681
    :cond_21
    const-string v6, "friends"

    .line 682
    .line 683
    invoke-virtual {v4, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    .line 685
    .line 686
    :goto_9
    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    .line 687
    .line 688
    iget-object v7, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    .line 689
    .line 690
    invoke-virtual {v0, v8, v6, v7}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->notifyFriendsStateChanged(Z[B[B)V

    .line 691
    .line 692
    .line 693
    goto :goto_a

    .line 694
    :cond_22
    const-string/jumbo v6, "smapp"

    .line 695
    .line 696
    .line 697
    invoke-virtual {v4, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 698
    .line 699
    .line 700
    goto :goto_a

    .line 701
    :cond_23
    const-string/jumbo v6, "uri data is null"

    .line 702
    .line 703
    .line 704
    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    .line 706
    .line 707
    goto :goto_a

    .line 708
    :cond_24
    invoke-virtual {v4, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    .line 710
    .line 711
    :goto_a
    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    .line 712
    .line 713
    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 714
    .line 715
    .line 716
    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverBroadcaster:Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;

    .line 717
    .line 718
    if-eqz v4, :cond_25

    .line 719
    .line 720
    invoke-virtual {v4, v8}, Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;->broadcastCoverAttachStatus(Z)V

    .line 721
    .line 722
    .line 723
    :cond_25
    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    .line 724
    .line 725
    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    .line 726
    .line 727
    iget-object v6, v3, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayManagerURI:[B

    .line 728
    .line 729
    iget-object v3, v3, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayExtraData:[B

    .line 730
    .line 731
    iget-object v7, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->TAG:Ljava/lang/String;

    .line 732
    .line 733
    if-nez v2, :cond_26

    .line 734
    .line 735
    const-string v2, "ID is null.. can not write"

    .line 736
    .line 737
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    .line 739
    .line 740
    goto :goto_d

    .line 741
    :cond_26
    iget-object v8, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mId:[B

    .line 742
    .line 743
    invoke-static {v8, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 744
    .line 745
    .line 746
    move-result v8

    .line 747
    if-eqz v8, :cond_27

    .line 748
    .line 749
    iget-object v8, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mUri:[B

    .line 750
    .line 751
    invoke-static {v8, v6}, Ljava/util/Arrays;->equals([B[B)Z

    .line 752
    .line 753
    .line 754
    move-result v8

    .line 755
    if-eqz v8, :cond_27

    .line 756
    .line 757
    iget-object v8, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mExtraData:[B

    .line 758
    .line 759
    invoke-static {v8, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 760
    .line 761
    .line 762
    move-result v8

    .line 763
    if-eqz v8, :cond_27

    .line 764
    .line 765
    const-string/jumbo v2, "same state.. "

    .line 766
    .line 767
    .line 768
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    .line 770
    .line 771
    goto :goto_d

    .line 772
    :cond_27
    array-length v7, v2

    .line 773
    new-array v7, v7, [B

    .line 774
    .line 775
    iput-object v7, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mId:[B

    .line 776
    .line 777
    array-length v8, v2

    .line 778
    invoke-static {v2, v5, v7, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 779
    .line 780
    .line 781
    if-eqz v6, :cond_28

    .line 782
    .line 783
    array-length v7, v6

    .line 784
    new-array v7, v7, [B

    .line 785
    .line 786
    iput-object v7, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mUri:[B

    .line 787
    .line 788
    array-length v8, v6

    .line 789
    invoke-static {v6, v5, v7, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 790
    .line 791
    .line 792
    const/4 v7, 0x0

    .line 793
    goto :goto_b

    .line 794
    :cond_28
    const/4 v7, 0x0

    .line 795
    iput-object v7, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mUri:[B

    .line 796
    .line 797
    :goto_b
    if-eqz v3, :cond_29

    .line 798
    .line 799
    array-length v7, v3

    .line 800
    new-array v7, v7, [B

    .line 801
    .line 802
    iput-object v7, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mExtraData:[B

    .line 803
    .line 804
    array-length v8, v3

    .line 805
    invoke-static {v3, v5, v7, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 806
    .line 807
    .line 808
    goto :goto_c

    .line 809
    :cond_29
    iput-object v7, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mExtraData:[B

    .line 810
    .line 811
    :goto_c
    new-instance v7, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;

    .line 812
    .line 813
    invoke-direct {v7, v4, v2, v6, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;[B[B[B)V

    .line 814
    .line 815
    .line 816
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 817
    .line 818
    .line 819
    :goto_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 820
    .line 821
    .line 822
    move-result-wide v2

    .line 823
    iput-wide v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    .line 824
    .line 825
    iput v5, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I

    .line 826
    .line 827
    goto :goto_e

    .line 828
    :cond_2a
    iget-object v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 829
    .line 830
    invoke-virtual {v2, v9}, Lcom/android/server/input/InputManagerService;->setCoverVerify(I)V

    .line 831
    .line 832
    .line 833
    iget-object v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    .line 834
    .line 835
    invoke-virtual {v2, v9}, Landroid/os/PowerManager;->setCoverType(I)V

    .line 836
    .line 837
    .line 838
    iget-object v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    .line 839
    .line 840
    if-eqz v2, :cond_2b

    .line 841
    .line 842
    invoke-virtual {v2, v5}, Lcom/samsung/android/cover/CoverState;->setAttachState(Z)V

    .line 843
    .line 844
    .line 845
    :cond_2b
    iget-object v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    .line 846
    .line 847
    iget-object v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 848
    .line 849
    if-nez v3, :cond_2c

    .line 850
    .line 851
    const-class v3, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 852
    .line 853
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 854
    .line 855
    .line 856
    move-result-object v3

    .line 857
    check-cast v3, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 858
    .line 859
    iput-object v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 860
    .line 861
    :cond_2c
    iget-object v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 862
    .line 863
    if-eqz v3, :cond_2d

    .line 864
    .line 865
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 866
    .line 867
    .line 868
    move-result-wide v6

    .line 869
    invoke-virtual {v3, v6, v7, v1, v2}, Lcom/samsung/android/sepunion/SemUnionManagerLocal;->notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V

    .line 870
    .line 871
    .line 872
    :cond_2d
    const/4 v2, 0x0

    .line 873
    iput-object v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    .line 874
    .line 875
    iget v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverType:I

    .line 876
    .line 877
    const/16 v3, 0x11

    .line 878
    .line 879
    if-ne v2, v3, :cond_2e

    .line 880
    .line 881
    invoke-static {v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setTransmitPower(Z)V

    .line 882
    .line 883
    .line 884
    :cond_2e
    iget v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    .line 885
    .line 886
    const/4 v3, 0x4

    .line 887
    if-eq v2, v3, :cond_2f

    .line 888
    .line 889
    iget-object v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    .line 890
    .line 891
    iget-object v3, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mId:[B

    .line 892
    .line 893
    if-eqz v3, :cond_2f

    .line 894
    .line 895
    const/16 v4, 0x15

    .line 896
    .line 897
    aget-byte v3, v3, v4

    .line 898
    .line 899
    if-ne v3, v8, :cond_2f

    .line 900
    .line 901
    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mUri:[B

    .line 902
    .line 903
    if-eqz v2, :cond_2f

    .line 904
    .line 905
    aget-byte v2, v2, v8

    .line 906
    .line 907
    const/16 v3, 0x11

    .line 908
    .line 909
    if-lt v2, v3, :cond_2f

    .line 910
    .line 911
    const/16 v3, 0x20

    .line 912
    .line 913
    if-ge v2, v3, :cond_2f

    .line 914
    .line 915
    iget-object v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    .line 916
    .line 917
    const/4 v3, 0x0

    .line 918
    invoke-virtual {v0, v5, v2, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->notifyFriendsStateChanged(Z[B[B)V

    .line 919
    .line 920
    .line 921
    iput-object v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    .line 922
    .line 923
    :cond_2f
    :goto_e
    iget-object v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    .line 924
    .line 925
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 926
    .line 927
    .line 928
    move-result-object v2

    .line 929
    if-eqz v1, :cond_30

    .line 930
    .line 931
    new-instance v1, Ljava/lang/StringBuilder;

    .line 932
    .line 933
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 934
    .line 935
    .line 936
    iget v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverType:I

    .line 937
    .line 938
    invoke-static {v0, v1, v13}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 939
    .line 940
    .line 941
    move-result-object v13

    .line 942
    :cond_30
    const-string v0, "cover_type_id"

    .line 943
    .line 944
    invoke-static {v2, v0, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 945
    .line 946
    .line 947
    return-void
.end method

.method public final setFriendsVerified(ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .locals 3

    .line 1
    const-string v0, "SAccessoryManager_CoverAuthenticator"

    .line 2
    .line 3
    const-string/jumbo v1, "setAccessoryVerified"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object p1, p3, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayManagerURI:[B

    .line 12
    .line 13
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    .line 14
    .line 15
    iget p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    const/4 v1, 0x1

    .line 19
    if-eq p3, v1, :cond_0

    .line 20
    .line 21
    if-eq p3, v0, :cond_0

    .line 22
    .line 23
    const/4 v2, 0x3

    .line 24
    if-ne p3, v2, :cond_2

    .line 25
    .line 26
    :cond_0
    iget p3, p2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->url:I

    .line 27
    .line 28
    if-eqz p3, :cond_2

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    array-length p3, p1

    .line 33
    if-lt p3, v0, :cond_2

    .line 34
    .line 35
    aget-byte p3, p1, v1

    .line 36
    .line 37
    const/16 v0, 0x11

    .line 38
    .line 39
    if-lt p3, v0, :cond_2

    .line 40
    .line 41
    const/16 v0, 0x20

    .line 42
    .line 43
    if-ge p3, v0, :cond_2

    .line 44
    .line 45
    iget-object p2, p2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    .line 46
    .line 47
    invoke-virtual {p0, v1, p1, p2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->notifyFriendsStateChanged(Z[B[B)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    .line 52
    .line 53
    const/4 p2, 0x0

    .line 54
    const/4 p3, 0x0

    .line 55
    invoke-virtual {p0, p2, p1, p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->notifyFriendsStateChanged(Z[B[B)V

    .line 56
    .line 57
    .line 58
    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    .line 59
    .line 60
    :cond_2
    :goto_0
    return-void
.end method

.method public final startAuthentication(JZ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isAuthenticationReady()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    .line 13
    .line 14
    if-eqz p3, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    .line 17
    .line 18
    .line 19
    iget-object p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    .line 20
    .line 21
    const/4 v0, 0x5

    .line 22
    const-wide/16 v1, 0x6978

    .line 23
    .line 24
    invoke-virtual {p3, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 25
    .line 26
    .line 27
    const/4 p3, 0x1

    .line 28
    iput-boolean p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPreparing:Z

    .line 29
    .line 30
    :cond_1
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    .line 31
    .line 32
    const/4 p3, 0x2

    .line 33
    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final stopAuthentication(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final systemReady()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

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
