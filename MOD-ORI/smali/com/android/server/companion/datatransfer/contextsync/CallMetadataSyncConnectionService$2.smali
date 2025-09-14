.class public final Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$2;
.super Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final sendCallAction(IILjava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    .line 9
    .line 10
    invoke-static {p2, p3}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallControlMessage(ILjava/lang/String;)[B

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled()Z

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCrossDeviceSyncController:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->syncMessageToDevice(I[B)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void

    .line 31
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$2;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    .line 34
    .line 35
    invoke-static {p2, p3}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallControlMessage(ILjava/lang/String;)[B

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled()Z

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    if-eqz p3, :cond_1

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCrossDeviceSyncController:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 51
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->syncMessageToDevice(I[B)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
