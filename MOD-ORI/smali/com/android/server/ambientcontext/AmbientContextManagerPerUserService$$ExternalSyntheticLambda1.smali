.class public final synthetic Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroid/app/ambientcontext/IAmbientContextObserver;

    .line 11
    .line 12
    check-cast p1, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->completeRegistration(Landroid/app/ambientcontext/IAmbientContextObserver;I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Landroid/os/RemoteCallback;

    .line 30
    .line 31
    check-cast p1, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-static {p1, p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->sendStatusCallback(ILandroid/os/RemoteCallback;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
