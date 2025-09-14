.class public final synthetic Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final synthetic f$1:D

.field public final synthetic f$2:D

.field public final synthetic f$3:D


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative;DDD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda13;->f$1:D

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda13;->f$2:D

    .line 9
    .line 10
    iput-wide p6, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda13;->f$3:D

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda13;->f$1:D

    .line 4
    .line 5
    iget-wide v3, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda13;->f$2:D

    .line 6
    .line 7
    iget-wide v5, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda13;->f$3:D

    .line 8
    .line 9
    sget p0, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    .line 10
    .line 11
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestCivicAddress$40(DDD)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
