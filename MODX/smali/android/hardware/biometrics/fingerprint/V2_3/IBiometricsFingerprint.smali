.class public interface abstract Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;


# direct methods
.method public static castFrom(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;)Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const-string v1, "android.hardware.biometrics.fingerprint@2.3::IBiometricsFingerprint"

    .line 14
    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_2

    .line 20
    instance-of v3, v2, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;

    .line 22
    if-eqz v3, :cond_2

    .line 24
    move-object v0, v2

    .line 25
    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    new-instance v2, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint$Proxy;

    .line 30
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p0, v2, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 35
    :try_start_0
    invoke-virtual {v2}, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint$Proxy;->interfaceChain()Ljava/util/ArrayList;

    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object p0

    .line 43
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_4

    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Ljava/lang/String;

    .line 55
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    if-eqz v3, :cond_3

    .line 61
    move-object v0, v2

    .line 62
    :catch_0
    :cond_4
    :goto_0
    return-object v0
.end method


# virtual methods
.method public abstract onFingerDown(IFFI)V
.end method

.method public abstract onFingerUp()V
.end method
