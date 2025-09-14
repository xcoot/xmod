.class public final Lcom/android/server/biometrics/sensors/SensorOverlays;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mUdfpsOverlayController:Ljava/util/Optional;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    .line 11
    return-void
.end method


# virtual methods
.method public final hide(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    .line 3
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    .line 11
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/hardware/fingerprint/IUdfpsOverlayController;

    .line 17
    invoke-interface {p0, p1}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->hideUdfpsOverlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    const-string p1, "SensorOverlays"

    .line 24
    const-string v0, "Remote exception when hiding the UDFPS overlay"

    .line 26
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    :cond_0
    :goto_0
    return-void
.end method

.method public final show(IILcom/android/server/biometrics/sensors/AcquisitionClient;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    .line 3
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    new-instance v6, Lcom/android/server/biometrics/sensors/SensorOverlays$1;

    .line 11
    invoke-direct {v6, p3}, Lcom/android/server/biometrics/sensors/SensorOverlays$1;-><init>(Lcom/android/server/biometrics/sensors/AcquisitionClient;)V

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    .line 16
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 20
    move-object v1, p0

    .line 21
    check-cast v1, Landroid/hardware/fingerprint/IUdfpsOverlayController;

    .line 23
    iget-wide v2, p3, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    .line 25
    move v4, p1

    .line 26
    move v5, p2

    .line 27
    invoke-interface/range {v1 .. v6}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->showUdfpsOverlay(JIILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    const-string p1, "SensorOverlays"

    .line 34
    const-string p2, "Remote exception when showing the UDFPS overlay"

    .line 36
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    :cond_0
    :goto_0
    return-void
.end method
