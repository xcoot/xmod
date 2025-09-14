.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;->f$0:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;->f$0:I

    .line 4
    .line 5
    check-cast p1, Landroid/app/IUserSwitchObserver;

    .line 6
    .line 7
    check-cast p2, Landroid/os/IRemoteCallback;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-interface {p1, p0, p2}, Landroid/app/IUserSwitchObserver;->onBeforeUserSwitching(ILandroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    return-void

    .line 16
    :pswitch_0
    :try_start_1
    invoke-interface {p1, p0, p2}, Landroid/app/IUserSwitchObserver;->onUserSwitching(ILandroid/os/IRemoteCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 17
    .line 18
    .line 19
    :catch_1
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
