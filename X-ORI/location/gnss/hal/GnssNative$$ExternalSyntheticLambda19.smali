.class public final synthetic Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda19;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda19;->f$1:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda19;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda19;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda19;->f$1:Z

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda19;->f$2:Z

    .line 6
    .line 7
    sget v2, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    .line 8
    .line 9
    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestLocation$27(ZZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
