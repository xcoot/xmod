.class public final Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final registerCallMetadataSyncCallback(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCrossDeviceSyncController:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne p2, v0, :cond_1

    .line 17
    .line 18
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 19
    .line 20
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mInCallServiceCallbackRef:Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    iget-object p2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mConnectedAssociations:Ljava/util/List;

    .line 26
    .line 27
    check-cast p2, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/companion/AssociationInfo;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->isAssociationBlocked(Landroid/companion/AssociationInfo;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_0

    .line 50
    .line 51
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mBlocklist:Ljava/util/Set;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v2, Ljava/util/HashSet;

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-virtual {p1, v2, v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->updateNumberOfActiveSyncAssociations(IZ)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->requestCrossDeviceSync(Landroid/companion/AssociationInfo;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mBlocklist:Ljava/util/Set;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v2, Ljava/util/HashSet;

    .line 88
    .line 89
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    if-ne p2, v1, :cond_2

    .line 94
    .line 95
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 96
    .line 97
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iput-object p2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mConnectionServiceCallbackRef:Ljava/lang/ref/WeakReference;

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    const-string p0, "Cannot register callback of unknown type: "

    .line 104
    .line 105
    const-string p1, "CrossDeviceSyncController"

    .line 106
    .line 107
    invoke-static {p2, p0, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_3
    :goto_1
    return-void
.end method

.method public final sendCrossDeviceSyncMessageToAllDevices(I[B)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCrossDeviceSyncController:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mConnectedAssociations:Ljava/util/List;

    .line 20
    .line 21
    check-cast v1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroid/companion/AssociationInfo;

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-ne v3, p1, :cond_0

    .line 44
    .line 45
    invoke-static {v2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->isAssociationBlocked(Landroid/companion/AssociationInfo;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_0

    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getId()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    const-string p0, "CrossDeviceSyncController"

    .line 70
    .line 71
    const-string p1, "No eligible devices to sync to"

    .line 72
    .line 73
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    new-instance v0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    .line 82
    .line 83
    const/4 v1, 0x2

    .line 84
    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 85
    .line 86
    .line 87
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCompanionTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 96
    .line 97
    const v0, 0x63678883

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->sendMessage(I[B[I)V

    .line 101
    .line 102
    .line 103
    :cond_3
    :goto_1
    return-void
.end method
