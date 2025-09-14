.class public interface abstract Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# direct methods
.method public static getService()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .locals 5

    .line 1
    const-string v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    .line 2
    .line 3
    const-string/jumbo v1, "default"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {v1, v0}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    instance-of v4, v3, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 21
    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    move-object v2, v3

    .line 25
    check-cast v2, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance v3, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Proxy;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, v3, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 34
    .line 35
    :try_start_0
    invoke-virtual {v3}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Proxy;->interfaceChain()Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_3

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    move-object v2, v3

    .line 62
    :catch_0
    :cond_3
    :goto_0
    return-object v2
.end method


# virtual methods
.method public abstract authenticate(IJ)I
.end method

.method public abstract cancel()I
.end method

.method public abstract enroll(II[B)I
.end method

.method public abstract enumerate()I
.end method

.method public abstract getAuthenticatorId()J
.end method

.method public abstract postEnroll()I
.end method

.method public abstract preEnroll()J
.end method

.method public abstract remove(II)I
.end method

.method public abstract setActiveGroup(ILjava/lang/String;)I
.end method

.method public abstract setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J
.end method
