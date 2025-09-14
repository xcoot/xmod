.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:J

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;IIJZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;

    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6$$ExternalSyntheticLambda0;->f$1:I

    .line 8
    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6$$ExternalSyntheticLambda0;->f$2:I

    .line 10
    iput-wide p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6$$ExternalSyntheticLambda0;->f$3:J

    .line 12
    iput-boolean p6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6$$ExternalSyntheticLambda0;->f$4:Z

    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;

    .line 3
    iget v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6$$ExternalSyntheticLambda0;->f$1:I

    .line 5
    iget v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6$$ExternalSyntheticLambda0;->f$2:I

    .line 7
    iget-wide v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6$$ExternalSyntheticLambda0;->f$3:J

    .line 9
    iget-boolean v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6$$ExternalSyntheticLambda0;->f$4:Z

    .line 11
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 13
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 15
    invoke-static {v6}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    .line 18
    move-result v5

    .line 19
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->authEndedFor(JIIIZ)V

    .line 22
    return-void
.end method
