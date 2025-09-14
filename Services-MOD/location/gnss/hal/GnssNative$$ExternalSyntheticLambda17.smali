.class public final synthetic Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final synthetic f$1:I

.field public final synthetic f$2:[I

.field public final synthetic f$3:[F

.field public final synthetic f$4:[F

.field public final synthetic f$5:[F

.field public final synthetic f$6:[F

.field public final synthetic f$7:[F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative;I[I[F[F[F[F[F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 6
    iput p2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda17;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda17;->f$2:[I

    .line 10
    iput-object p4, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda17;->f$3:[F

    .line 12
    iput-object p5, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda17;->f$4:[F

    .line 14
    iput-object p6, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda17;->f$5:[F

    .line 16
    iput-object p7, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda17;->f$6:[F

    .line 18
    iput-object p8, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda17;->f$7:[F

    .line 20
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 3
    iget v1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda17;->f$1:I

    .line 5
    iget-object v2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda17;->f$2:[I

    .line 7
    iget-object v3, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda17;->f$3:[F

    .line 9
    iget-object v4, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda17;->f$4:[F

    .line 11
    iget-object v5, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda17;->f$5:[F

    .line 13
    iget-object v6, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda17;->f$6:[F

    .line 15
    iget-object v7, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda17;->f$7:[F

    .line 17
    sget p0, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    .line 19
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportSvStatus$8(I[I[F[F[F[F[F)V

    .line 22
    return-void
.end method
