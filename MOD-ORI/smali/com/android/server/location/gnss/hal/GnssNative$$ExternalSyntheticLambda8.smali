.class public final synthetic Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:[B


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative;II[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda8;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda8;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda8;->f$3:[B

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda8;->f$1:I

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda8;->f$2:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda8;->f$3:[B

    .line 8
    .line 9
    sget v3, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportAGpsStatus$9(II[B)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
