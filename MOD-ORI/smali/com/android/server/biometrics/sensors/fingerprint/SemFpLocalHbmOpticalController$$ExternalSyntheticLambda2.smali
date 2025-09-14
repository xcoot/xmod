.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;

.field public final synthetic f$1:Landroid/util/Pair;

.field public final synthetic f$2:I

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;Landroid/util/Pair;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2;->f$1:Landroid/util/Pair;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2;->f$2:I

    .line 9
    .line 10
    iput-wide p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2;->f$3:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2;->f$1:Landroid/util/Pair;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2;->f$2:I

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2;->f$3:J

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->handleTouchEventInLhbm(Landroid/util/Pair;IJ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
