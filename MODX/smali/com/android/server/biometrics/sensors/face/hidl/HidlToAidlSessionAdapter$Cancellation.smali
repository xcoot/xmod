.class public final Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter$Cancellation;
.super Landroid/hardware/biometrics/common/ICancellationSignal$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter$Cancellation;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    .line 3
    invoke-direct {p0}, Landroid/hardware/biometrics/common/ICancellationSignal$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter$Cancellation;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 5
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 11
    invoke-interface {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->cancel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    const-string v0, "HidlToAidlSessionAdapter"

    .line 18
    const-string v1, "Remote exception when requesting cancel"

    .line 20
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    :goto_0
    return-void
.end method

.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
