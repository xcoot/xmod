.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/hardware/keymaster/HardwareAuthToken;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;ILandroid/hardware/keymaster/HardwareAuthToken;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda4;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda4;->f$2:Landroid/hardware/keymaster/HardwareAuthToken;

    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 3
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda4;->f$1:I

    .line 5
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda4;->f$2:Landroid/hardware/keymaster/HardwareAuthToken;

    .line 7
    check-cast p1, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    .line 9
    iget v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mSensorId:I

    .line 11
    invoke-static {v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    .line 14
    move-result-object v2

    .line 15
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mContext:Landroid/content/Context;

    .line 17
    iget v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mUserId:I

    .line 19
    invoke-virtual {v2, v3, v4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_1

    .line 25
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v2

    .line 29
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    .line 41
    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    .line 44
    move-result v4

    .line 45
    if-ne v4, v1, :cond_0

    .line 47
    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    .line 50
    move-result-object v2

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const-string v2, ""

    .line 54
    :goto_0
    new-instance v3, Landroid/hardware/fingerprint/Fingerprint;

    .line 56
    iget v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mSensorId:I

    .line 58
    int-to-long v4, v4

    .line 59
    invoke-direct {v3, v2, v1, v4, v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 62
    invoke-static {p0}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toByteArray(Landroid/hardware/keymaster/HardwareAuthToken;)[B

    .line 65
    move-result-object p0

    .line 66
    new-instance v2, Ljava/util/ArrayList;

    .line 68
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 71
    const/4 v4, 0x0

    .line 72
    :goto_1
    const/16 v5, 0x45

    .line 74
    if-ge v4, v5, :cond_2

    .line 76
    aget-byte v5, p0, v4

    .line 78
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v4, v4, 0x1

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mLockoutHalImpl:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;

    .line 90
    iget v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mUserId:I

    .line 92
    const/4 v5, 0x1

    .line 93
    invoke-virtual {p0, v4, v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;->resetFailedAttemptsForUser(IZ)V

    .line 96
    invoke-interface {p1, v3, v5, v2}, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    .line 99
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mHalCallbackEx:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 101
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mAuthenticationListeners:Ljava/util/List;

    .line 103
    check-cast p0, Ljava/util/ArrayList;

    .line 105
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 108
    move-result-object p0

    .line 109
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_3

    .line 115
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;

    .line 121
    invoke-interface {p1, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;->onAuthenticationResult(I)V

    .line 124
    goto :goto_2

    .line 125
    :cond_3
    return-void
.end method
