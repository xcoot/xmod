.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$$ExternalSyntheticLambda0;->f$1:I

    .line 8
    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$$ExternalSyntheticLambda0;->f$2:I

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    .line 3
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$$ExternalSyntheticLambda0;->f$1:I

    .line 5
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$$ExternalSyntheticLambda0;->f$2:I

    .line 7
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiCallback:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$SysUiCallback;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-interface {v0, v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$SysUiCallback;->onSysUiError(II)V

    .line 14
    :cond_0
    return-void
.end method
