.class public final synthetic Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final sendCallback(Landroid/net/INetworkManagementEventObserver;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    .line 8
    iget-boolean p0, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda1;->f$1:Z

    .line 10
    invoke-interface {p1, v0, p0}, Landroid/net/INetworkManagementEventObserver;->interfaceLinkStateChanged(Ljava/lang/String;Z)V

    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    .line 16
    iget-boolean p0, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda1;->f$1:Z

    .line 18
    invoke-interface {p1, v0, p0}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V

    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
