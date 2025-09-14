.class public final Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;
.super Landroid/hardware/biometrics/face/ISessionCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

.field public final mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

.field public final mContext:Landroid/content/Context;

.field public mLockoutHalImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;

.field public final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field public final mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

.field public final mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

.field public final mSensorId:I

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricScheduler;IILcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 8
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    .line 10
    iput p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mUserId:I

    .line 12
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    .line 14
    iput-object p6, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 16
    iput-object p7, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 18
    iput-object p8, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

    .line 20
    return-void
.end method


# virtual methods
.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "c43fbb9be4a662cc9ace640dba21cccdb84c6c21"

    .line 4
    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    .line 1
    const/4 p0, 0x4

    .line 2
    return p0
.end method

.method public final handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 3
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    .line 5
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda24;

    .line 7
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
.end method

.method public final onAuthenticationFailed()V
    .locals 5

    .line 1
    const-string v0, "AidlResponseHandler"

    .line 3
    const-string/jumbo v1, "onAuthenticationFailed"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v0, Landroid/hardware/face/Face;

    .line 11
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    .line 13
    int-to-long v1, v1

    .line 14
    const-string v3, ""

    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-direct {v0, v3, v4, v1, v2}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 20
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda0;

    .line 22
    invoke-direct {v1, p0, v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;Landroid/hardware/face/Face;)V

    .line 25
    const/4 v0, 0x0

    .line 26
    const-class v2, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    .line 28
    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;)V

    .line 31
    return-void
.end method

.method public final onAuthenticationFrame(Landroid/hardware/biometrics/face/AuthenticationFrame;)V
    .locals 4

    .line 1
    iget-object v0, p1, Landroid/hardware/biometrics/face/AuthenticationFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    .line 3
    iget-byte v0, v0, Landroid/hardware/biometrics/face/BaseFrame;->acquiredInfo:B

    .line 5
    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkAcquiredInfo(B)I

    .line 8
    move-result v0

    .line 9
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p1, Landroid/hardware/biometrics/face/AuthenticationFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    .line 15
    iget v2, v2, Landroid/hardware/biometrics/face/BaseFrame;->vendorCode:I

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->onPreAcquired(IIZ)I

    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x1

    .line 23
    if-ne v1, v2, :cond_0

    .line 25
    return-void

    .line 26
    :cond_0
    const-class v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    .line 28
    new-instance v2, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda19;

    .line 30
    invoke-direct {v2, p1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda19;-><init>(Landroid/hardware/biometrics/face/AuthenticationFrame;I)V

    .line 33
    const/4 p1, 0x0

    .line 34
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;)V

    .line 37
    return-void
.end method

.method public final onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V
    .locals 5

    .line 1
    const-string v0, "AidlResponseHandler"

    .line 3
    const-string/jumbo v1, "onAuthenticationSucceeded"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v0, Landroid/hardware/face/Face;

    .line 11
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    .line 13
    int-to-long v1, v1

    .line 14
    const-string v3, ""

    .line 16
    invoke-direct {v0, v3, p1, v1, v2}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez p2, :cond_0

    .line 22
    new-array p2, v1, [B

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {p2}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toByteArray(Landroid/hardware/keymaster/HardwareAuthToken;)[B

    .line 28
    move-result-object p2

    .line 29
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    .line 31
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    array-length v3, p2

    .line 35
    :goto_1
    if-ge v1, v3, :cond_1

    .line 37
    aget-byte v4, p2, v1

    .line 39
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    new-instance p2, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda18;

    .line 51
    invoke-direct {p2, p0, p1, v0, v2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;ILandroid/hardware/face/Face;Ljava/util/ArrayList;)V

    .line 54
    const/4 p1, 0x0

    .line 55
    const-class v0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    .line 57
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;)V

    .line 60
    return-void
.end method

.method public final onAuthenticatorIdInvalidated(J)V
    .locals 3

    .line 1
    const-string v0, "AidlResponseHandler"

    .line 3
    const-string/jumbo v1, "onAuthenticatorIdInvalidated"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    const-class v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceInvalidationClient;

    .line 11
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda3;

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-direct {v1, p1, p2, v2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda3;-><init>(JI)V

    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;)V

    .line 21
    return-void
.end method

.method public final onAuthenticatorIdRetrieved(J)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "onAuthenticatorIdRetrieved "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 11
    if-eqz v1, :cond_0

    .line 13
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v1, ""

    .line 20
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    const-string v1, "AidlResponseHandler"

    .line 29
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-class v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetAuthenticatorIdClient;

    .line 34
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda3;

    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-direct {v1, p1, p2, v2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda3;-><init>(JI)V

    .line 40
    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;)V

    .line 44
    return-void
.end method

.method public final onChallengeGenerated(J)V
    .locals 3

    .line 1
    const-string/jumbo v0, "onChallengeGenerated "

    .line 4
    const-string v1, ", "

    .line 6
    invoke-static {v0, p1, p2, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    move-result-object v0

    .line 10
    iget v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mUserId:I

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    const-string v1, "AidlResponseHandler"

    .line 29
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-class v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceGenerateChallengeClient;

    .line 34
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda6;

    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;JI)V

    .line 40
    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;)V

    .line 44
    return-void
