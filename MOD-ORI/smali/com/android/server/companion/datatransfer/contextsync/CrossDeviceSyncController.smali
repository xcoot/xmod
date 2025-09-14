.class public final Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBlocklist:Ljava/util/Set;

.field public final mCallFacilitators:Ljava/util/List;

.field public final mCallManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;

.field public final mCompanionTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

.field public final mConnectedAssociations:Ljava/util/List;

.field public mConnectionServiceCallbackRef:Ljava/lang/ref/WeakReference;

.field public final mContext:Landroid/content/Context;

.field public mInCallServiceCallbackRef:Ljava/lang/ref/WeakReference;

.field public final mPhoneAccountManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;


# direct methods
.method public static -$$Nest$mclearInProgressCalls(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCallManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mCallIds:Ljava/util/Map;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/util/Set;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mConnectionServiceCallbackRef:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    if-eqz p0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->cleanUpCallIds(Ljava/util/Set;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/companion/transport/CompanionTransportManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mConnectedAssociations:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mBlocklist:Ljava/util/Set;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCallFacilitators:Ljava/util/List;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCompanionTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 28
    .line 29
    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;-><init>(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->addListener(Landroid/companion/IOnTransportsChangedListener;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;-><init>(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)V

    .line 40
    .line 41
    .line 42
    const v1, 0x63678883

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v1, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->addListener(ILandroid/companion/IOnMessageReceivedListener;)V

    .line 46
    .line 47
    .line 48
    new-instance p2, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;

    .line 49
    .line 50
    invoke-direct {p2, p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    iput-object p2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mPhoneAccountManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;

    .line 54
    .line 55
    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;

    .line 56
    .line 57
    invoke-direct {v0, p1, p2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;-><init>(Landroid/content/Context;Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCallManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;

    .line 61
    .line 62
    return-void
.end method

.method public static createCallControlMessage(ILjava/lang/String;)[B
    .locals 9

    .line 1
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide v1, 0x10500000001L

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 13
    .line 14
    .line 15
    const-wide v1, 0x10b00000004L

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    const-wide v3, 0x20b00000002L

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    const-wide v5, 0x10b00000002L

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 39
    .line 40
    .line 41
    move-result-wide v5

    .line 42
    const-wide v7, 0x10900000001L

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v7, v8, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-wide v7, 0x10e00000002L

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v7, v8, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0
.end method

.method public static createCallCreateMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 9

    .line 1
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide v1, 0x10500000001L

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 13
    .line 14
    .line 15
    const-wide v1, 0x10b00000004L

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    const-wide v3, 0x20b00000002L

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    const-wide v5, 0x10b00000001L

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 39
    .line 40
    .line 41
    move-result-wide v5

    .line 42
    const-wide v7, 0x10900000001L

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v7, v8, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-wide v7, 0x10900000002L

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v7, v8, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-wide p0, 0x10b00000003L

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p0, p1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 64
    .line 65
    .line 66
    move-result-wide p0

    .line 67
    invoke-virtual {v0, v7, v8, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p0, p1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0
.end method

.method public static isAssociationBlocked(Landroid/companion/AssociationInfo;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getSystemDataSyncFlags()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    and-int/2addr p0, v0

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public static processCallControlRequestDataFromSync(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallControlRequest;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallControlRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, -0x1

    .line 11
    if-eq v1, v2, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eq v1, v2, :cond_1

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    if-eq v1, v2, :cond_0

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "Unhandled field in ControlAction:"

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "CrossDeviceSyncController"

    .line 42
    .line 43
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-wide v1, 0x10e00000002L

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    iput v1, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallControlRequest;->mControl:I

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const-wide v1, 0x10900000001L

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iput-object v1, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallControlRequest;->mId:Ljava/lang/String;

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    return-object v0
.end method

.method public static processCallCreateRequestDataFromSync(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, -0x1

    .line 11
    if-eq v1, v2, :cond_3

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eq v1, v2, :cond_2

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    if-eq v1, v2, :cond_1

    .line 22
    .line 23
    const/4 v2, 0x3

    .line 24
    if-eq v1, v2, :cond_0

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, "Unhandled field in CreateAction:"

    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "CrossDeviceSyncController"

    .line 45
    .line 46
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-wide v1, 0x10b00000003L

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 56
    .line 57
    .line 58
    move-result-wide v1

    .line 59
    invoke-static {p0}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->processFacilitatorDataFromSync(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    iput-object v3, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;->mFacilitator:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    .line 64
    .line 65
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const-wide v1, 0x10900000002L

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iput-object v1, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;->mAddress:Ljava/lang/String;

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    const-wide v1, 0x10900000001L

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iput-object v1, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;->mId:Ljava/lang/String;

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    return-object v0
.end method

.method public static processFacilitatorDataFromSync(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, -0x1

    .line 11
    if-eq v1, v2, :cond_3

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eq v1, v2, :cond_2

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    if-eq v1, v2, :cond_1

    .line 22
    .line 23
    const/4 v2, 0x3

    .line 24
    if-eq v1, v2, :cond_0

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, "Unhandled field in Facilitator:"

    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "CrossDeviceSyncController"

    .line 45
    .line 46
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-wide v1, 0x10900000003L

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mExtendedIdentifier:Ljava/lang/String;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const-wide v1, 0x10900000002L

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iput-object v1, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mIdentifier:Ljava/lang/String;

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    const-wide v1, 0x10900000001L

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iput-object v1, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mName:Ljava/lang/String;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    return-object v0
.end method


# virtual methods
.method public createCallUpdateMessage(Ljava/util/Collection;I)[B
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 6
    .line 7
    .line 8
    const-wide v2, 0x10500000001L

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 15
    .line 16
    .line 17
    const-wide v2, 0x10b00000004L

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    const-wide v10, 0x10900000001L

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    if-eqz v5, :cond_5

    .line 40
    .line 41
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    check-cast v5, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;

    .line 46
    .line 47
    iget-boolean v12, v5, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mIsCallPlacedByContextSync:Z

    .line 48
    .line 49
    if-nez v12, :cond_0

    .line 50
    .line 51
    iget-object v12, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCallManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;

    .line 52
    .line 53
    iget-object v12, v12, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mExternallyOwnedCalls:Ljava/util/Set;

    .line 54
    .line 55
    iget-object v13, v5, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mId:Ljava/lang/String;

    .line 56
    .line 57
    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v12

    .line 61
    if-eqz v12, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const-wide v14, 0x20b00000001L

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 70
    .line 71
    .line 72
    move-result-wide v14

    .line 73
    invoke-virtual {v1, v10, v11, v13}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-wide v12, 0x10b00000002L

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 82
    .line 83
    .line 84
    move-result-wide v12

    .line 85
    iget-object v6, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    const-class v7, Landroid/app/admin/DevicePolicyManager;

    .line 88
    .line 89
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    .line 94
    .line 95
    iget v7, v5, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mUserId:I

    .line 96
    .line 97
    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->getBluetoothContactSharingDisabled(Landroid/os/UserHandle;)Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    iget-boolean v7, v5, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mIsEnterprise:Z

    .line 106
    .line 107
    if-eqz v7, :cond_2

    .line 108
    .line 109
    if-eqz v6, :cond_2

    .line 110
    .line 111
    invoke-virtual {v5}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->getNonContactString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    goto :goto_1

    .line 116
    :cond_2
    iget-object v6, v5, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mContactDisplayName:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    if-eqz v6, :cond_3

    .line 123
    .line 124
    invoke-virtual {v5}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->getNonContactString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    goto :goto_1

    .line 129
    :cond_3
    iget-object v6, v5, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mContactDisplayName:Ljava/lang/String;

    .line 130
    .line 131
    :goto_1
    invoke-virtual {v1, v10, v11, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-wide v6, 0x10c00000002L

    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    iget-object v8, v5, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallingAppIcon:[B

    .line 140
    .line 141
    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 142
    .line 143
    .line 144
    const-wide v6, 0x10b00000003L

    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 150
    .line 151
    .line 152
    move-result-wide v6

    .line 153
    iget-object v8, v5, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallingAppName:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v1, v10, v11, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-object v8, v5, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallingAppPackageName:Ljava/lang/String;

    .line 159
    .line 160
    const-wide v9, 0x10900000002L

    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object v8, v5, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mSerializedPhoneAccountHandle:Ljava/lang/String;

    .line 169
    .line 170
    const-wide v9, 0x10900000003L

    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 182
    .line 183
    .line 184
    iget v6, v5, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mStatus:I

    .line 185
    .line 186
    const-wide v7, 0x10e00000003L

    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 192
    .line 193
    .line 194
    iget v6, v5, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mDirection:I

    .line 195
    .line 196
    const-wide v7, 0x10e00000005L

    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 202
    .line 203
    .line 204
    iget-object v5, v5, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mControls:Ljava/util/Set;

    .line 205
    .line 206
    check-cast v5, Ljava/util/HashSet;

    .line 207
    .line 208
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    if-eqz v6, :cond_4

    .line 217
    .line 218
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    check-cast v6, Ljava/lang/Integer;

    .line 223
    .line 224
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 225
    .line 226
    .line 227
    move-result v6

    .line 228
    const-wide v7, 0x20e00000004L

    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 234
    .line 235
    .line 236
    goto :goto_2

    .line 237
    :cond_4
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_0

    .line 241
    .line 242
    :cond_5
    iget-object v0, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCallFacilitators:Ljava/util/List;

    .line 243
    .line 244
    check-cast v0, Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    if-eqz v4, :cond_6

    .line 255
    .line 256
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    check-cast v4, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    .line 261
    .line 262
    const-wide v5, 0x20b00000003L

    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 268
    .line 269
    .line 270
    move-result-wide v5

    .line 271
    iget-object v7, v4, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mName:Ljava/lang/String;

    .line 272
    .line 273
    invoke-virtual {v1, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 274
    .line 275
    .line 276
    iget-object v7, v4, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mIdentifier:Ljava/lang/String;

    .line 277
    .line 278
    const-wide v8, 0x10900000002L

    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 284
    .line 285
    .line 286
    iget-object v4, v4, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mExtendedIdentifier:Ljava/lang/String;

    .line 287
    .line 288
    const-wide v12, 0x10900000003L

    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, v12, v13, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 297
    .line 298
    .line 299
    goto :goto_3

    .line 300
    :cond_6
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    return-object v0
.end method

.method public final isAssociationBlockedLocal(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mBlocklist:Ljava/util/Set;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p0, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public processCallDataFromSync(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-eq v0, v1, :cond_9

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-wide v2, 0x10900000001L

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    if-eq v0, v4, :cond_8

    .line 24
    .line 25
    const-string v5, "CrossDeviceSyncController"

    .line 26
    .line 27
    const/4 v6, 0x3

    .line 28
    const/4 v7, 0x2

    .line 29
    if-eq v0, v7, :cond_3

    .line 30
    .line 31
    if-eq v0, v6, :cond_2

    .line 32
    .line 33
    const/4 v1, 0x4

    .line 34
    if-eq v0, v1, :cond_1

    .line 35
    .line 36
    const/4 v1, 0x5

    .line 37
    if-eq v0, v1, :cond_0

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v1, "Unhandled field in Telecom:"

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const-wide v0, 0x10e00000005L

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iput v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mDirection:I

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const-wide v0, 0x20e00000004L

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mControls:Ljava/util/Set;

    .line 83
    .line 84
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v1, Ljava/util/HashSet;

    .line 89
    .line 90
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    const-wide v0, 0x10e00000003L

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    iput v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mStatus:I

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    const-wide v8, 0x10b00000002L

    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 112
    .line 113
    .line 114
    move-result-wide v8

    .line 115
    :goto_1
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eq v0, v1, :cond_7

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eq v0, v4, :cond_6

    .line 126
    .line 127
    if-eq v0, v7, :cond_5

    .line 128
    .line 129
    if-eq v0, v6, :cond_4

    .line 130
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v10, "Unhandled field in Origin:"

    .line 134
    .line 135
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-static {p1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v10

    .line 142
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_4
    const-wide v10, 0x10b00000003L

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v10, v11}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 159
    .line 160
    .line 161
    move-result-wide v10

    .line 162
    invoke-static {p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->processFacilitatorDataFromSync(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mFacilitator:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    .line 167
    .line 168
    invoke-virtual {p1, v10, v11}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_5
    const-wide v10, 0x10c00000002L

    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, v10, v11}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mAppIcon:[B

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_6
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mCallerId:Ljava/lang/String;

    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_7
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_8
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    .line 201
    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    :cond_9
    return-object p0
.end method

.method public processTelecomDataFromSync([B)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;
    .locals 14

    .line 1
    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/util/proto/ProtoInputStream;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Landroid/util/proto/ProtoInputStream;-><init>([B)V

    .line 9
    .line 10
    .line 11
    const/4 p1, -0x1

    .line 12
    move v2, p1

    .line 13
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eq v3, p1, :cond_a

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 20
    .line 21
    .line 22
    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/util/proto/ProtoParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    const-string v4, "CrossDeviceSyncController"

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    if-eq v3, v5, :cond_9

    .line 27
    .line 28
    const/4 v6, 0x4

    .line 29
    if-eq v3, v6, :cond_0

    .line 30
    .line 31
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v5, "Unhandled field in ContextSyncMessage:"

    .line 37
    .line 38
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception p0

    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :cond_0
    if-ne v2, v5, :cond_8

    .line 60
    .line 61
    const-wide v6, 0x10b00000004L

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 67
    .line 68
    .line 69
    move-result-wide v6

    .line 70
    :goto_1
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eq v3, p1, :cond_7

    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-ne v3, v5, :cond_1

    .line 81
    .line 82
    const-wide v8, 0x20b00000001L

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 88
    .line 89
    .line 90
    move-result-wide v8

    .line 91
    invoke-virtual {p0, v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->processCallDataFromSync(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    iget-object v10, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCalls:Ljava/util/Map;

    .line 96
    .line 97
    iget-object v11, v3, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    .line 98
    .line 99
    check-cast v10, Ljava/util/HashMap;

    .line 100
    .line 101
    invoke-virtual {v10, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_1
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    const/4 v8, 0x2

    .line 113
    if-ne v3, v8, :cond_5

    .line 114
    .line 115
    const-wide v9, 0x20b00000002L

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 121
    .line 122
    .line 123
    move-result-wide v9

    .line 124
    :goto_2
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-eq v3, p1, :cond_4

    .line 129
    .line 130
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-eq v3, v5, :cond_3

    .line 135
    .line 136
    if-eq v3, v8, :cond_2

    .line 137
    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v11, "Unhandled field in Request:"

    .line 144
    .line 145
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-static {v1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v11

    .line 152
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_2
    const-wide v11, 0x10b00000002L

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 169
    .line 170
    .line 171
    move-result-wide v11

    .line 172
    invoke-static {v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->processCallControlRequestDataFromSync(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallControlRequest;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    iget-object v13, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCallControlRequests:Ljava/util/List;

    .line 177
    .line 178
    check-cast v13, Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_3
    const-wide v11, 0x10b00000001L

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 193
    .line 194
    .line 195
    move-result-wide v11

    .line 196
    invoke-static {v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->processCallCreateRequestDataFromSync(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    iget-object v13, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCallCreateRequests:Ljava/util/List;

    .line 201
    .line 202
    check-cast v13, Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_4
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 212
    .line 213
    .line 214
    goto/16 :goto_1

    .line 215
    .line 216
    :cond_5
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    const/4 v8, 0x3

    .line 221
    if-ne v3, v8, :cond_6

    .line 222
    .line 223
    const-wide v8, 0x20b00000003L

    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 229
    .line 230
    .line 231
    move-result-wide v8

    .line 232
    invoke-static {v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->processFacilitatorDataFromSync(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    iput-boolean v5, v3, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mIsTel:Z

    .line 237
    .line 238
    iget-object v10, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCallFacilitators:Ljava/util/List;

    .line 239
    .line 240
    check-cast v10, Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 246
    .line 247
    .line 248
    goto/16 :goto_1

    .line 249
    .line 250
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .line 254
    .line 255
    const-string v8, "Unhandled field in Telecom:"

    .line 256
    .line 257
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-static {v1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v8

    .line 264
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .line 273
    .line 274
    goto/16 :goto_1

    .line 275
    .line 276
    :cond_7
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_0

    .line 280
    .line 281
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .line 285
    .line 286
    const-string v5, "Cannot process unsupported version "

    .line 287
    .line 288
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    goto/16 :goto_0

    .line 302
    .line 303
    :cond_9
    const-wide v2, 0x10500000001L

    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    .line 316
    .line 317
    const-string v5, "Processing context sync message version "

    .line 318
    .line 319
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/util/proto/ProtoParseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 330
    .line 331
    .line 332
    goto/16 :goto_0

    .line 333
    .line 334
    :cond_a
    return-object v0

    .line 335
    :goto_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 336
    .line 337
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 338
    .line 339
    .line 340
    throw p1
.end method

.method public final syncMessageToDevice(I[B)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->isAssociationBlockedLocal(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "CrossDeviceSyncController"

    .line 8
    .line 9
    const-string p1, "Cannot sync to requested device; connection is blocked"

    .line 10
    .line 11
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    filled-new-array {p1}, [I

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCompanionTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 20
    .line 21
    const v0, 0x63678883

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->sendMessage(I[B[I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
