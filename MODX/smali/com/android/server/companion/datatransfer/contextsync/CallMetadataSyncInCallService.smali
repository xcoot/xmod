.class public Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;
.super Landroid/telecom/InCallService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

.field public final mCrossDeviceSyncControllerCallback:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$2;

.field final mCurrentCalls:Ljava/util/Map;

.field mNumberOfActiveSyncAssociations:I

.field public final mTelecomCallback:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/telecom/InCallService;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCurrentCalls:Ljava/util/Map;

    .line 11
    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$1;

    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$1;-><init>(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;)V

    .line 16
    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mTelecomCallback:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$1;

    .line 18
    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$2;

    .line 20
    invoke-direct {v0, p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$2;-><init>(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;)V

    .line 23
    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCrossDeviceSyncControllerCallback:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$2;

    .line 25
    return-void
.end method


# virtual methods
.method public getCallForId(Ljava/lang/String;Ljava/util/Collection;)Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;
    .locals 2

    .line 1
    const/4 p0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p2

    .line 9
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 15
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;

    .line 21
    iget-object v1, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mId:Ljava/lang/String;

    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 29
    return-object v0

    .line 30
    :cond_2
    return-object p0
.end method

.method public final onCallAdded(Landroid/telecom/Call;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mNumberOfActiveSyncAssociations:I

    .line 9
    if-lez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCurrentCalls:Ljava/util/Map;

    .line 13
    new-instance v1, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;

    .line 15
    invoke-virtual {p0}, Landroid/telecom/InCallService;->getCallAudioState()Landroid/telecom/CallAudioState;

    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;-><init>(Landroid/content/Context;Landroid/telecom/Call;Landroid/telecom/CallAudioState;)V

    .line 22
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mTelecomCallback:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$1;

    .line 27
    invoke-virtual {p1, v0}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;)V

    .line 30
    invoke-virtual {p0}, Landroid/telecom/InCallService;->getUserId()I

    .line 33
    move-result p1

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->sync(I)V

    .line 37
    :cond_0
    return-void
.end method

.method public final onCallRemoved(Landroid/telecom/Call;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 7
    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mNumberOfActiveSyncAssociations:I

    .line 9
    if-lez v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCurrentCalls:Ljava/util/Map;

    .line 13
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mTelecomCallback:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$1;

    .line 18
    invoke-virtual {p1, v0}, Landroid/telecom/Call;->unregisterCallback(Landroid/telecom/Call$Callback;)V

    .line 21
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    .line 23
    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    .line 30
    move-result-object p1

    .line 31
    const-string/jumbo v1, "com.android.companion.datatransfer.contextsync.extra.CALL_ID"

    .line 34
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled()Z

    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 47
    iget-object v0, v0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 49
    iget-object v0, v0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCrossDeviceSyncController:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 51
    if-eqz p1, :cond_0

    .line 53
    iget-object v0, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCallManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;

    .line 55
    iget-object v0, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mSelfOwnedCalls:Ljava/util/Set;

    .line 57
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/telecom/InCallService;->getUserId()I

    .line 67
    move-result p1

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->sync(I)V

    .line 71
    :cond_2
    return-void
.end method

.method public final onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/telecom/InCallService;->onCreate()V

    .line 4
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const-class v0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    .line 12
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    .line 18
    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    .line 20
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCrossDeviceSyncControllerCallback:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$2;

    .line 22
    const/4 v1, 0x2

    .line 23
    invoke-virtual {v0, p0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->registerCallMetadataSyncCallback(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;I)V

    .line 26
    :cond_0
    return-void
.end method

.method public final onMuteStateChanged(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mNumberOfActiveSyncAssociations:I

    .line 9
    if-lez v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    .line 13
    invoke-virtual {p0}, Landroid/telecom/InCallService;->getUserId()I

    .line 16
    move-result p0

    .line 17
    if-eqz p1, :cond_0

    .line 19
    const/4 p1, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x5

    .line 22
    :goto_0
    const/4 v1, 0x0

    .line 23
    invoke-static {p1, v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallControlMessage(ILjava/lang/String;)[B

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->sendCrossDeviceSyncMessageToAllDevices(I[B)V

    .line 30
    :cond_1
    return-void
.end method

.method public final onSilenceRinger()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mNumberOfActiveSyncAssociations:I

    .line 9
    if-lez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    .line 13
    invoke-virtual {p0}, Landroid/telecom/InCallService;->getUserId()I

    .line 16
    move-result p0

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x3

    .line 19
    invoke-static {v2, v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallControlMessage(ILjava/lang/String;)[B

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, p0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->sendCrossDeviceSyncMessageToAllDevices(I[B)V

    .line 26
    :cond_0
    return-void
.end method

.method public final sync(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    .line 3
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCurrentCalls:Ljava/util/Map;

    .line 5
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_3

    .line 18
    iget-object v0, v0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 20
    iget-object v0, v0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCrossDeviceSyncController:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    new-instance v1, Ljava/util/HashSet;

    .line 27
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 30
    iget-object v2, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mConnectedAssociations:Ljava/util/List;

    .line 32
    check-cast v2, Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v2

    .line 38
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 44
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Landroid/companion/AssociationInfo;

    .line 50
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 53
    move-result v4

    .line 54
    if-ne v4, p1, :cond_0

    .line 56
    invoke-static {v3}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->isAssociationBlocked(Landroid/companion/AssociationInfo;)Z

    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_0

    .line 62
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getId()I

    .line 65
    move-result v3

    .line 66
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_2

    .line 80
    const-string p0, "CrossDeviceSyncController"

    .line 82
    const-string p1, "No eligible devices to sync to"

    .line 84
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    invoke-virtual {v0, p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallUpdateMessage(Ljava/util/Collection;I)[B

    .line 91
    move-result-object p0

    .line 92
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 95
    move-result-object p1

    .line 96
    new-instance v1, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    .line 98
    const/4 v2, 0x2

    .line 99
    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 102
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 105
    move-result-object p1

    .line 106
    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    .line 109
    move-result-object p1

    .line 110
    iget-object v0, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCompanionTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 112
    const v1, 0x63678883

    .line 115
    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->sendMessage(I[B[I)V

    .line 118
    :cond_3
    :goto_1
    return-void
.end method
