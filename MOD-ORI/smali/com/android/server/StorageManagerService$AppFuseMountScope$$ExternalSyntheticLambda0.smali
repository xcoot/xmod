.class public final synthetic Lcom/android/server/StorageManagerService$AppFuseMountScope$$ExternalSyntheticLambda0;
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
    iput p1, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

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
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroid/content/Context;

    .line 9
    .line 10
    sget v0, Lcom/android/server/StorageManagerService$StorageBadRemovalReceiver;->$r8$clinit:I

    .line 11
    .line 12
    const-class v0, Landroid/os/PowerManager;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/os/PowerManager;

    .line 19
    .line 20
    const-string v0, "RESTART_OF_SDCARDBADREMOVED_HASAPK"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    check-cast p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->this$0:Lcom/android/server/StorageManagerService;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 34
    .line 35
    iget v1, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->uid:I

    .line 36
    .line 37
    iget p0, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    .line 38
    .line 39
    invoke-interface {v0, v1, p0}, Landroid/os/IVold;->unmountAppFuse(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catch_0
    move-exception p0

    .line 44
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    throw p0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
