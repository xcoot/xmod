.class public final synthetic Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;

    .line 5
    iput-object p2, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;

    .line 8
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    .line 10
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    .line 12
    check-cast p0, Ljava/lang/String;

    .line 14
    iget-object v0, v0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    new-instance v2, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda2;

    .line 21
    const/4 v3, 0x2

    .line 22
    invoke-direct {v2, v1, v3, p0}, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    .line 25
    invoke-virtual {v0, v2}, Lcom/android/server/net/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 28
    return-void

    .line 29
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;

    .line 31
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    .line 33
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    .line 35
    check-cast p0, Landroid/net/LinkAddress;

    .line 37
    iget-object v0, v0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    new-instance v2, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda2;

    .line 44
    const/4 v3, 0x1

    .line 45
    invoke-direct {v2, v1, v3, p0}, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    .line 48
    invoke-virtual {v0, v2}, Lcom/android/server/net/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 51
    return-void

    .line 52
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;

    .line 54
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    .line 56
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    .line 58
    check-cast p0, Landroid/net/LinkAddress;

    .line 60
    iget-object v0, v0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    new-instance v2, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda2;

    .line 67
    const/4 v3, 0x0

    .line 68
    invoke-direct {v2, v1, v3, p0}, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    .line 71
    invoke-virtual {v0, v2}, Lcom/android/server/net/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 74
    return-void

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