.end method

.method public final onChallengeRevoked(J)V
    .locals 3

    .line 1
    const-string/jumbo v0, "onChallengeRevoked "

    .line 4
    const-string v1, ", "

    .line 6
    invoke-static {v0, p1, p2, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    move-result-object v0

    .line 10
    iget v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mUserId:I

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    const-string v1, "AidlResponseHandler"

    .line 29
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-class v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;

    .line 34
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda6;

    .line 36
    const/4 v2, 0x1

    .line 37
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;JI)V

    .line 40
    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;)V

    .line 44
    return-void
.end method

.method public final onEnrollmentFrame(Landroid/hardware/biometrics/face/EnrollmentFrame;)V
    .locals 4

    .line 1
    iget-object v0, p1, Landroid/hardware/biometrics/face/EnrollmentFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    .line 3
    iget-byte v0, v0, Landroid/hardware/biometrics/face/BaseFrame;->acquiredInfo:B

    .line 5
    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkAcquiredInfo(B)I

    .line 8
    move-result v0

    .line 9
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p1, Landroid/hardware/biometrics/face/EnrollmentFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    .line 15
    iget v2, v2, Landroid/hardware/biometrics/face/BaseFrame;->vendorCode:I

    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->onPreAcquired(IIZ)I

    .line 21
    move-result v0

    .line 22
    if-ne v0, v3, :cond_0

    .line 24
    return-void

    .line 25
    :cond_0
    const-class v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    .line 27
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;

    .line 29
    const/4 v2, 0x2

    .line 30
    invoke-direct {v1, v2, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 33
    const/4 p1, 0x0

    .line 34
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;)V

    .line 37
    return-void
.end method

