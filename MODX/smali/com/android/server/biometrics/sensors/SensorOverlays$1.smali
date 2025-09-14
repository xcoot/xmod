.class public final Lcom/android/server/biometrics/sensors/SensorOverlays$1;
.super Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$client:Lcom/android/server/biometrics/sensors/AcquisitionClient;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/AcquisitionClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/SensorOverlays$1;->val$client:Lcom/android/server/biometrics/sensors/AcquisitionClient;

    .line 3
    invoke-direct {p0}, Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onUserCanceled()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays$1;->val$client:Lcom/android/server/biometrics/sensors/AcquisitionClient;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onUserCanceled()V

    .line 6
    return-void
.end method
