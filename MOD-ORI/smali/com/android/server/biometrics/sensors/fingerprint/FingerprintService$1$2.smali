.class public final Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$2;
.super Landroid/hardware/fingerprint/FingerprintServiceReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final numSensors:I

.field public sensorsFinishedRemoving:I

.field public final synthetic val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$2;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintServiceReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$2;->sensorsFinishedRemoving:I

    .line 8
    .line 9
    iget-object p2, p1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$2;->numSensors:I

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final onRemoved(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$2;->sensorsFinishedRemoving:I

    .line 4
    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$2;->sensorsFinishedRemoving:I

    .line 8
    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo p2, "sensorsFinishedRemoving: "

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$2;->sensorsFinishedRemoving:I

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p2, ", numSensors: "

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$2;->numSensors:I

    .line 28
    .line 29
    const-string v0, "FingerprintService"

    .line 30
    .line 31
    invoke-static {p1, p2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$2;->sensorsFinishedRemoving:I

    .line 35
    .line 36
    iget p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$2;->numSensors:I

    .line 37
    .line 38
    if-ne p1, p2, :cond_0

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$2;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    const/4 p2, 0x0

    .line 44
    invoke-interface {p0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onRemoved(Landroid/hardware/fingerprint/Fingerprint;I)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method
