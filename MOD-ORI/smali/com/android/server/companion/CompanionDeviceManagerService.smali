.class public final Lcom/android/server/companion/CompanionDeviceManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppOpsManager:Lcom/android/internal/app/IAppOpsService;

.field public final mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mAssociationStoreChangeListener:Lcom/android/server/companion/CompanionDeviceManagerService$1;

.field public final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

.field public final mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

.field public final mCrossDeviceSyncController:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

.field public final mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

.field public final mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

.field public final mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPackageMonitor:Lcom/android/server/companion/CompanionDeviceManagerService$2;

.field public final mPowerExemptionManager:Landroid/os/PowerExemptionManager;

.field public final mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

.field public final mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

.field public final mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;


# direct methods
.method public static -$$Nest$monPackageRemoveOrDataClearedInternal(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/association/AssociationStore;->getAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string v1, "Package removed or data cleared for user=["

    .line 14
    .line 15
    const-string v2, "], package=["

    .line 16
    .line 17
    const-string v3, "]. Cleaning up CDM data..."

    .line 18
    .line 19
    invoke-static {p1, v1, v2, p2, v3}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "CDM_CompanionDeviceManagerService"

    .line 24
    .line 25
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroid/companion/AssociationInfo;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {v2, v1}, Lcom/android/server/companion/association/DisassociationProcessor;->disassociate(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    .line 55
    .line 56
    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->getObservableUuidsForPackage(ILjava/lang/String;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_2

    .line 71
    .line 72
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lcom/android/server/companion/devicepresence/ObservableUuid;

    .line 77
    .line 78
    iget-object v2, v2, Lcom/android/server/companion/devicepresence/ObservableUuid;->mUuid:Landroid/os/ParcelUuid;

    .line 79
    .line 80
    invoke-virtual {v0, p1, v2, p2}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->removeObservableUuid(ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mCompanionServicesRegister:Lcom/android/server/companion/devicepresence/CompanionAppBinder$CompanionServicesRegister;

    .line 87
    .line 88
    monitor-enter p0

    .line 89
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/PerUser;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    .line 92
    monitor-exit p0

    .line 93
    return-void

    .line 94
    :catchall_0
    move-exception p1

    .line 95
    monitor-exit p0

    .line 96
    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 18

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/android/server/companion/CompanionDeviceManagerService$1;

    .line 9
    .line 10
    invoke-direct {v1, v6}, Lcom/android/server/companion/CompanionDeviceManagerService$1;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    .line 11
    .line 12
    .line 13
    iput-object v1, v6, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStoreChangeListener:Lcom/android/server/companion/CompanionDeviceManagerService$1;

    .line 14
    .line 15
    new-instance v1, Lcom/android/server/companion/CompanionDeviceManagerService$2;

    .line 16
    .line 17
    invoke-direct {v1, v6}, Lcom/android/server/companion/CompanionDeviceManagerService$2;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, v6, Lcom/android/server/companion/CompanionDeviceManagerService;->mPackageMonitor:Lcom/android/server/companion/CompanionDeviceManagerService$2;

    .line 21
    .line 22
    const-class v1, Landroid/app/ActivityManager;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/app/ActivityManager;

    .line 29
    .line 30
    const-class v2, Landroid/os/PowerExemptionManager;

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Landroid/os/PowerExemptionManager;

    .line 37
    .line 38
    iput-object v2, v6, Lcom/android/server/companion/CompanionDeviceManagerService;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    .line 39
    .line 40
    const-string v2, "appops"

    .line 41
    .line 42
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v2}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iput-object v2, v6, Lcom/android/server/companion/CompanionDeviceManagerService;->mAppOpsManager:Lcom/android/internal/app/IAppOpsService;

    .line 51
    .line 52
    const-class v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 53
    .line 54
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 59
    .line 60
    iput-object v2, v6, Lcom/android/server/companion/CompanionDeviceManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 61
    .line 62
    const-class v2, Landroid/app/ActivityManagerInternal;

    .line 63
    .line 64
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Landroid/app/ActivityManagerInternal;

    .line 69
    .line 70
    iput-object v2, v6, Lcom/android/server/companion/CompanionDeviceManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 71
    .line 72
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 73
    .line 74
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 79
    .line 80
    iput-object v2, v6, Lcom/android/server/companion/CompanionDeviceManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 81
    .line 82
    const-class v3, Landroid/os/UserManager;

    .line 83
    .line 84
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Landroid/os/UserManager;

    .line 89
    .line 90
    const-class v4, Landroid/os/PowerManagerInternal;

    .line 91
    .line 92
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    check-cast v4, Landroid/os/PowerManagerInternal;

    .line 97
    .line 98
    new-instance v11, Lcom/android/server/companion/association/AssociationDiskStore;

    .line 99
    .line 100
    invoke-direct {v11}, Lcom/android/server/companion/association/AssociationDiskStore;-><init>()V

    .line 101
    .line 102
    .line 103
    new-instance v5, Lcom/android/server/companion/association/AssociationStore;

    .line 104
    .line 105
    invoke-direct {v5, v0, v3, v11}, Lcom/android/server/companion/association/AssociationStore;-><init>(Landroid/content/Context;Landroid/os/UserManager;Lcom/android/server/companion/association/AssociationDiskStore;)V

    .line 106
    .line 107
    .line 108
    iput-object v5, v6, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 109
    .line 110
    new-instance v15, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 111
    .line 112
    invoke-direct {v15}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;-><init>()V

    .line 113
    .line 114
    .line 115
    iput-object v15, v6, Lcom/android/server/companion/CompanionDeviceManagerService;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 116
    .line 117
    new-instance v14, Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    .line 118
    .line 119
    invoke-direct {v14}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;-><init>()V

    .line 120
    .line 121
    .line 122
    iput-object v14, v6, Lcom/android/server/companion/CompanionDeviceManagerService;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    .line 123
    .line 124
    new-instance v13, Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 125
    .line 126
    invoke-direct {v13, v0, v2, v5}, Lcom/android/server/companion/association/AssociationRequestsProcessor;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/companion/association/AssociationStore;)V

    .line 127
    .line 128
    .line 129
    iput-object v13, v6, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 130
    .line 131
    new-instance v12, Lcom/android/server/companion/BackupRestoreProcessor;

    .line 132
    .line 133
    move-object v7, v12

    .line 134
    move-object/from16 v8, p1

    .line 135
    .line 136
    move-object v9, v2

    .line 137
    move-object v10, v5

    .line 138
    move-object/from16 v16, v2

    .line 139
    .line 140
    move-object v2, v12

    .line 141
    move-object v12, v15

    .line 142
    invoke-direct/range {v7 .. v13}, Lcom/android/server/companion/BackupRestoreProcessor;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/association/AssociationDiskStore;Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;Lcom/android/server/companion/association/AssociationRequestsProcessor;)V

    .line 143
    .line 144
    .line 145
    iput-object v2, v6, Lcom/android/server/companion/CompanionDeviceManagerService;->mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

    .line 146
    .line 147
    new-instance v2, Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    .line 148
    .line 149
    invoke-direct {v2, v0}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;-><init>(Landroid/content/Context;)V

    .line 150
    .line 151
    .line 152
    iput-object v2, v6, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    .line 153
    .line 154
    new-instance v13, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 155
    .line 156
    move-object v7, v13

    .line 157
    move-object v9, v2

    .line 158
    move-object v10, v3

    .line 159
    move-object v11, v5

    .line 160
    move-object v12, v14

    .line 161
    move-object v3, v13

    .line 162
    move-object v13, v4

    .line 163
    invoke-direct/range {v7 .. v13}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;-><init>(Landroid/content/Context;Lcom/android/server/companion/devicepresence/CompanionAppBinder;Landroid/os/UserManager;Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/devicepresence/ObservableUuidStore;Landroid/os/PowerManagerInternal;)V

    .line 164
    .line 165
    .line 166
    iput-object v3, v6, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 167
    .line 168
    new-instance v4, Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 169
    .line 170
    invoke-direct {v4, v0, v5}, Lcom/android/server/companion/transport/CompanionTransportManager;-><init>(Landroid/content/Context;Lcom/android/server/companion/association/AssociationStore;)V

    .line 171
    .line 172
    .line 173
    iput-object v4, v6, Lcom/android/server/companion/CompanionDeviceManagerService;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 174
    .line 175
    new-instance v14, Lcom/android/server/companion/association/DisassociationProcessor;

    .line 176
    .line 177
    move-object v7, v14

    .line 178
    move-object v9, v1

    .line 179
    move-object v10, v5

    .line 180
    move-object/from16 v11, v16

    .line 181
    .line 182
    move-object v12, v3

    .line 183
    move-object v13, v2

    .line 184
    move-object v0, v14

    .line 185
    move-object v14, v15

    .line 186
    move-object/from16 v17, v15

    .line 187
    .line 188
    move-object v15, v4

    .line 189
    invoke-direct/range {v7 .. v15}, Lcom/android/server/companion/association/DisassociationProcessor;-><init>(Landroid/content/Context;Landroid/app/ActivityManager;Lcom/android/server/companion/association/AssociationStore;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;Lcom/android/server/companion/devicepresence/CompanionAppBinder;Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;Lcom/android/server/companion/transport/CompanionTransportManager;)V

    .line 190
    .line 191
    .line 192
    iput-object v0, v6, Lcom/android/server/companion/CompanionDeviceManagerService;->mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

    .line 193
    .line 194
    new-instance v7, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 195
    .line 196
    move-object v0, v7

    .line 197
    move-object/from16 v1, p0

    .line 198
    .line 199
    move-object/from16 v2, v16

    .line 200
    .line 201
    move-object v3, v5

    .line 202
    move-object v8, v4

    .line 203
    move-object/from16 v4, v17

    .line 204
    .line 205
    move-object v5, v8

    .line 206
    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;Lcom/android/server/companion/transport/CompanionTransportManager;)V

    .line 207
    .line 208
    .line 209
    iput-object v7, v6, Lcom/android/server/companion/CompanionDeviceManagerService;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 210
    .line 211
    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 212
    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-direct {v0, v1, v8}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;-><init>(Landroid/content/Context;Lcom/android/server/companion/transport/CompanionTransportManager;)V

    .line 218
    .line 219
    .line 220
    iput-object v0, v6, Lcom/android/server/companion/CompanionDeviceManagerService;->mCrossDeviceSyncController:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 221
    .line 222
    return-void
