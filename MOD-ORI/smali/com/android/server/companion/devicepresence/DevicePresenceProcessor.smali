.class public final Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/companion/association/AssociationStore$OnChangeListener;


# instance fields
.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mBleDeviceDisappearedScheduler:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;

.field public final mBleDeviceProcessor:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

.field public final mBluetoothDeviceProcessor:Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;

.field public final mBtDisconnectedDevices:Ljava/util/Set;

.field public final mBtDisconnectedDevicesBlePresence:Landroid/util/SparseBooleanArray;

.field public final mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

.field public final mConnectedBtDevices:Ljava/util/Set;

.field public final mConnectedUuidDevices:Ljava/util/Set;

.field public final mContext:Landroid/content/Context;

.field public final mNearbyBleDevices:Ljava/util/Set;

.field public final mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

.field public final mPendingDevicePresenceEvents:Landroid/util/SparseArray;

.field public final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public final mReportedSelfManagedDevices:Ljava/util/Set;

.field public final mSchedulerHelper:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;

.field public final mSimulated:Ljava/util/Set;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/companion/devicepresence/CompanionAppBinder;Landroid/os/UserManager;Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/devicepresence/ObservableUuidStore;Landroid/os/PowerManagerInternal;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedBtDevices:Ljava/util/Set;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mNearbyBleDevices:Ljava/util/Set;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mReportedSelfManagedDevices:Ljava/util/Set;

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashSet;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedUuidDevices:Ljava/util/Set;

    .line 31
    .line 32
    new-instance v0, Ljava/util/HashSet;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    .line 38
    .line 39
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevicesBlePresence:Landroid/util/SparseBooleanArray;

    .line 45
    .line 46
    new-instance v0, Ljava/util/HashSet;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSimulated:Ljava/util/Set;

    .line 52
    .line 53
    new-instance v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    invoke-direct {v0, p0, v1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;-><init>(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;I)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSchedulerHelper:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;

    .line 60
    .line 61
    new-instance v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-direct {v0, p0, v1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;-><init>(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;I)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBleDeviceDisappearedScheduler:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;

    .line 68
    .line 69
    new-instance v0, Landroid/util/SparseArray;

    .line 70
    .line 71
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    .line 75
    .line 76
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    iput-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    .line 79
    .line 80
    iput-object p4, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 81
    .line 82
    iput-object p5, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    .line 83
    .line 84
    iput-object p3, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mUserManager:Landroid/os/UserManager;

    .line 85
    .line 86
    new-instance p1, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;

    .line 87
    .line 88
    invoke-direct {p1, p4, p5, p0}, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;-><init>(Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/devicepresence/ObservableUuidStore;Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;)V

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBluetoothDeviceProcessor:Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;

    .line 92
    .line 93
    new-instance p1, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

    .line 94
    .line 95
    invoke-direct {p1, p4, p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;-><init>(Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;)V

    .line 96
    .line 97
    .line 98
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBleDeviceProcessor:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

    .line 99
    .line 100
    iput-object p6, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 101
    .line 102
    return-void
.end method

.method public static enforceCallerShellOrRoot()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x7d0

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 13
    .line 14
    const-string v1, "Caller is neither Shell nor Root"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0

    .line 20
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final bindApplicationIfNeeded(ILjava/lang/String;Z)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v6, p1

    .line 4
    .line 5
    move-object/from16 v7, p2

    .line 6
    .line 7
    move/from16 v8, p3

    .line 8
    .line 9
    const/4 v9, 0x1

    .line 10
    iget-object v1, v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    .line 11
    .line 12
    invoke-virtual {v1, v6, v7}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->isCompanionApplicationBound(ILjava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_6

    .line 17
    .line 18
    iget-object v10, v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    .line 19
    .line 20
    new-instance v11, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    invoke-direct {v11, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const-string v0, "CDM_CompanionAppBinder"

    .line 29
    .line 30
    const-string v1, "Binding user=["

    .line 31
    .line 32
    const-string v2, "], package=["

    .line 33
    .line 34
    const-string v3, "], isSelfManaged=["

    .line 35
    .line 36
    invoke-static {v6, v1, v2, v7, v3}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, "]..."

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    iget-object v1, v10, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mCompanionServicesRegister:Lcom/android/server/companion/devicepresence/CompanionAppBinder$CompanionServicesRegister;

    .line 56
    .line 57
    monitor-enter v1

    .line 58
    :try_start_0
    invoke-virtual {v1, v6}, Lcom/android/server/companion/devicepresence/CompanionAppBinder$CompanionServicesRegister;->forUser(I)Ljava/util/Map;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-interface {v0, v7, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    move-object v12, v0

    .line 71
    check-cast v12, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 72
    .line 73
    monitor-exit v1

    .line 74
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    .line 80
    const-string v0, "CDM_CompanionAppBinder"

    .line 81
    .line 82
    const-string v1, "Can not bind companion applications u"

    .line 83
    .line 84
    const-string v2, "/"

    .line 85
    .line 86
    const-string v3, ": eligible CompanionDeviceService not found.\nA CompanionDeviceService should declare an intent-filter for \"android.companion.CompanionDeviceService\" action and require \"android.permission.BIND_COMPANION_DEVICE_SERVICE\" permission."

    .line 87
    .line 88
    invoke-static {v6, v1, v2, v7, v3}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    goto/16 :goto_7

    .line 96
    .line 97
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .line 101
    .line 102
    iget-object v14, v10, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    .line 103
    .line 104
    monitor-enter v14

    .line 105
    :try_start_1
    iget-object v0, v10, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    .line 106
    .line 107
    new-instance v1, Landroid/util/Pair;

    .line 108
    .line 109
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-direct {v1, v2, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    check-cast v0, Ljava/util/HashMap;

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_1

    .line 123
    .line 124
    const-string v0, "CDM_CompanionAppBinder"

    .line 125
    .line 126
    const-string v1, "The package is ALREADY bound."

    .line 127
    .line 128
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    monitor-exit v14

    .line 132
    goto/16 :goto_7

    .line 133
    .line 134
    :catchall_0
    move-exception v0

    .line 135
    goto/16 :goto_6

    .line 136
    .line 137
    :cond_1
    const/4 v5, 0x0

    .line 138
    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-ge v5, v0, :cond_4

    .line 143
    .line 144
    if-nez v5, :cond_2

    .line 145
    .line 146
    move/from16 v16, v9

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_2
    const/16 v16, 0x0

    .line 150
    .line 151
    :goto_1
    iget-object v4, v10, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mContext:Landroid/content/Context;

    .line 152
    .line 153
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    move-object v3, v0

    .line 158
    check-cast v3, Landroid/content/ComponentName;

    .line 159
    .line 160
    sget-object v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    .line 161
    .line 162
    if-eqz v8, :cond_3

    .line 163
    .line 164
    const/high16 v0, 0x10000000

    .line 165
    .line 166
    :goto_2
    move v2, v0

    .line 167
    goto :goto_3

    .line 168
    :cond_3
    const/high16 v0, 0x10000

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :goto_3
    new-instance v1, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;

    .line 172
    .line 173
    move-object v0, v1

    .line 174
    move-object v15, v1

    .line 175
    move/from16 v1, p1

    .line 176
    .line 177
    move/from16 v17, v5

    .line 178
    .line 179
    move/from16 v5, v16

    .line 180
    .line 181
    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;-><init>(IILandroid/content/ComponentName;Landroid/content/Context;Z)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    add-int/lit8 v5, v17, 0x1

    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_4
    iget-object v0, v10, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    .line 191
    .line 192
    new-instance v1, Landroid/util/Pair;

    .line 193
    .line 194
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-direct {v1, v2, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    check-cast v0, Ljava/util/HashMap;

    .line 202
    .line 203
    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-eqz v1, :cond_5

    .line 216
    .line 217
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    check-cast v1, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;

    .line 222
    .line 223
    invoke-virtual {v1, v11}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->setListener(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda0;)V

    .line 224
    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_5
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_7

    .line 236
    .line 237
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    check-cast v1, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;

    .line 242
    .line 243
    invoke-virtual {v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    .line 244
    .line 245
    .line 246
    goto :goto_5

    .line 247
    :goto_6
    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    throw v0

    .line 249
    :catchall_1
    move-exception v0

    .line 250
    monitor-exit v1

    .line 251
    throw v0

    .line 252
    :cond_6
    const-string v0, "CDM_DevicePresenceProcessor"

    .line 253
    .line 254
    const-string v1, "UserId=["

    .line 255
    .line 256
    const-string v2, "], packageName=["

    .line 257
    .line 258
    const-string v3, "] is already bound."

    .line 259
    .line 260
    invoke-static {v6, v1, v2, v7, v3}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    :cond_7
    :goto_7
    return-void
.end method

.method public final canStopBleScan()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociations()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/companion/AssociationInfo;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iget-object v3, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    .line 28
    .line 29
    monitor-enter v3

    .line 30
    :try_start_0
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedBtDevices:Ljava/util/Set;

    .line 37
    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v1, Ljava/util/HashSet;

    .line 43
    .line 44
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mNearbyBleDevices:Ljava/util/Set;

    .line 51
    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v1, Ljava/util/HashSet;

    .line 57
    .line 58
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_0

    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    .line 65
    .line 66
    check-cast v1, Ljava/util/HashSet;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    goto :goto_2

    .line 77
    :cond_0
    :goto_1
    const-string p0, "CDM_DevicePresenceProcessor"

    .line 78
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v1, "The BLE scan cannot be stopped, device( "

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, " ) is not yet connected OR the BLE is not current present Or is pending to report BLE lost"

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    monitor-exit v3

    .line 105
    const/4 p0, 0x0

    .line 106
    return p0

    .line 107
    :cond_1
    monitor-exit v3

    .line 108
    goto :goto_0

    .line 109
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    throw p0

    .line 111
    :cond_2
    const/4 p0, 0x1

    .line 112
    return p0
.end method

.method public final isDevicePresent(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mReportedSelfManagedDevices:Ljava/util/Set;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v0, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedBtDevices:Ljava/util/Set;

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v0, Ljava/util/HashSet;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mNearbyBleDevices:Ljava/util/Set;

    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v0, Ljava/util/HashSet;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSimulated:Ljava/util/Set;

    .line 44
    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p0, Ljava/util/HashSet;

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 p0, 0x0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 61
    :goto_1
    return p0
.end method

.method public final legacyNotifyDevicePresenceEvent(Landroid/companion/AssociationInfo;Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "legacyNotifyDevicePresenceEvent() association=["

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->toShortString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "], isAppeared=["

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, "]"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "CDM_DevicePresenceProcessor"

    .line 34
    .line 35
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    .line 47
    .line 48
    invoke-virtual {p0, v0, v2}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->getPrimaryServiceConnector(ILjava/lang/String;)Lcom/android/server/companion/devicepresence/CompanionServiceConnector;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    if-nez p0, :cond_0

    .line 53
    .line 54
    const-string p0, "Package is not bound."

    .line 55
    .line 56
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_0
    if-eqz p2, :cond_1

    .line 61
    .line 62
    new-instance p2, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda2;

    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    invoke-direct {p2, v0, p1}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda2;-><init>(ILandroid/companion/AssociationInfo;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p2}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    new-instance p2, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda2;

    .line 73
    .line 74
    const/4 v0, 0x1

    .line 75
    invoke-direct {p2, v0, p1}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda2;-><init>(ILandroid/companion/AssociationInfo;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p2}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 79
    .line 80
    .line 81
    :goto_0
    return-void
.end method

.method public final notifyDevicePresenceEvent(ILjava/lang/String;Landroid/companion/DevicePresenceEvent;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "notifyCompanionDevicePresenceEvent userId=["

    .line 2
    .line 3
    .line 4
    const-string v1, "], packageName=["

    .line 5
    .line 6
    const-string v2, "], event=["

    .line 7
    .line 8
    invoke-static {p1, v0, v1, p2, v2}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "]..."

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "CDM_DevicePresenceProcessor"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    .line 30
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->getPrimaryServiceConnector(ILjava/lang/String;)Lcom/android/server/companion/devicepresence/CompanionServiceConnector;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-nez p0, :cond_0

    .line 36
    .line 37
    const-string p0, "Package is NOT bound."

    .line 38
    .line 39
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    new-instance p1, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda2;

    .line 44
    .line 45
    invoke-direct {p1, p3}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda2;-><init>(Landroid/companion/DevicePresenceEvent;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final notifySelfManagedDevicePresenceEvent(IZ)V
    .locals 6

    .line 1
    const-string/jumbo v0, "notifySelfManagedDeviceAppeared() id="

    .line 2
    .line 3
    .line 4
    const-string v1, "CDM_DevicePresenceProcessor"

    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_2

    .line 20
    .line 21
    new-instance v3, Landroid/companion/AssociationInfo$Builder;

    .line 22
    .line 23
    invoke-direct {v3, v2}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    invoke-virtual {v3, v4, v5}, Landroid/companion/AssociationInfo$Builder;->setLastTimeConnected(J)Landroid/companion/AssociationInfo$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    .line 39
    .line 40
    .line 41
    if-eqz p2, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mReportedSelfManagedDevices:Ljava/util/Set;

    .line 44
    .line 45
    const/4 v3, 0x4

    .line 46
    invoke-virtual {p0, v0, p1, v3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;II)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mReportedSelfManagedDevices:Ljava/util/Set;

    .line 51
    .line 52
    const/4 v3, 0x5

    .line 53
    invoke-virtual {p0, v0, p1, v3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;II)V

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v0, "android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    const-string v0, "Enable hint mode for device device profile: "

    .line 69
    .line 70
    invoke-static {v0, p1, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 74
    .line 75
    const/16 p1, 0x12

    .line 76
    .line 77
    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 78
    .line 79
    .line 80
    :cond_1
    return-void

    .line 81
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 82
    .line 83
    const-string p2, "Association id=["

    .line 84
    .line 85
    const-string v0, "] is not self-managed."

    .line 86
    .line 87
    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p0
.end method

.method public final onAssociationRemoved(Landroid/companion/AssociationInfo;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedBtDevices:Ljava/util/Set;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mNearbyBleDevices:Ljava/util/Set;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v0, Ljava/util/HashSet;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mReportedSelfManagedDevices:Ljava/util/Set;

    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v0, Ljava/util/HashSet;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSimulated:Ljava/util/Set;

    .line 39
    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v0, Ljava/util/HashSet;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    .line 50
    .line 51
    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    .line 53
    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v1, Ljava/util/HashSet;

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevicesBlePresence:Landroid/util/SparseBooleanArray;

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 66
    .line 67
    .line 68
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p0
.end method

.method public final onBleCompanionDeviceFound(II)V
    .locals 3

    .line 1
    const-string v0, "CDM_DevicePresenceProcessor"

    .line 2
    .line 3
    const-string/jumbo v1, "onBleCompanionDeviceFound associationId( "

    .line 4
    .line 5
    .line 6
    const-string v2, " )"

    .line 7
    .line 8
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mUserManager:Landroid/os/UserManager;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDeviceLocked(IIILandroid/os/ParcelUuid;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mNearbyBleDevices:Ljava/util/Set;

    .line 26
    .line 27
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;II)V

    .line 28
    .line 29
    .line 30
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    .line 31
    .line 32
    monitor-enter p2

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevicesBlePresence:Landroid/util/SparseBooleanArray;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    .line 40
    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v1, Ljava/util/HashSet;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBleDeviceDisappearedScheduler:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->unScheduleDeviceDisappeared(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    monitor-exit p2

    .line 64
    return-void

    .line 65
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0
.end method

.method public final onBluetoothCompanionDeviceConnected(II)V
    .locals 5

    .line 1
    const-string/jumbo v0, "onBluetoothCompanionDeviceConnected: associationId( "

    .line 2
    .line 3
    .line 4
    const-string v1, "Device ( "

    .line 5
    .line 6
    const-string v2, "CDM_DevicePresenceProcessor"

    .line 7
    .line 8
    const-string/jumbo v3, "onBluetoothCompanionDeviceConnected: associationId( "

    .line 9
    .line 10
    .line 11
    const-string v4, " )"

    .line 12
    .line 13
    invoke-static {p1, v3, v4, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mUserManager:Landroid/os/UserManager;

    .line 17
    .line 18
    invoke-virtual {v2, p2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, p1, p2, v3, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDeviceLocked(IIILandroid/os/ParcelUuid;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    .line 31
    .line 32
    monitor-enter p2

    .line 33
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    .line 34
    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v2, Ljava/util/HashSet;

    .line 40
    .line 41
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    const-string v2, "CDM_DevicePresenceProcessor"

    .line 48
    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, " ) is reconnected within 10s."

    .line 58
    .line 59
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBleDeviceDisappearedScheduler:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;

    .line 70
    .line 71
    invoke-virtual {v1, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->unScheduleDeviceDisappeared(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    :goto_0
    const-string v1, "CDM_DevicePresenceProcessor"

    .line 78
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v0, " )"

    .line 88
    .line 89
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedBtDevices:Ljava/util/Set;

    .line 100
    .line 101
    invoke-virtual {p0, v0, p1, v3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;II)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->canStopBleScan()Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_2

    .line 109
    .line 110
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBleDeviceProcessor:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->stopScanIfNeeded()V

    .line 113
    .line 114
    .line 115
    :cond_2
    monitor-exit p2

    .line 116
    return-void

    .line 117
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    throw p0
.end method

.method public final onBluetoothCompanionDeviceDisconnected(II)V
    .locals 3

    .line 1
    const-string v0, "CDM_DevicePresenceProcessor"

    .line 2
    .line 3
    const-string/jumbo v1, "onBluetoothCompanionDeviceDisconnected associationId( "

    .line 4
    .line 5
    .line 6
    const-string v2, " )"

    .line 7
    .line 8
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mUserManager:Landroid/os/UserManager;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x3

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDeviceLocked(IIILandroid/os/ParcelUuid;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBleDeviceProcessor:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->startScan()V

    .line 28
    .line 29
    .line 30
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedBtDevices:Ljava/util/Set;

    .line 31
    .line 32
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;II)V

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mNearbyBleDevices:Ljava/util/Set;

    .line 36
    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast p2, Ljava/util/HashSet;

    .line 42
    .line 43
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    .line 50
    .line 51
    monitor-enter p2

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    .line 53
    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v0, Ljava/util/HashSet;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBleDeviceDisappearedScheduler:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-eqz p2, :cond_1

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 73
    .line 74
    .line 75
    :cond_1
    const-string/jumbo p2, "scheduleBleDeviceDisappeared for Device: ( "

    .line 76
    .line 77
    .line 78
    const-string v0, " )."

    .line 79
    .line 80
    const-string v1, "CDM_DevicePresenceProcessor"

    .line 81
    .line 82
    invoke-static {p1, p2, v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-wide/16 v0, 0x2710

    .line 86
    .line 87
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    throw p0

    .line 94
    :cond_2
    :goto_0
    return-void
.end method

.method public final onDeviceLocked(IIILandroid/os/ParcelUuid;)V
    .locals 2

    .line 1
    if-eqz p3, :cond_4

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p3, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p3, v0, :cond_4

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p3, v0, :cond_0

    .line 11
    .line 12
    const-string p0, "CDM_DevicePresenceProcessor"

    .line 13
    .line 14
    const-string p1, "Event: "

    .line 15
    .line 16
    const-string/jumbo p2, "is not supported"

    .line 17
    .line 18
    .line 19
    invoke-static {p3, p1, p2, p0}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_4

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Ljava/util/List;

    .line 33
    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    new-instance p2, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda1;

    .line 37
    .line 38
    const/4 p3, 0x1

    .line 39
    invoke-direct {p2, p4, p1, p3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda1;-><init>(Landroid/os/ParcelUuid;II)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p0, p2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    monitor-exit v0

    .line 49
    goto :goto_4

    .line 50
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    .line 53
    .line 54
    monitor-enter v0

    .line 55
    :try_start_1
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    .line 56
    .line 57
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Ljava/util/List;

    .line 62
    .line 63
    if-eqz p0, :cond_3

    .line 64
    .line 65
    new-instance p2, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda1;

    .line 66
    .line 67
    const/4 p3, 0x0

    .line 68
    invoke-direct {p2, p4, p1, p3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda1;-><init>(Landroid/os/ParcelUuid;II)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p0, p2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :catchall_1
    move-exception p0

    .line 76
    goto :goto_3

    .line 77
    :cond_3
    :goto_2
    monitor-exit v0

    .line 78
    goto :goto_4

    .line 79
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    throw p0

    .line 81
    :cond_4
    const-string v0, "CDM_DevicePresenceProcessor"

    .line 82
    .line 83
    const-string v1, "Current user is not in unlocking or unlocked stage yet. Notify the application when the phone is unlocked"

    .line 84
    .line 85
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    .line 89
    .line 90
    monitor-enter v0

    .line 91
    :try_start_2
    new-instance v1, Landroid/companion/DevicePresenceEvent;

    .line 92
    .line 93
    invoke-direct {v1, p1, p3, p4}, Landroid/companion/DevicePresenceEvent;-><init>(IILandroid/os/ParcelUuid;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    .line 97
    .line 98
    new-instance p3, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Ljava/util/List;

    .line 108
    .line 109
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    .line 113
    .line 114
    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    monitor-exit v0

    .line 118
    :goto_4
    return-void

    .line 119
    :catchall_2
    move-exception p0

    .line 120
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 121
    throw p0
.end method

.method public final onDevicePresenceEvent(Ljava/util/Set;II)V
    .locals 10

    .line 1
    const-string v0, " ) is present, do not need to send the callback with event ( 0 )."

    .line 2
    .line 3
    const-string v1, "Device ( "

    .line 4
    .line 5
    const-string v2, "CDM_DevicePresenceProcessor"

    .line 6
    .line 7
    const-string/jumbo v3, "onDevicePresenceEvent() id=["

    .line 8
    .line 9
    .line 10
    const-string v4, "], event=["

    .line 11
    .line 12
    const-string v5, "]..."

    .line 13
    .line 14
    invoke-static {p2, p3, v3, v4, v5}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 22
    .line 23
    invoke-virtual {v2, p2}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    const-string p0, "CDM_DevicePresenceProcessor"

    .line 30
    .line 31
    const-string p1, "Association doesn\'t exist."

    .line 32
    .line 33
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    new-instance v5, Landroid/companion/DevicePresenceEvent;

    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    invoke-direct {v5, p2, p3, v6}, Landroid/companion/DevicePresenceEvent;-><init>(IILandroid/os/ParcelUuid;)V

    .line 49
    .line 50
    .line 51
    const/4 v6, 0x1

    .line 52
    if-nez p3, :cond_2

    .line 53
    .line 54
    iget-object v7, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    .line 55
    .line 56
    monitor-enter v7

    .line 57
    :try_start_0
    iget-object v8, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    .line 58
    .line 59
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    check-cast v8, Ljava/util/HashSet;

    .line 64
    .line 65
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    if-eqz v8, :cond_1

    .line 70
    .line 71
    const-string v8, "CDM_DevicePresenceProcessor"

    .line 72
    .line 73
    new-instance v9, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevicesBlePresence:Landroid/util/SparseBooleanArray;

    .line 92
    .line 93
    invoke-virtual {v0, p2, v6}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    goto :goto_1

    .line 99
    :cond_1
    :goto_0
    monitor-exit v7

    .line 100
    goto :goto_2

    .line 101
    :goto_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    throw p0

    .line 103
    :cond_2
    :goto_2
    if-eqz p3, :cond_8

    .line 104
    .line 105
    if-eq p3, v6, :cond_3

    .line 106
    .line 107
    const/4 v0, 0x2

    .line 108
    if-eq p3, v0, :cond_8

    .line 109
    .line 110
    const/4 v0, 0x3

    .line 111
    if-eq p3, v0, :cond_3

    .line 112
    .line 113
    const/4 v0, 0x4

    .line 114
    if-eq p3, v0, :cond_8

    .line 115
    .line 116
    const/4 v0, 0x5

    .line 117
    if-eq p3, v0, :cond_3

    .line 118
    .line 119
    const-string p0, "CDM_DevicePresenceProcessor"

    .line 120
    .line 121
    const-string p1, "Event: "

    .line 122
    .line 123
    const-string p2, " is not supported."

    .line 124
    .line 125
    invoke-static {p3, p1, p2, p0}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-nez p1, :cond_4

    .line 138
    .line 139
    const-string p2, "CDM_DevicePresenceProcessor"

    .line 140
    .line 141
    const-string p3, "The association is already NOT present."

    .line 142
    .line 143
    invoke-static {p2, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    :cond_4
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    .line 147
    .line 148
    invoke-virtual {p2, v3, v4}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->isCompanionApplicationBound(ILjava/lang/String;)Z

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    if-nez p2, :cond_5

    .line 153
    .line 154
    const-string p0, "CDM_DevicePresenceProcessor"

    .line 155
    .line 156
    const-string p1, "Package is not bound"

    .line 157
    .line 158
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :cond_5
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    .line 163
    .line 164
    .line 165
    move-result p2

    .line 166
    if-nez p2, :cond_6

    .line 167
    .line 168
    if-eqz p1, :cond_7

    .line 169
    .line 170
    :cond_6
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->notifyDevicePresenceEvent(ILjava/lang/String;Landroid/companion/DevicePresenceEvent;)V

    .line 171
    .line 172
    .line 173
    const/4 p1, 0x0

    .line 174
    invoke-virtual {p0, v2, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->legacyNotifyDevicePresenceEvent(Landroid/companion/AssociationInfo;Z)V

    .line 175
    .line 176
    .line 177
    :cond_7
    invoke-virtual {p0, v3, v4}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->shouldBindPackage(ILjava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-nez p1, :cond_b

    .line 182
    .line 183
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    .line 184
    .line 185
    invoke-virtual {p0, v3, v4}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->unbindCompanionApp(ILjava/lang/String;)V

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    if-nez p1, :cond_9

    .line 198
    .line 199
    const-string p2, "CDM_DevicePresenceProcessor"

    .line 200
    .line 201
    const-string p3, "The association is already present."

    .line 202
    .line 203
    invoke-static {p2, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    :cond_9
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->shouldBindWhenPresent()Z

    .line 207
    .line 208
    .line 209
    move-result p2

    .line 210
    if-eqz p2, :cond_b

    .line 211
    .line 212
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    .line 213
    .line 214
    .line 215
    move-result p2

    .line 216
    invoke-virtual {p0, v3, v4, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->bindApplicationIfNeeded(ILjava/lang/String;Z)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    .line 220
    .line 221
    .line 222
    move-result p2

    .line 223
    if-nez p2, :cond_a

    .line 224
    .line 225
    if-eqz p1, :cond_b

    .line 226
    .line 227
    :cond_a
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->notifyDevicePresenceEvent(ILjava/lang/String;Landroid/companion/DevicePresenceEvent;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, v2, v6}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->legacyNotifyDevicePresenceEvent(Landroid/companion/AssociationInfo;Z)V

    .line 231
    .line 232
    .line 233
    :cond_b
    :goto_3
    return-void
.end method

.method public final onDevicePresenceEventByUuid(Lcom/android/server/companion/devicepresence/ObservableUuid;I)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onDevicePresenceEventByUuid ObservableUuid=["

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
    const-string v1, "], event=["

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "]..."

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "CDM_DevicePresenceProcessor"

    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget-object v0, p1, Lcom/android/server/companion/devicepresence/ObservableUuid;->mUuid:Landroid/os/ParcelUuid;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mUserManager:Landroid/os/UserManager;

    .line 37
    .line 38
    iget v3, p1, Lcom/android/server/companion/devicepresence/ObservableUuid;->mUserId:I

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/4 v4, -0x1

    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    invoke-virtual {p0, v4, v3, p2, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDeviceLocked(IIILandroid/os/ParcelUuid;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    new-instance v2, Landroid/companion/DevicePresenceEvent;

    .line 52
    .line 53
    invoke-direct {v2, v4, p2, v0}, Landroid/companion/DevicePresenceEvent;-><init>(IILandroid/os/ParcelUuid;)V

    .line 54
    .line 55
    .line 56
    const/4 v4, 0x2

    .line 57
    iget-object p1, p1, Lcom/android/server/companion/devicepresence/ObservableUuid;->mPackageName:Ljava/lang/String;

    .line 58
    .line 59
    if-eq p2, v4, :cond_4

    .line 60
    .line 61
    const/4 v4, 0x3

    .line 62
    if-eq p2, v4, :cond_1

    .line 63
    .line 64
    const-string p0, "Event: "

    .line 65
    .line 66
    const-string p1, " is not supported"

    .line 67
    .line 68
    invoke-static {p2, p0, p1, v1}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedUuidDevices:Ljava/util/Set;

    .line 73
    .line 74
    check-cast p2, Ljava/util/HashSet;

    .line 75
    .line 76
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-nez p2, :cond_2

    .line 81
    .line 82
    const-string p0, "This device is already disconnected."

    .line 83
    .line 84
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_2
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    .line 89
    .line 90
    invoke-virtual {p2, v3, p1}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->isCompanionApplicationBound(ILjava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_3

    .line 95
    .line 96
    const-string p0, "Package is not bound."

    .line 97
    .line 98
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_3
    invoke-virtual {p0, v3, p1, v2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->notifyDevicePresenceEvent(ILjava/lang/String;Landroid/companion/DevicePresenceEvent;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v3, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->shouldBindPackage(ILjava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    if-nez p0, :cond_6

    .line 110
    .line 111
    invoke-virtual {p2, v3, p1}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->unbindCompanionApp(ILjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_4
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedUuidDevices:Ljava/util/Set;

    .line 116
    .line 117
    check-cast p2, Ljava/util/HashSet;

    .line 118
    .line 119
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    if-nez p2, :cond_5

    .line 124
    .line 125
    const-string p2, "This device is already connected."

    .line 126
    .line 127
    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    :cond_5
    const/4 p2, 0x0

    .line 131
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->bindApplicationIfNeeded(ILjava/lang/String;Z)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v3, p1, v2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->notifyDevicePresenceEvent(ILjava/lang/String;Landroid/companion/DevicePresenceEvent;)V

    .line 135
    .line 136
    .line 137
    :cond_6
    :goto_0
    return-void
.end method

.method public final sendDevicePresenceEventOnUnlocked(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    .line 5
    .line 6
    new-instance v2, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/util/List;

    .line 16
    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 18
    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    .line 26
    .line 27
    iget-object v2, v0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v2

    .line 30
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->readObservableUuidsFromCache(I)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_7

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Landroid/companion/DevicePresenceEvent;

    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/companion/DevicePresenceEvent;->getUuid()Landroid/os/ParcelUuid;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    const/4 v4, 0x2

    .line 56
    if-eqz v3, :cond_3

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_1

    .line 67
    .line 68
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    check-cast v5, Lcom/android/server/companion/devicepresence/ObservableUuid;

    .line 73
    .line 74
    iget-object v6, v5, Lcom/android/server/companion/devicepresence/ObservableUuid;->mUuid:Landroid/os/ParcelUuid;

    .line 75
    .line 76
    invoke-virtual {v2}, Landroid/companion/DevicePresenceEvent;->getUuid()Landroid/os/ParcelUuid;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    invoke-virtual {v6, v7}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-eqz v6, :cond_2

    .line 85
    .line 86
    invoke-virtual {p0, v5, v4}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEventByUuid(Lcom/android/server/companion/devicepresence/ObservableUuid;I)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    invoke-virtual {v2}, Landroid/companion/DevicePresenceEvent;->getEvent()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    invoke-virtual {v2}, Landroid/companion/DevicePresenceEvent;->getAssociationId()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    iget-object v5, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 99
    .line 100
    invoke-virtual {v5, v2}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    if-nez v2, :cond_4

    .line 105
    .line 106
    return-void

    .line 107
    :cond_4
    if-eqz v3, :cond_6

    .line 108
    .line 109
    if-eq v3, v4, :cond_5

    .line 110
    .line 111
    const-string v2, "CDM_DevicePresenceProcessor"

    .line 112
    .line 113
    const-string v4, "Event: "

    .line 114
    .line 115
    const-string/jumbo v5, "is not supported"

    .line 116
    .line 117
    .line 118
    invoke-static {v3, v4, v5, v2}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_5
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getId()I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    invoke-virtual {p0, v3, v2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onBluetoothCompanionDeviceConnected(II)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_6
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getId()I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    invoke-virtual {p0, v3, v2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onBleCompanionDeviceFound(II)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_7
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    .line 147
    .line 148
    monitor-enter v0

    .line 149
    :try_start_2
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    .line 150
    .line 151
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_8

    .line 156
    .line 157
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    .line 158
    .line 159
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :catchall_0
    move-exception p0

    .line 164
    goto :goto_3

    .line 165
    :cond_8
    :goto_2
    monitor-exit v0

    .line 166
    return-void

    .line 167
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    throw p0

    .line 169
    :catchall_1
    move-exception p0

    .line 170
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 171
    throw p0

    .line 172
    :catchall_2
    move-exception p0

    .line 173
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 174
    throw p0
.end method

.method public final shouldBindPackage(ILjava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    .line 8
    .line 9
    invoke-virtual {v1, p1, p2}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->getObservableUuidsForPackage(ILjava/lang/String;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/companion/AssociationInfo;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->shouldBindWhenPresent()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->isDevicePresent(I)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    return v1

    .line 48
    :cond_2
    check-cast p1, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-eqz p2, :cond_4

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    check-cast p2, Lcom/android/server/companion/devicepresence/ObservableUuid;

    .line 65
    .line 66
    iget-object p2, p2, Lcom/android/server/companion/devicepresence/ObservableUuid;->mUuid:Landroid/os/ParcelUuid;

    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedUuidDevices:Ljava/util/Set;

    .line 69
    .line 70
    check-cast v0, Ljava/util/HashSet;

    .line 71
    .line 72
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_3

    .line 77
    .line 78
    return v1

    .line 79
    :cond_4
    const/4 p0, 0x0

    .line 80
    return p0
.end method

.method public final simulateDeviceEvent(II)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->enforceCallerShellOrRoot()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_5

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSchedulerHelper:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;

    .line 17
    .line 18
    if-eqz p2, :cond_3

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    if-eq p2, v2, :cond_2

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    if-eq p2, v1, :cond_1

    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    if-ne p2, v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onBluetoothCompanionDeviceDisconnected(II)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    const-string p1, "Event: "

    .line 40
    .line 41
    const-string/jumbo v0, "is not supported"

    .line 42
    .line 43
    .line 44
    invoke-static {p2, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :cond_1
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onBluetoothCompanionDeviceConnected(II)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSimulated:Ljava/util/Set;

    .line 64
    .line 65
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;II)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSimulated:Ljava/util/Set;

    .line 70
    .line 71
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;II)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-eqz p0, :cond_4

    .line 79
    .line 80
    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 81
    .line 82
    .line 83
    :cond_4
    const-wide/32 v2, 0xea60

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 87
    .line 88
    .line 89
    :goto_0
    return-void

    .line 90
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 91
    .line 92
    const-string p2, "Association with id "

    .line 93
    .line 94
    const-string v0, " does not exist."

    .line 95
    .line 96
    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p0
.end method

.method public final startObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;IZ)V
    .locals 3

    .line 1
    const-string v0, "CDM_DevicePresenceProcessor"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Start observing request=["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "] for userId=["

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, "], package=["

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, "]..."

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/companion/ObservingDevicePresenceRequest;->getUuid()Landroid/os/ParcelUuid;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    if-eqz p4, :cond_0

    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-static {p1, p2, p3}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerCanObserveDevicePresenceByUuid(Landroid/content/Context;Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    .line 55
    .line 56
    invoke-virtual {p1, p3, v0, p2}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->isUuidBeingObserved(ILandroid/os/ParcelUuid;Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    const-string p0, "CDM_DevicePresenceProcessor"

    .line 63
    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string p4, "UUID=["

    .line 67
    .line 68
    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p4, "], package=["

    .line 75
    .line 76
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p2, "], userId=["

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string p2, "] is already being observed."

    .line 88
    .line 89
    invoke-static {p1, p3, p2, p0}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_1
    new-instance p1, Lcom/android/server/companion/devicepresence/ObservableUuid;

    .line 94
    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 96
    .line 97
    .line 98
    move-result-wide v1

    .line 99
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object p4

    .line 103
    invoke-direct {p1, p3, v0, p2, p4}, Lcom/android/server/companion/devicepresence/ObservableUuid;-><init>(ILandroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/Long;)V

    .line 104
    .line 105
    .line 106
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    const-string p2, "CDM_ObservableUuidStore"

    .line 112
    .line 113
    new-instance p4, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v1, "Writing uuid=["

    .line 116
    .line 117
    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v0, "] to store..."

    .line 124
    .line 125
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p4

    .line 132
    invoke-static {p2, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mLock:Ljava/lang/Object;

    .line 136
    .line 137
    monitor-enter p2

    .line 138
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->readObservableUuidsFromCache(I)Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object p4

    .line 142
    new-instance v0, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda4;

    .line 143
    .line 144
    invoke-direct {v0, p1}, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/companion/devicepresence/ObservableUuid;)V

    .line 145
    .line 146
    .line 147
    invoke-interface {p4, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 148
    .line 149
    .line 150
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mCachedPerUser:Landroid/util/SparseArray;

    .line 154
    .line 155
    invoke-virtual {p1, p3, p4}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    iget-object p1, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 160
    .line 161
    new-instance p2, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda2;

    .line 162
    .line 163
    const/4 v0, 0x1

    .line 164
    invoke-direct {p2, p0, p3, p4, v0}, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/devicepresence/ObservableUuidStore;ILjava/util/List;I)V

    .line 165
    .line 166
    .line 167
    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :catchall_0
    move-exception p0

    .line 173
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    throw p0

    .line 175
    :cond_2
    invoke-virtual {p1}, Landroid/companion/ObservingDevicePresenceRequest;->getAssociationId()I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 180
    .line 181
    invoke-virtual {p2, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    .line 186
    .line 187
    .line 188
    move-result p3

    .line 189
    if-eqz p3, :cond_3

    .line 190
    .line 191
    const-string p0, "CDM_DevicePresenceProcessor"

    .line 192
    .line 193
    new-instance p1, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const-string p3, "Associated device id=["

    .line 196
    .line 197
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getId()I

    .line 201
    .line 202
    .line 203
    move-result p2

    .line 204
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string p2, "] is already being observed. No-op."

    .line 208
    .line 209
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    return-void

    .line 220
    :cond_3
    new-instance p3, Landroid/companion/AssociationInfo$Builder;

    .line 221
    .line 222
    invoke-direct {p3, p2}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    .line 223
    .line 224
    .line 225
    const/4 p2, 0x1

    .line 226
    invoke-virtual {p3, p2}, Landroid/companion/AssociationInfo$Builder;->setNotifyOnDeviceNearby(Z)Landroid/companion/AssociationInfo$Builder;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    invoke-virtual {p2}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    iget-object p3, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 235
    .line 236
    invoke-virtual {p3, p2}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->isDevicePresent(I)Z

    .line 240
    .line 241
    .line 242
    move-result p2

    .line 243
    if-eqz p2, :cond_6

    .line 244
    .line 245
    const-string p2, "CDM_DevicePresenceProcessor"

    .line 246
    .line 247
    const-string p3, "Device is already present. Triggering callback."

    .line 248
    .line 249
    invoke-static {p2, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mNearbyBleDevices:Ljava/util/Set;

    .line 253
    .line 254
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 255
    .line 256
    .line 257
    move-result-object p3

    .line 258
    check-cast p2, Ljava/util/HashSet;

    .line 259
    .line 260
    invoke-virtual {p2, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result p2

    .line 264
    const/4 p3, 0x0

    .line 265
    if-eqz p2, :cond_4

    .line 266
    .line 267
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mNearbyBleDevices:Ljava/util/Set;

    .line 268
    .line 269
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;II)V

    .line 270
    .line 271
    .line 272
    goto :goto_0

    .line 273
    :cond_4
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedBtDevices:Ljava/util/Set;

    .line 274
    .line 275
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 276
    .line 277
    .line 278
    move-result-object p4

    .line 279
    check-cast p2, Ljava/util/HashSet;

    .line 280
    .line 281
    invoke-virtual {p2, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result p2

    .line 285
    if-eqz p2, :cond_5

    .line 286
    .line 287
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedBtDevices:Ljava/util/Set;

    .line 288
    .line 289
    const/4 p3, 0x2

    .line 290
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;II)V

    .line 291
    .line 292
    .line 293
    goto :goto_0

    .line 294
    :cond_5
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSimulated:Ljava/util/Set;

    .line 295
    .line 296
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 297
    .line 298
    .line 299
    move-result-object p4

    .line 300
    check-cast p2, Ljava/util/HashSet;

    .line 301
    .line 302
    invoke-virtual {p2, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result p2

    .line 306
    if-eqz p2, :cond_6

    .line 307
    .line 308
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSimulated:Ljava/util/Set;

    .line 309
    .line 310
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;II)V

    .line 311
    .line 312
    .line 313
    :cond_6
    :goto_0
    const-string p0, "CDM_DevicePresenceProcessor"

    .line 314
    .line 315
    const-string p1, "Registered device presence listener."

    .line 316
    .line 317
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .line 319
    .line 320
    return-void
.end method

.method public final stopObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;IZ)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Stop observing request=["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "] for userId=["

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "], package=["

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, "]..."

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v2, "CDM_DevicePresenceProcessor"

    .line 37
    .line 38
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/companion/ObservingDevicePresenceRequest;->getUuid()Landroid/os/ParcelUuid;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    if-eqz p4, :cond_0

    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-static {p1, p2, p3}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerCanObserveDevicePresenceByUuid(Landroid/content/Context;Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    .line 55
    .line 56
    invoke-virtual {p1, p3, v0, p2}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->isUuidBeingObserved(ILandroid/os/ParcelUuid;Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result p4

    .line 60
    if-nez p4, :cond_1

    .line 61
    .line 62
    new-instance p0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string p1, "UUID=["

    .line 65
    .line 66
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p1, "], userId=["

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string p1, "] is already not being observed."

    .line 84
    .line 85
    invoke-static {p0, p3, p1, v2}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_1
    invoke-virtual {p1, p3, v0, p2}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->removeObservableUuid(ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedUuidDevices:Ljava/util/Set;

    .line 93
    .line 94
    check-cast p1, Ljava/util/HashSet;

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p1}, Landroid/companion/ObservingDevicePresenceRequest;->getAssociationId()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    iget-object p4, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 105
    .line 106
    invoke-virtual {p4, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_3

    .line 115
    .line 116
    new-instance p0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string p2, "Associated device id=["

    .line 119
    .line 120
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string p1, "] is already not being observed. No-op."

    .line 131
    .line 132
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_3
    new-instance v0, Landroid/companion/AssociationInfo$Builder;

    .line 144
    .line 145
    invoke-direct {v0, p1}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    .line 146
    .line 147
    .line 148
    const/4 p1, 0x0

    .line 149
    invoke-virtual {v0, p1}, Landroid/companion/AssociationInfo$Builder;->setNotifyOnDeviceNearby(Z)Landroid/companion/AssociationInfo$Builder;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p1}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p4, p1}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    .line 158
    .line 159
    .line 160
    :goto_0
    const-string p1, "Unregistered device presence listener."

    .line 161
    .line 162
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, p3, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->shouldBindPackage(ILjava/lang/String;)Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-nez p1, :cond_4

    .line 170
    .line 171
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    .line 172
    .line 173
    invoke-virtual {p0, p3, p2}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->unbindCompanionApp(ILjava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :cond_4
    return-void
.end method
