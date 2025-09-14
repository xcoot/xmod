.class public final synthetic Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/os/Message;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Message;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda1;->f$0:Landroid/os/Message;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda1;->f$0:Landroid/os/Message;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p1, Landroid/app/ActivityManagerInternal$BindServiceEventListener;

    .line 10
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    check-cast v0, Ljava/lang/String;

    .line 14
    iget p0, p0, Landroid/os/Message;->arg1:I

    .line 16
    invoke-interface {p1, v0, p0}, Landroid/app/ActivityManagerInternal$BindServiceEventListener;->onBindingService(Ljava/lang/String;I)V

    .line 19
    return-void

    .line 20
    :pswitch_0
    check-cast p1, Landroid/app/ActivityManagerInternal$BroadcastEventListener;

    .line 22
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 24
    check-cast v0, Ljava/lang/String;

    .line 26
    iget p0, p0, Landroid/os/Message;->arg1:I

    .line 28
    invoke-interface {p1, v0, p0}, Landroid/app/ActivityManagerInternal$BroadcastEventListener;->onSendingBroadcast(Ljava/lang/String;I)V

    .line 31
    return-void

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
