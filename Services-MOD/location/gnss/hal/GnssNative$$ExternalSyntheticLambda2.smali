.class public final synthetic Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/location/gnss/hal/GnssNative;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    sget v0, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    .line 10
    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestRefLocation$29()V

    .line 13
    return-void

    .line 14
    :pswitch_0
    sget v0, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    .line 16
    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestUtcTime$28()V

    .line 19
    return-void

    .line 20
    :pswitch_1
    sget v0, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    .line 22
    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestRefLocationSec$30()V

    .line 25
    return-void

    .line 26
    :pswitch_2
    sget v0, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    .line 28
    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestLppeCommonIesCapability$34()V

    .line 31
    return-void

    .line 32
    :pswitch_3
    sget v0, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    .line 34
    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestUbpCapability$36()V

    .line 37
    return-void

    .line 38
    :pswitch_4
    sget v0, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    .line 40
    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestWlanCapability$38()V

    .line 43
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
