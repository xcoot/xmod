.class public final synthetic Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/location/Location;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative;ILandroid/location/Location;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 6
    iput p2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda7;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda7;->f$2:Landroid/location/Location;

    .line 10
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 3
    iget v1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda7;->f$1:I

    .line 5
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda7;->f$2:Landroid/location/Location;

    .line 7
    sget v2, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    .line 9
    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportGeofenceStatus$21(ILandroid/location/Location;)V

    .line 12
    return-void
.end method
