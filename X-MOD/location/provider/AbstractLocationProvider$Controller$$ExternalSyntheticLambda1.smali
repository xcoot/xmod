.class public final synthetic Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/provider/AbstractLocationProvider$Controller;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    .line 5
    iput-object p2, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    .line 8
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 10
    check-cast p0, Ljava/lang/Runnable;

    .line 12
    iget-object v0, v0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->this$0:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 14
    check-cast p0, Lcom/android/server/location/provider/LocationProviderManager$Registration$$ExternalSyntheticLambda0;

    .line 16
    invoke-virtual {v0, p0}, Lcom/android/server/location/provider/AbstractLocationProvider;->onFlush(Lcom/android/server/location/provider/LocationProviderManager$Registration$$ExternalSyntheticLambda0;)V

    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    .line 22
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 24
    check-cast p0, Landroid/location/provider/ProviderRequest;

    .line 26
    iget-object v0, v0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->this$0:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 28
    invoke-virtual {v0, p0}, Lcom/android/server/location/provider/AbstractLocationProvider;->onSetRequest(Landroid/location/provider/ProviderRequest;)V

    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
