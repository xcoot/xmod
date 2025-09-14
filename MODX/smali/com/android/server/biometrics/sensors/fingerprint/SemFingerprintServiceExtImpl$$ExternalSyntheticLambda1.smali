.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 5
    iput-boolean p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 8
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda1;->f$1:Z

    .line 10
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 16
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 18
    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semSetTpaHalEnabled(Z)V

    .line 21
    :cond_0
    return-void

    .line 22
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 24
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda1;->f$1:Z

    .line 26
    iget-boolean v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHasUltrasonicUdfps:Z

    .line 28
    if-eqz v1, :cond_1

    .line 30
    iget-boolean v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mIsScreenOn:Z

    .line 32
    if-nez v1, :cond_1

    .line 34
    if-eqz p0, :cond_1

    .line 36
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->handleQcomForceQDB()V

    .line 39
    :cond_1
    iput-boolean p0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mIsScreenOn:Z

    .line 41
    iget-boolean v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHasOpticalUdfps:Z

    .line 43
    if-eqz v1, :cond_4

    .line 45
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    .line 47
    if-eqz p0, :cond_3

    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    .line 55
    move-result-object p0

    .line 56
    monitor-enter p0

    .line 57
    const/4 v0, 0x0

    .line 58
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->setHalfMode(Z)V

    .line 61
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    .line 63
    if-eqz v1, :cond_2

    .line 65
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->enable(I)V

    .line 68
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsHalfModeBlocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    :goto_0
    monitor-exit p0

    .line 74
    goto :goto_2

    .line 75
    :goto_1
    monitor-exit p0

    .line 76
    throw v0

    .line 77
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->screenOff()V

    .line 87
    :cond_4
    :goto_2
    return-void

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