.end method


# virtual methods
.method public final exemptFromAutoRevoke(ILjava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAppOpsManager:Lcom/android/internal/app/IAppOpsService;

    .line 2
    .line 3
    const/16 v0, 0x61

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-interface {p0, v0, p1, p2, v1}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v0, "Error while granting auto revoke exemption for "

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string p2, "CDM_CompanionDeviceManagerService"

    .line 26
    .line 27
    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x1f4

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne p1, v1, :cond_3

    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPackageMonitor:Lcom/android/server/companion/CompanionDeviceManagerService$2;

    .line 21
    .line 22
    invoke-virtual {v3, v0, p1, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const-string/jumbo p1, "bluetooth"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/bluetooth/BluetoothManager;

    .line 38
    .line 39
    const-string v1, "CDM_DevicePresenceProcessor"

    .line 40
    .line 41
    if-nez p1, :cond_0

    .line 42
    .line 43
    const-string p0, "BluetoothManager is not available."

    .line 44
    .line 45
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-nez p1, :cond_1

    .line 55
    .line 56
    const-string p0, "BluetoothAdapter is NOT available."

    .line 57
    .line 58
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    goto/16 :goto_0

    .line 62
    .line 63
    :cond_1
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBluetoothDeviceProcessor:Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    new-instance v2, Landroid/os/HandlerExecutor;

    .line 69
    .line 70
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->registerBluetoothConnectionCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;)Z

    .line 78
    .line 79
    .line 80
    iget-object v2, v1, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 81
    .line 82
    invoke-virtual {v2, v1}, Lcom/android/server/companion/association/AssociationStore;->registerLocalListener(Lcom/android/server/companion/association/AssociationStore$OnChangeListener;)V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBleDeviceProcessor:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

    .line 86
    .line 87
    iget-object v2, v1, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 88
    .line 89
    if-nez v2, :cond_2

    .line 90
    .line 91
    iput-object p1, v1, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->checkBleState()V

    .line 94
    .line 95
    .line 96
    new-instance p1, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$1;

    .line 97
    .line 98
    invoke-direct {p1, v1}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$1;-><init>(Lcom/android/server/companion/devicepresence/BleDeviceProcessor;)V

    .line 99
    .line 100
    .line 101
    new-instance v2, Landroid/content/IntentFilter;

    .line 102
    .line 103
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 107
    .line 108
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v3, "android.bluetooth.adapter.action.BLE_STATE_CHANGED"

    .line 112
    .line 113
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    .line 118
    .line 119
    iget-object p1, v1, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 120
    .line 121
    invoke-virtual {p1, v1}, Lcom/android/server/companion/association/AssociationStore;->registerLocalListener(Lcom/android/server/companion/association/AssociationStore$OnChangeListener;)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 125
    .line 126
    invoke-virtual {p1, p0}, Lcom/android/server/companion/association/AssociationStore;->registerLocalListener(Lcom/android/server/companion/association/AssociationStore$OnChangeListener;)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_0

    .line 130
    .line 131
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 132
    .line 133
    const-string p1, "BleDeviceProcessor is already initialized"

    .line 134
    .line 135
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p0

    .line 139
    :cond_3
    const/16 v0, 0x3e8

    .line 140
    .line 141
    if-ne p1, v0, :cond_5

    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    sget v0, Lcom/android/server/companion/association/InactiveAssociationsRemovalService;->$r8$clinit:I

    .line 148
    .line 149
    const-string v0, "CDM_InactiveAssociationsRemovalService"

    .line 150
    .line 151
    const-string v1, "Scheduling the Association Removal job"

    .line 152
    .line 153
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    const-class v0, Landroid/app/job/JobScheduler;

    .line 157
    .line 158
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Landroid/app/job/JobScheduler;

    .line 163
    .line 164
    const-string/jumbo v1, "companion"

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    .line 172
    .line 173
    new-instance v3, Landroid/content/ComponentName;

    .line 174
    .line 175
    const-class v4, Lcom/android/server/companion/association/InactiveAssociationsRemovalService;

    .line 176
    .line 177
    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .line 179
    .line 180
    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    sget-wide v1, Lcom/android/server/companion/association/InactiveAssociationsRemovalService;->ONE_DAY_INTERVAL:J

    .line 192
    .line 193
    invoke-virtual {p1, v1, v2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 202
    .line 203
    .line 204
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCrossDeviceSyncController:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 205
    .line 206
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled()Z

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    if-nez p1, :cond_4

    .line 214
    .line 215
    goto :goto_0

    .line 216
    :cond_4
    iget-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mPhoneAccountManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;

    .line 217
    .line 218
    iget-object p1, p1, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 219
    .line 220
    invoke-virtual {p1}, Landroid/telecom/TelecomManager;->clearPhoneAccounts()V

    .line 221
    .line 222
    .line 223
    iget-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mContext:Landroid/content/Context;

    .line 224
    .line 225
    const-class v0, Landroid/telecom/TelecomManager;

    .line 226
    .line 227
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    check-cast p1, Landroid/telecom/TelecomManager;

    .line 232
    .line 233
    if-eqz p1, :cond_5

    .line 234
    .line 235
    invoke-virtual {p1}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-eqz v0, :cond_5

    .line 244
    .line 245
    const-string/jumbo v0, "tel"

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1, v0}, Landroid/telecom/TelecomManager;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    if-eqz v0, :cond_5

    .line 253
    .line 254
    invoke-virtual {p1, v0}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    if-eqz p1, :cond_5

    .line 259
    .line 260
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    if-eqz v0, :cond_5

    .line 265
    .line 266
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCallFacilitators:Ljava/util/List;

    .line 267
    .line 268
    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    .line 269
    .line 270
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    const-string/jumbo v1, "system"

    .line 279
    .line 280
    .line 281
    invoke-direct {v0, p1, v1, v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    check-cast p0, Ljava/util/ArrayList;

    .line 285
    .line 286
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    :cond_5
    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda3;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/companion/association/AssociationStore;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStoreChangeListener:Lcom/android/server/companion/CompanionDeviceManagerService$1;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/android/server/companion/association/AssociationStore;->registerLocalListener(Lcom/android/server/companion/association/AssociationStore$OnChangeListener;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    .line 28
    .line 29
    iget-object v2, v1, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v2

    .line 32
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->readObservableUuidsFromCache(I)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    .line 39
    .line 40
    .line 41
    const-string/jumbo v1, "companiondevice"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    .line 50
    .line 51
    .line 52
    const-class p0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    .line 53
    .line 54
    invoke-static {p0, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    throw p0
.end method

.method public final onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onUserUnlocked() user="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "CDM_CompanionDeviceManagerService"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->sendDevicePresenceEventOnUnlocked(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    .line 1
    const-string v0, "CDM_CompanionDeviceManagerService"

    .line 2
    .line 3
    const-string/jumbo v1, "onUserUnlocking..."

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByUser(I)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateAtm(ILjava/util/List;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 43
    .line 44
    const-wide/16 v1, 0xa

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final updateAtm(ILjava/util/List;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/companion/AssociationInfo;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-wide/16 v3, 0x0

    .line 29
    .line 30
    invoke-virtual {v2, v1, v3, v4, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-ltz v1, :cond_0

    .line 35
    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 45
    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    check-cast p2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 49
    .line 50
    iget-object v1, p2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 53
    .line 54
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 55
    .line 56
    .line 57
    monitor-enter v1

    .line 58
    :try_start_0
    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 59
    .line 60
    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mCompanionAppUidsMap:Ljava/util/Map;

    .line 61
    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast p2, Landroid/util/ArrayMap;

    .line 67
    .line 68
    invoke-virtual {p2, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 79
    .line 80
    .line 81
    throw p0

    .line 82
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 83
    .line 84
    if-eqz p0, :cond_3

    .line 85
    .line 86
    new-instance p2, Landroid/util/ArraySet;

    .line 87
    .line 88
    invoke-direct {p2, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityManagerInternal;->setCompanionAppUids(ILjava/util/Set;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    return-void
.end method
