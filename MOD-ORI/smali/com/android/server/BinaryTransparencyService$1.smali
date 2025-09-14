.class public final Lcom/android/server/BinaryTransparencyService$1;
.super Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/BinaryTransparencyService;


# direct methods
.method public constructor <init>(Lcom/android/server/BinaryTransparencyService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService$1;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAllAuthenticatorsRegistered(Ljava/util/List;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintSensorProperties;->from(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)Landroid/hardware/fingerprint/FingerprintSensorProperties;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/android/server/BinaryTransparencyService$1;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintSensorProperties;->getSensorType()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    if-eq v2, v3, :cond_0

    .line 32
    .line 33
    const/4 v4, 0x2

    .line 34
    if-eq v2, v4, :cond_1

    .line 35
    .line 36
    const/4 v4, 0x3

    .line 37
    if-eq v2, v4, :cond_1

    .line 38
    .line 39
    const/4 v4, 0x4

    .line 40
    if-eq v2, v4, :cond_1

    .line 41
    .line 42
    const/4 v4, 0x5

    .line 43
    if-eq v2, v4, :cond_1

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    move v4, v3

    .line 48
    :cond_1
    :goto_1
    invoke-static {v1, v0, v3, v4}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$mlogBiometricProperties(Lcom/android/server/BinaryTransparencyService;Landroid/hardware/biometrics/SensorProperties;II)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    return-void
.end method
