.class public Lcom/android/server/biometrics/AuthService$Injector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getAppOps(Landroid/content/Context;)Landroid/app/AppOpsManager;
    .locals 0

    .line 1
    const-class p0, Landroid/app/AppOpsManager;

    .line 3
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/AppOpsManager;

    .line 9
    return-object p0
.end method

.method public getBiometricService()Landroid/hardware/biometrics/IBiometricService;
    .locals 0

    .line 1
    const-string/jumbo p0, "biometric"

    .line 4
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public getConfiguration(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3

    .line 1
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 3
    new-instance p0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    sget-boolean p1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SUPPORT_FINGERPRINT:Z

    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz p1, :cond_2

    .line 13
    const-string/jumbo p1, "ro.board.first_api_level"

    .line 16
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 19
    move-result p1

    .line 20
    sget v1, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    .line 22
    const/16 v2, 0x21

    .line 24
    if-nez p1, :cond_0

    .line 26
    if-ge v1, v2, :cond_0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    if-ge p1, v2, :cond_1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    sget-boolean p1, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_FINGERPRINT_JDM_HAL:Z

    .line 34
    if-eqz p1, :cond_2

    .line 36
    :goto_0
    const-string p1, "0:2:15"

    .line 38
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_2
    sget-boolean p1, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_JDM_HAL:Z

    .line 43
    if-eqz p1, :cond_3

    .line 45
    const/16 p1, 0xfff

    .line 47
    goto :goto_1

    .line 48
    :cond_3
    const/16 p1, 0xff

    .line 50
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    const-string v2, "1:8:"

    .line 54
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    new-array p1, v0, [Ljava/lang/String;

    .line 69
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 72
    move-result-object p0

    .line 73
    check-cast p0, [Ljava/lang/String;

    .line 75
    return-object p0
.end method

.method public getFaceAidlInstances()[Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Landroid/hardware/biometrics/face/IFace;->DESCRIPTOR:Ljava/lang/String;

    .line 3
    invoke-static {p0}, Landroid/os/ServiceManager;->getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getFaceConfiguration(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthService$Injector;->getConfiguration(Landroid/content/Context;)[Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getFaceService()Landroid/hardware/face/IFaceService;
    .locals 0

    .line 1
    const-string/jumbo p0, "face"

    .line 4
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Landroid/hardware/face/IFaceService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceService;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public getFingerprintAidlInstances()[Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Landroid/hardware/biometrics/fingerprint/IFingerprint;->DESCRIPTOR:Ljava/lang/String;

    .line 3
    invoke-static {p0}, Landroid/os/ServiceManager;->getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getFingerprintConfiguration(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthService$Injector;->getConfiguration(Landroid/content/Context;)[Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getFingerprintService()Landroid/hardware/fingerprint/IFingerprintService;
    .locals 0

    .line 1
    const-string/jumbo p0, "fingerprint"

    .line 4
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public getIrisConfiguration(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthService$Injector;->getConfiguration(Landroid/content/Context;)[Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getIrisService()Landroid/hardware/iris/IIrisService;
    .locals 0

    .line 1
    const-string/jumbo p0, "iris"

    .line 4
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Landroid/hardware/iris/IIrisService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/iris/IIrisService;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public isHidlDisabled(Landroid/content/Context;)Z
    .locals 2

    .line 1
    sget-boolean p0, Landroid/os/Build;->IS_ENG:Z

    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_1

    .line 6
    sget-boolean p0, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 8
    if-eqz p0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    return v0

    .line 12
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    move-result-object p0

    .line 16
    const-string/jumbo p1, "com.android.server.biometrics.AuthService.hidlDisabled"

    .line 19
    const/4 v1, -0x2

    .line 20
    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 23
    move-result p0

    .line 24
    const/4 p1, 0x1

    .line 25
    if-ne p0, p1, :cond_2

    .line 27
    move v0, p1

    .line 28
    :cond_2
    return v0
.end method

.method public publishBinderService(Lcom/android/server/biometrics/AuthService;Landroid/hardware/biometrics/IAuthService$Stub;)V
    .locals 0

    .line 1
    const-string p0, "auth"

    .line 3
    invoke-virtual {p1, p0, p2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 6
    return-void
.end method
