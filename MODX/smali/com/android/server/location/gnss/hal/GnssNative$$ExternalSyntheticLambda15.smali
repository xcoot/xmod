.class public final synthetic Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/location/Location;

.field public final synthetic f$3:I

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative;ILandroid/location/Location;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 6
    iput p2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda15;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda15;->f$2:Landroid/location/Location;

    .line 10
    iput p4, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda15;->f$3:I

    .line 12
    iput-wide p5, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda15;->f$4:J

    .line 14
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 3
    iget v1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda15;->f$1:I

    .line 5
    iget-object v2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda15;->f$2:Landroid/location/Location;

    .line 7
    iget v3, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda15;->f$3:I

    .line 9
    iget-wide v4, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda15;->f$4:J

    .line 11
    sget p0, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportGeofenceTransition$20(ILandroid/location/Location;IJ)V

    .line 16
    return-void
.end method
