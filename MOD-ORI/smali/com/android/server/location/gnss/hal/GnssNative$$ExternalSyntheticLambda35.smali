.class public final synthetic Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda35;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda35;->f$1:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda35;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda35;->f$1:J

    .line 4
    .line 5
    sget p0, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportNmea$10(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