.method public final onEnrollmentProgress(II)V
    .locals 5

    .line 1
    const-string/jumbo v0, "onEnrollmentProgress id="

    .line 4
    const-string v1, ", remaining="

    .line 6
    const-string v2, "AidlResponseHandler"

    .line 8
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    if-nez p2, :cond_0

    .line 13
    const-string/jumbo v0, "onEnrollmentProgress success BILG "

    .line 16
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 22
    move-result-object v0

    .line 23
    filled-new-array {p1}, [I

    .line 26
    move-result-object v1

    .line 27
    iget-boolean v3, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mDaemonIsCancelled:Z

    .line 29
    const/4 v4, 0x1

    .line 30
    if-ne v3, v4, :cond_0

    .line 32
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;

    .line 34
    new-instance p1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda6;

    .line 36
    invoke-direct {p1, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;[I)V

    .line 39
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    const-string/jumbo p0, "remove it due to previous cancelling"

    .line 45
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 51
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 54
    move-result-object v0

    .line 55
    if-nez v0, :cond_1

    .line 57
    return-void

    .line 58
    :cond_1
    iget v0, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 60
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    .line 62
    const/4 v2, 0x0

    .line 63
    invoke-static {v1, v2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 66
    move-result-object v1

    .line 67
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {v1, v3, v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/FaceUserState;

    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getUniqueName()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    new-instance v1, Landroid/hardware/face/Face;

    .line 79
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    .line 81
    int-to-long v3, v3

    .line 82
    invoke-direct {v1, v0, p1, v3, v4}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 85
    const-class v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    .line 87
    new-instance v3, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda2;

    .line 89
    invoke-direct {v3, p0, p1, p2, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;IILandroid/hardware/face/Face;)V

    .line 92
    invoke-virtual {p0, v0, v3, v2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;)V

    .line 95
    return-void
.end method

.method public final onEnrollmentsEnumerated([I)V
    .locals 14

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "onEnrollmentsEnumerated: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    if-nez p1, :cond_0

    .line 11
    const-string/jumbo v1, "null"

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    array-length v1, p1

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    const-string v1, "AidlResponseHandler"

    .line 29
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 v0, 0x1

    .line 33
    const/4 v1, -0x1

    .line 34
    const/4 v2, 0x0

    .line 35
    if-eqz p1, :cond_2

    .line 37
    array-length v3, p1

    .line 38
    if-ne v3, v0, :cond_2

    .line 40
    aget v3, p1, v2

    .line 42
    if-ne v3, v1, :cond_2

    .line 44
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 46
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 49
    move-result-object p0

    .line 50
    instance-of p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$4;

    .line 52
    if-eqz p1, :cond_1

    .line 54
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$4;

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    const-string p1, "FaceInternalCleanupClient"

    .line 61
    const-string/jumbo v0, "onEnumerationError"

    .line 64
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 69
    invoke-interface {p1, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 72
    :cond_1
    return-void

    .line 73
    :cond_2
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 76
    move-result-object v3

    .line 77
    iget-boolean v3, v3, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsCallEnumerateUserInternal:Z

    .line 79
    if-eqz v3, :cond_11

    .line 81
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 84
    move-result-object p0

    .line 85
    iput-boolean v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsCallEnumerateUserInternal:Z

    .line 87
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    const-string v3, "SemFace"

    .line 96
    const-string/jumbo v4, "doTemplateSyncForUser: ["

    .line 99
    if-nez p1, :cond_3

    .line 101
    new-array p1, v2, [I

    .line 103
    :cond_3
    iget v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mUserId:I

    .line 105
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 107
    iget-object v7, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 109
    invoke-virtual {v6, v7, v5}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 112
    move-result-object v6

    .line 113
    array-length v7, p1

    .line 114
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    .line 116
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    const-string v4, "] FW="

    .line 124
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    check-cast v6, Ljava/util/ArrayList;

    .line 129
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 132
    move-result v4

    .line 133
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    const-string v4, ", HAL="

    .line 138
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object v4

    .line 148
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-boolean v4, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_JDM_HAL:Z

    .line 153
    if-eqz v4, :cond_4

    .line 155
    move v8, v2

    .line 156
    goto :goto_2

    .line 157
    :cond_4
    if-lez v7, :cond_6

    .line 159
    move v8, v0

    .line 160
    move v4, v2

    .line 161
    :goto_1
    if-ge v4, v7, :cond_7

    .line 163
    aget v9, p1, v4

    .line 165
    if-ne v9, v0, :cond_5

    .line 167
    move v8, v2

    .line 168
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 170
    goto :goto_1

    .line 171
    :catch_0
    move-exception p0

    .line 172
    goto/16 :goto_a

    .line 174
    :cond_6
    move v8, v2

    .line 175
    :cond_7
    if-eqz v8, :cond_8

    .line 177
    const-string v0, "Main face ID(1) was removed!!!"

    .line 179
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    filled-new-array {v2}, [I

    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonRemove([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :cond_8
    :goto_2
    const-string/jumbo v0, "doTemplateSyncForUser"

    .line 192
    const-string/jumbo v4, "removing unknown template from fw, "

    .line 195
    if-eqz v7, :cond_e

    .line 197
    if-eqz v8, :cond_9

    .line 199
    goto/16 :goto_8

    .line 201
    :cond_9
    if-lez v7, :cond_10

    .line 203
    move v8, v2

    .line 204
    :goto_3
    if-ge v8, v7, :cond_d

    .line 206
    :try_start_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 209
    move-result v9

    .line 210
    new-instance v10, Ljava/lang/StringBuilder;

    .line 212
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    const-string/jumbo v11, "enumerate: HAL ID="

    .line 218
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    aget v11, p1, v8

    .line 223
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    move-result-object v10

    .line 230
    invoke-static {v3, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    move v10, v2

    .line 234
    :goto_4
    if-ge v10, v9, :cond_b

    .line 236
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 239
    move-result-object v11

    .line 240
    check-cast v11, Landroid/hardware/face/Face;

    .line 242
    invoke-virtual {v11}, Landroid/hardware/face/Face;->getBiometricId()I

    .line 245
    move-result v11

    .line 246
    aget v12, p1, v8

    .line 248
    if-ne v11, v12, :cond_a

    .line 250
    goto :goto_5

    .line 251
    :cond_a
    add-int/lit8 v10, v10, 0x1

    .line 253
    goto :goto_4

    .line 254
    :cond_b
    move v10, v1

    .line 255
    :goto_5
    if-ltz v10, :cond_c

    .line 257
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 260
    goto :goto_6

    .line 261
    :cond_c
    new-instance v9, Landroid/hardware/face/Face;

    .line 263
    iget-object v10, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 265
    iget-object v11, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 267
    invoke-virtual {v10, v11, v5}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/FaceUserState;

    .line 270
    move-result-object v10

    .line 271
    invoke-virtual {v10}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getUniqueName()Ljava/lang/String;

    .line 274
    move-result-object v10

    .line 275
    aget v11, p1, v8

    .line 277
    iget v12, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensorId:I

    .line 279
    int-to-long v12, v12

    .line 280
    invoke-direct {v9, v10, v11, v12, v13}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 283
    iget-object v10, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 285
    iget-object v11, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 287
    invoke-virtual {v10, v11, v5, v9}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->addBiometricForUser(Landroid/content/Context;ILandroid/hardware/face/Face;)V

    .line 290
    new-instance v10, Ljava/lang/StringBuilder;

    .line 292
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    const-string/jumbo v11, "enumerate: adding unknown template, "

    .line 298
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v9}, Landroid/hardware/face/Face;->getBiometricId()I

    .line 304
    move-result v9

    .line 305
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    move-result-object v9

    .line 312
    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :goto_6
    add-int/lit8 v8, v8, 0x1

    .line 317
    goto :goto_3

    .line 318
    :cond_d
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 321
    move-result-object p1

    .line 322
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 325
    move-result v1

    .line 326
    if-eqz v1, :cond_10

    .line 328
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 331
    move-result-object v1

    .line 332
    check-cast v1, Landroid/hardware/face/Face;

    .line 334
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 336
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 338
    invoke-virtual {v1}, Landroid/hardware/face/Face;->getBiometricId()I

    .line 341
    move-result v7

    .line 342
    invoke-virtual {v2, v6, v5, v7}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->removeBiometricForUser(Landroid/content/Context;II)V

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    .line 347
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v1}, Landroid/hardware/face/Face;->getBiometricId()I

    .line 356
    move-result v1

    .line 357
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    move-result-object v1

    .line 364
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 370
    move-result-object v1

    .line 371
    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceRemoved(Ljava/lang/String;)V

    .line 374
    goto :goto_7

    .line 375
    :cond_e
    :goto_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 378
    move-result p1

    .line 379
    if-lez p1, :cond_10

    .line 381
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 384
    move-result-object p1

    .line 385
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 388
    move-result v1

    .line 389
    if-eqz v1, :cond_f

    .line 391
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 394
    move-result-object v1

    .line 395
    check-cast v1, Landroid/hardware/face/Face;

    .line 397
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 399
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 401
    invoke-virtual {v1}, Landroid/hardware/face/Face;->getBiometricId()I

    .line 404
    move-result v7

    .line 405
    invoke-virtual {v2, v6, v5, v7}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->removeBiometricForUser(Landroid/content/Context;II)V

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    .line 410
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v1}, Landroid/hardware/face/Face;->getBiometricId()I

    .line 419
    move-result v1

    .line 420
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    move-result-object v1

    .line 427
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    goto :goto_9

    .line 431
    :cond_f
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 434
    move-result-object p0

    .line 435
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceRemoved(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 438
    goto :goto_b

    .line 439
    :goto_a
    new-instance p1, Ljava/lang/StringBuilder;

    .line 441
    const-string/jumbo v0, "enumerate: "

    .line 444
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 447
    invoke-static {p0, p1, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 450
    :cond_10
    :goto_b
    return-void

    .line 451
    :cond_11
    array-length v0, p1

    .line 452
    const/4 v1, 0x0

    .line 453
    const-class v3, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    .line 455
    if-lez v0, :cond_12

    .line 457
    :goto_c
    array-length v0, p1

    .line 458
    if-ge v2, v0, :cond_13

    .line 460
    new-instance v0, Landroid/hardware/face/Face;

    .line 462
    aget v4, p1, v2

    .line 464
    iget v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    .line 466
    int-to-long v5, v5

    .line 467
    const-string v7, ""

    .line 469
    invoke-direct {v0, v7, v4, v5, v6}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 472
    new-instance v4, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;

    .line 474
    const/4 v5, 0x1

    .line 475
    invoke-direct {v4, v0, p1, v2, v5}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;-><init>(Landroid/hardware/face/Face;[III)V

    .line 478
    invoke-virtual {p0, v3, v4, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;)V

    .line 481
    add-int/lit8 v2, v2, 0x1

    .line 483
    goto :goto_c

    .line 484
    :cond_12
    new-instance p1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;

    .line 486
    const/4 v0, 0x4

    .line 487
    invoke-direct {p1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;-><init>(I)V

    .line 490
    invoke-virtual {p0, v3, p1, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;)V

    .line 493
    :cond_13
    return-void
.end method

.method public final onEnrollmentsRemoved([I)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "onEnrollmentsRemoved: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    array-length v1, p1

    .line 10
    const-string v2, "AidlResponseHandler"

    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 15
    array-length v0, p1

    .line 16
    const/4 v1, 0x0

    .line 17
    const-class v2, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    .line 19
    if-lez v0, :cond_0

    .line 21
    const/4 v0, 0x0

    .line 22
    :goto_0
    array-length v3, p1

    .line 23
    if-ge v0, v3, :cond_1

    .line 25
    new-instance v3, Landroid/hardware/face/Face;

    .line 27
    aget v4, p1, v0

    .line 29
    iget v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    .line 31
    int-to-long v5, v5

    .line 32
    const-string v7, ""

    .line 34
    invoke-direct {v3, v7, v4, v5, v6}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 37
    new-instance v4, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;

    .line 39
    const/4 v5, 0x0

    .line 40
    invoke-direct {v4, v3, p1, v0, v5}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;-><init>(Landroid/hardware/face/Face;[III)V

    .line 43
    invoke-virtual {p0, v2, v4, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;)V

    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance p1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;

    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-direct {p1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;-><init>(I)V

    .line 55
    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;)V

    .line 58
    :cond_1
    return-void
.end method

.method public final onError(BI)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/16 p1, 0x11

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x10

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x8

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x6

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x5

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x4

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x3

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x2

    goto :goto_0

    :pswitch_7
    const/4 p1, 0x1

    .line 1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onError(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onError(II)V
    .locals 4

    .line 2
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 4
    iget-boolean v1, v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTestHalEnabled:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x5

    .line 5
    const-string v2, "SemFace"

    if-ne p1, v1, :cond_1

    .line 6
    const-string/jumbo p0, "onError: skip error (5:cancel) from daemon"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v1

    .line 8
    instance-of v3, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    if-nez v3, :cond_2

    instance-of v1, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    if-eqz v1, :cond_3

    :cond_2
    iget-boolean v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsOperationStarted:Z

    if-nez v0, :cond_3

    .line 9
    const-string/jumbo p0, "onError: skip ("

    const-string p2, ") after stop()"

    .line 10
    invoke-static {p1, p0, p2, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 11
    :cond_3
    :goto_1
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;II)V

    const/4 p1, 0x0

    .line 12
    const-class p2, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;)V

    return-void
.end method

.method public final onFeatureSet(B)V
    .locals 2

    .line 1
    const-string p1, "AidlResponseHandler"

    .line 3
    const-string/jumbo v0, "onFeatureSet"

    .line 6
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    const-class p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;

    .line 11
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;

    .line 13
    const/4 v1, 0x5

    .line 14
    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;-><init>(I)V

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;)V

    .line 21
    return-void
.end method

.method public final onFeaturesRetrieved([B)V
    .locals 3

    .line 1
    const-string v0, "AidlResponseHandler"

    .line 3
    const-string/jumbo v1, "onFeaturesRetrieved"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    const-class v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetFeatureClient;

    .line 11
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, v2, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;)V

    .line 21
    return-void
.end method

.method public final onInteractionDetected()V
    .locals 3

    .line 1
    const-string v0, "AidlResponseHandler"

    .line 3
    const-string/jumbo v1, "onInteractionDetected"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    const-class v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;

    .line 11
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;

    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-direct {v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;-><init>(I)V

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;)V

    .line 21
    return-void
.end method

.method public final onLockoutCleared()V
    .locals 4

    .line 1
    const-string v0, "AidlResponseHandler"

    .line 3
    const-string/jumbo v1, "onLockoutCleared()"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mLockoutHalImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;

    .line 11
    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 15
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 18
    move-result-object v0

    .line 19
    instance-of v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;

    .line 21
    if-nez v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mLockoutHalImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;

    .line 25
    const/4 v1, 0x0

    .line 26
    iget v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mUserId:I

    .line 28
    invoke-virtual {v0, v2, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->resetFailedAttemptsForUser(IZ)V

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mLockoutHalImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;

    .line 34
    const/4 v1, 0x1

    .line 35
    iget v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mUserId:I

    .line 37
    invoke-virtual {v0, v2, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->resetFailedAttemptsForUser(IZ)V

    .line 40
    :cond_1
    :goto_0
    const-class v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;

    .line 42
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;

    .line 44
    const/4 v2, 0x3

    .line 45
    invoke-direct {v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;-><init>(I)V

    .line 48
    new-instance v2, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;

    .line 50
    const/4 v3, 0x1

    .line 51
    invoke-direct {v2, v3, p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 54
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;)V

    .line 57
    return-void
.end method

.method public final onLockoutPermanent()V
    .locals 3

    .line 1
    const-string v0, "AidlResponseHandler"

    .line 3
    const-string/jumbo v1, "onLockoutPermanent()"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;-><init>(I)V

    .line 15
    const/4 v1, 0x0

    .line 16
    const-class v2, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    .line 18
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;)V

    .line 21
    return-void
.end method

.method public final onLockoutTimed(J)V
    .locals 2

    .line 1
    const-string v0, "AidlResponseHandler"

    .line 3
    const-string/jumbo v1, "onLockoutTimed()"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda3;

    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda3;-><init>(JI)V

    .line 15
    const/4 p1, 0x0

    .line 16
    const-class p2, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    .line 18
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;)V

    .line 21
    return-void
.end method

.method public final onSessionClosed()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 3
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    .line 5
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda20;

    .line 10
    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/biometrics/sensors/BiometricScheduler;)V

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    return-void
.end method
