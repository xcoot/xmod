.class public final synthetic Lcom/android/server/biometrics/BiometricStrengthController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/BiometricStrengthController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricStrengthController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricStrengthController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/BiometricStrengthController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricStrengthController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/BiometricStrengthController;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string/jumbo v0, "biometric_strengths"

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricStrengthController;->updateStrengths()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
