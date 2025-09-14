.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

.field public final synthetic f$1:Landroid/os/IBinder;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda4;->f$1:Landroid/os/IBinder;

    .line 8
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda4;->f$1:Landroid/os/IBinder;

    .line 5
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    .line 7
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    sget-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    .line 14
    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    .line 16
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    .line 18
    const-string v2, "addMaskView: already registered client: ["

    .line 20
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mMaskClientList:Ljava/util/Map;

    .line 22
    monitor-enter v3

    .line 23
    :try_start_0
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mMaskClientList:Ljava/util/Map;

    .line 25
    check-cast v4, Ljava/util/HashMap;

    .line 27
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_0

    .line 33
    const-string v0, "FingerprintService"

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, "], ["

    .line 45
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string p0, "]"

    .line 53
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 60
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;

    .line 68
    const/4 v4, 0x0

    .line 69
    const/4 v5, 0x0

    .line 70
    invoke-direct {v2, v1, p0, v4, v5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;-><init>(Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;)V

    .line 73
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mMaskClientList:Ljava/util/Map;

    .line 75
    check-cast p0, Ljava/util/HashMap;

    .line 77
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda5;

    .line 82
    invoke-direct {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;)V

    .line 85
    invoke-virtual {v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->start(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda5;)V

    .line 88
    :goto_0
    monitor-exit v3

    .line 89
    return-void

    .line 90
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    throw p0
.end method
