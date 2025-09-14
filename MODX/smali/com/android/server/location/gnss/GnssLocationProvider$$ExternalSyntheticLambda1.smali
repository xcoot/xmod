.class public final synthetic Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    check-cast p1, Landroid/location/Location;

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 8
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    .line 11
    move-result-wide p0

    .line 12
    return-wide p0

    .line 13
    :pswitch_0
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    .line 16
    move-result-wide p0

    .line 17
    return-wide p0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
