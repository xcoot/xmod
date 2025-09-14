.class public final synthetic Lcom/android/server/location/provider/DelegateLocationProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/location/provider/DelegateLocationProvider$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/location/provider/DelegateLocationProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/location/provider/DelegateLocationProvider$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/location/provider/DelegateLocationProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_0
    check-cast p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;

    .line 14
    .line 15
    check-cast p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDelegate:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/android/server/location/provider/AbstractLocationProvider;->mController:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->setListener(Lcom/android/server/location/provider/AbstractLocationProvider$Listener;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
