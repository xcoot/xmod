.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    .line 6
    return-void
.end method


# virtual methods
.method public final onFinishDisplayState(III)V
    .locals 0

    .line 1
    const/4 p2, 0x2

    .line 2
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    .line 4
    if-ne p1, p2, :cond_0

    .line 6
    iget p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mPreviousLogicalState:I

    .line 8
    if-eq p2, p1, :cond_0

    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->setDisplayStateLimit(Z)V

    .line 14
    :cond_0
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mPreviousLogicalState:I

    .line 16
    return-void
.end method
