.class public final synthetic Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/location/gnss/hal/GnssNative;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$isInEmergencySession$33()Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :pswitch_0
    sget v0, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$isInEmergencySession$32()Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
