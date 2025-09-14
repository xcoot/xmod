.class public final synthetic Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda22;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda22;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda22;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda22;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroid/os/IRemoteCallback;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :try_start_0
    invoke-interface {p0, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    throw p0

    .line 21
    :pswitch_0
    check-cast p0, Ljava/lang/RuntimeException;

    .line 22
    .line 23
    throw p0

    .line 24
    :pswitch_1
    check-cast p0, Ljava/lang/RuntimeException;

    .line 25
    .line 26
    throw p0

    .line 27
    :pswitch_2
    check-cast p0, Ljava/lang/RuntimeException;

    .line 28
    .line 29
    throw p0

    .line 30
    :pswitch_3
    check-cast p0, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    throw p0

    .line 33
    :pswitch_4
    check-cast p0, Ljava/lang/RuntimeException;

    .line 34
    .line 35
    new-instance v0, Ljava/lang/AssertionError;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :pswitch_5
    check-cast p0, Ljava/lang/RuntimeException;

    .line 42
    .line 43
    new-instance v0, Ljava/lang/AssertionError;

    .line 44
    .line 45
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
