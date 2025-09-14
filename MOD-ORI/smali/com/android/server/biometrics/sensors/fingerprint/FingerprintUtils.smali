.class public final Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/BiometricUtils;


# static fields
.field static final INTENT_ACTION_ADD_FINGERPRINT:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_ADDED"

.field static final INTENT_ACTION_REMOVE_FINGERPRINT:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

.field static final INTENT_ACTION_RESET_FINGERPRINT:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_RESET"

.field static final INTENT_DEFAULT_VERIFICATION_TYPE:Ljava/lang/String; = "Device Credential"

.field static final INTENT_KEY_FINGERPRINT_INDEX:Ljava/lang/String; = "fingerIndex"

.field static final INTENT_KEY_VERIFICATION_TYPE:Ljava/lang/String; = "verificationType"

.field public static final sInstanceLock:Ljava/lang/Object;

.field public static sInstances:Landroid/util/SparseArray;


# instance fields
.field public final mFileName:Ljava/lang/String;

.field public mIsBootComplete:Z

.field mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;

.field public final mUserStates:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstanceLock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mUserStates:Landroid/util/SparseArray;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mFileName:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public static copyOptions(ILandroid/hardware/fingerprint/FingerprintAuthenticateOptions;)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;
    .locals 1

    .line 1
    new-instance v0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setUserId(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getSensorId()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0, v0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setSensorId(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getOpPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setOpPackageName(Ljava/lang/String;)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getAttributionTag()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0, v0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setAttributionTag(Ljava/lang/String;)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getDisplayState()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p0, v0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setDisplayState(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->isIgnoreEnrollmentState()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setIgnoreEnrollmentState(Z)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->build()Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method public static getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;
    .locals 4

    .line 1
    const-string/jumbo v0, "settings_fingerprint_"

    .line 2
    .line 3
    .line 4
    sget-object v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstanceLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    sget-object v2, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstances:Landroid/util/SparseArray;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    new-instance v2, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v2, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstances:Landroid/util/SparseArray;

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
    sget-object v2, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstances:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, ".xml"

    .line 38
    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sget-object v2, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstances:Landroid/util/SparseArray;

    .line 47
    .line 48
    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    .line 49
    .line 50
    invoke-direct {v3, v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, p0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstances:Landroid/util/SparseArray;

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    .line 63
    .line 64
    monitor-exit v1

    .line 65
    return-object p0

    .line 66
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p0
.end method

.method public static resetForTest()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstanceLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    sput-object v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstances:Landroid/util/SparseArray;

    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw v1
.end method

.method public static semIsQualityFailedEvent(II)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 3
    .line 4
    .line 5
    goto :goto_0

    .line 6
    :pswitch_0
    const/16 p0, 0x3e9

    .line 7
    .line 8
    if-eq p1, p0, :cond_1

    .line 9
    .line 10
    const/16 p0, 0x3eb

    .line 11
    .line 12
    if-eq p1, p0, :cond_1

    .line 13
    .line 14
    const/16 p0, 0x3ea

    .line 15
    .line 16
    if-ne p1, p0, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :cond_1
    :goto_1
    :pswitch_1
    return v0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic addBiometricForUser(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .locals 0

    .line 1
    check-cast p3, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->addBiometricForUser(Landroid/content/Context;ILandroid/hardware/fingerprint/Fingerprint;)V

    return-void
.end method

.method public final addBiometricForUser(Landroid/content/Context;ILandroid/hardware/fingerprint/Fingerprint;)V
    .locals 2

    .line 2
    invoke-virtual {p3}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getUniqueName()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p3, v0}, Landroid/hardware/fingerprint/Fingerprint;->setName(Ljava/lang/CharSequence;)V

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object v0

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mWriteStateRunnable:Lcom/android/server/biometrics/sensors/BiometricUserState$$ExternalSyntheticLambda0;

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p3}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result p3

    .line 11
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semSendTemplateChangedBroadCast$1(IILandroid/content/Context;Landroid/content/Intent;)V

    return-void

    :catchall_0
    move-exception p0

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getBiometrics()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mUserStates:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mFileName:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {v0, p1, v1, p2}, Lcom/android/server/biometrics/sensors/BiometricUserState;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mUserStates:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit p0

    .line 28
    return-object v0

    .line 29
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p1
.end method

.method public putStateForUserForTest(ILcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mUserStates:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p1
.end method

.method public final removeBiometricForUser(Landroid/content/Context;II)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getBiometrics()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p3}, Lcom/android/server/biometrics/sensors/BiometricUserState;->removeBiometric(I)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Landroid/content/Intent;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getBiometrics()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    const-string/jumbo v1, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const-string/jumbo v1, "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semSendTemplateChangedBroadCast$1(IILandroid/content/Context;Landroid/content/Intent;)V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->get()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    new-instance p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 70
    .line 71
    const/4 p2, -0x1

    .line 72
    if-ne p3, p2, :cond_2

    .line 73
    .line 74
    const-string p3, "ALL"

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    :goto_1
    const/4 v0, 0x3

    .line 82
    const-string v1, "FPRM"

    .line 83
    .line 84
    invoke-direct {p1, p2, v0, v1, p3}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 88
    .line 89
    .line 90
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBioLoggingManager;->getFpHandler()Landroid/os/Handler;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    new-instance p2, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda0;

    .line 99
    .line 100
    invoke-direct {p2, p0}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final semSendTemplateChangedBroadCast$1(IILandroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0, p2, p1, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;-><init>(IILandroid/content/Context;Landroid/content/Intent;)V

    .line 4
    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mIsBootComplete:Z

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;

    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;->run()V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public final setInvalidationInProgress(Landroid/content/Context;IZ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iput-boolean p3, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mInvalidationInProgress:Z

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mWriteStateRunnable:Lcom/android/server/biometrics/sensors/BiometricUserState$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p1
.end method
