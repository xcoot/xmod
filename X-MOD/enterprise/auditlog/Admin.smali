.class public final Lcom/android/server/enterprise/auditlog/Admin;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAdminOutputFile:Landroid/os/ParcelFileDescriptor;

.field public mAuditLogRulesInfo:Lcom/samsung/android/knox/log/AuditLogRulesInfo;

.field public mBegin:J

.field public final mContext:Landroid/content/Context;

.field public mDeviceInfo:Ljava/util/List;

.field public mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mEnd:J

.field public volatile mIsDumping:Z

.field public final mIsProfileOwnerOfOrganizationOwnedDevice:Z

.field public final mIsPseudoAdminOfOrganizationOwnedDevice:Z

.field public final mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

.field public final mPackageName:Ljava/lang/String;

.field public final mUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5

    .line 1
    const-string/jumbo v0, "mIsProfileOwnerOfOrganizationOwnedDevice = "

    .line 4
    const-string/jumbo v1, "mIsPseudoAdminOfOrganizationOwnedDevice = "

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v2, 0x0

    .line 11
    iput-object v2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    .line 13
    new-instance v3, Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    .line 15
    invoke-direct {v3}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;-><init>()V

    .line 18
    iput-object v3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mAuditLogRulesInfo:Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    .line 20
    iput-object p2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    .line 22
    new-instance v3, Lcom/android/server/enterprise/auditlog/LogWritter;

    .line 24
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v4, Lcom/android/server/enterprise/auditlog/CircularBuffer;

    .line 29
    invoke-direct {v4, p1, p2, p3}, Lcom/android/server/enterprise/auditlog/CircularBuffer;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 32
    iput-object v4, v3, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    .line 34
    new-instance p2, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    .line 36
    invoke-direct {p2, v3}, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;-><init>(Lcom/android/server/enterprise/auditlog/LogWritter;)V

    .line 39
    iput-object p2, v3, Lcom/android/server/enterprise/auditlog/LogWritter;->mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    .line 41
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 44
    iput-object v3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    .line 46
    new-instance p2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 48
    invoke-direct {p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 53
    iput-object p0, v3, Lcom/android/server/enterprise/auditlog/LogWritter;->mObserver:Lcom/android/server/enterprise/auditlog/Admin;

    .line 55
    const/4 v3, 0x0

    .line 56
    iput-boolean v3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    .line 58
    iput-object v2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    .line 60
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mContext:Landroid/content/Context;

    .line 62
    const-wide/16 v2, 0x0

    .line 64
    iput-wide v2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mBegin:J

    .line 66
    iput-wide v2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mEnd:J

    .line 68
    iput p3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mUid:I

    .line 70
    const-string p1, "Admin uid = "

    .line 72
    const-string v2, "Admin"

    .line 74
    invoke-static {p3, p1, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 77
    :try_start_0
    invoke-virtual {p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->checkPseudoAdminForUid(I)Z

    .line 80
    move-result p1

    .line 81
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsPseudoAdminOfOrganizationOwnedDevice:Z

    .line 83
    new-instance p2, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object p1

    .line 95
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_0

    .line 99
    :catch_0
    move-exception p1

    .line 100
    new-instance p2, Ljava/lang/StringBuilder;

    .line 102
    const-string/jumbo v1, "mEdmStorageProvider.checkPseudoAdminForUid: error "

    .line 105
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Landroid/util/AndroidException;->getMessage()Ljava/lang/String;

    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    const-string/jumbo p1, "device_policy"

    .line 125
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 128
    move-result-object p1

    .line 129
    invoke-static {p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    .line 132
    move-result-object p1

    .line 133
    if-eqz p1, :cond_0

    .line 135
    :try_start_1
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 138
    move-result p2

    .line 139
    invoke-interface {p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isProfileOwnerOfOrganizationOwnedDeviceMDM(I)Z

    .line 142
    move-result p1

    .line 143
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsProfileOwnerOfOrganizationOwnedDevice:Z

    .line 145
    new-instance p0, Ljava/lang/StringBuilder;

    .line 147
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    move-result-object p0

    .line 157
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    goto :goto_1

    .line 161
    :catch_1
    move-exception p0

    .line 162
    new-instance p1, Ljava/lang/StringBuilder;

    .line 164
    const-string p2, "Error on calling isProfileOwnerOfOrganizationOwnedDeviceMDM : "

    .line 166
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-static {p0, p1, v2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 172
    :cond_0
    :goto_1
    return-void
.end method


# virtual methods
.method public final deleteAllFiles()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    .line 3
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLock:Ljava/lang/Object;

    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 14
    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->closeFile()V

    .line 17
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 19
    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 22
    monitor-exit v0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0

    .line 27
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    .line 29
    monitor-enter v0

    .line 30
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    .line 32
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v1

    .line 36
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 48
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 54
    goto :goto_1

    .line 55
    :catchall_1
    move-exception p0

    .line 56
    goto :goto_2

    .line 57
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    new-instance v0, Ljava/io/File;

    .line 60
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminDirectoryPath:Ljava/lang/String;

    .line 62
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-static {v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteDirectory(Ljava/io/File;)V

    .line 68
    new-instance v0, Ljava/io/File;

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    const-string v2, "/data/system/"

    .line 74
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    iget v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    .line 79
    const-string v3, "_bubble/bubbleFile"

    .line 81
    invoke-static {v2, v1, v3}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-static {v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteDirectory(Ljava/io/File;)V

    .line 91
    new-instance v0, Ljava/io/File;

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    const-string v2, "/data/system/"

    .line 97
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    iget p0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    .line 102
    const-string v2, "_bubble"

    .line 104
    invoke-static {p0, v1, v2}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    move-result-object p0

    .line 108
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-static {v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteDirectory(Ljava/io/File;)V

    .line 114
    return-void

    .line 115
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 116
    throw p0
.end method

.method public final dump(Landroid/os/ParcelFileDescriptor;JJ)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    .line 9
    iput-wide p2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mBegin:J

    .line 11
    iput-wide p4, p0, Lcom/android/server/enterprise/auditlog/Admin;->mEnd:J

    .line 13
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mAdminOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 15
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    .line 17
    iput-object p0, p1, Lcom/android/server/enterprise/auditlog/LogWritter;->mObserver:Lcom/android/server/enterprise/auditlog/Admin;

    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/android/server/enterprise/auditlog/LogWritter;->setIsDumping(ZZ)V

    .line 22
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    new-instance p2, Landroid/os/Message;

    .line 29
    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 32
    new-instance p3, Landroid/os/Bundle;

    .line 34
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 37
    const-string/jumbo p4, "swap"

    .line 40
    invoke-virtual {p3, p4, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p2, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 46
    iget-object p1, p1, Lcom/android/server/enterprise/auditlog/LogWritter;->mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    .line 48
    iget-object p1, p1, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;->mHandler:Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;

    .line 50
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 53
    iget-boolean p0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    .line 55
    return p0

    .line 56
    :cond_0
    return v1
.end method

.method public final notifyDumpFinished(ZZ)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    .line 4
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    .line 6
    iget-object v1, v1, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    .line 8
    iput-boolean p2, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTypeOfDump:Z

    .line 10
    iget-object p2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    .line 12
    invoke-virtual {p2, v0, p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->setIsDumping(ZZ)V

    .line 15
    iget p2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mUid:I

    .line 17
    sget-object v1, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 19
    const-class v2, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 21
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 27
    iget v2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mUid:I

    .line 29
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 32
    move-result v2

    .line 33
    check-cast v1, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 44
    iget-object p2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 46
    iget v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mUid:I

    .line 48
    invoke-static {p2, v1}, Lcom/android/server/enterprise/utils/Utils;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    .line 51
    move-result p2

    .line 52
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 55
    move-result p2

    .line 56
    iget-boolean v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsPseudoAdminOfOrganizationOwnedDevice:Z

    .line 58
    if-eqz v1, :cond_1

    .line 60
    sget v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->$r8$clinit:I

    .line 62
    sget-object v1, Lcom/android/server/enterprise/EnterpriseService;->sEdmsInstance:Ljava/lang/Object;

    .line 64
    check-cast v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .line 66
    if-eqz v1, :cond_1

    .line 68
    invoke-virtual {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getOrganizationOwnedProfileUserId()I

    .line 71
    move-result p2

    .line 72
    :cond_1
    new-instance v1, Landroid/content/Intent;

    .line 74
    const-string/jumbo v2, "com.samsung.android.knox.intent.action.DUMP_LOG_RESULT"

    .line 77
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    .line 82
    if-eqz v2, :cond_2

    .line 84
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    :cond_2
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.AUDIT_RESULT"

    .line 90
    if-eqz p1, :cond_3

    .line 92
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    goto :goto_0

    .line 96
    :cond_3
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    .line 99
    move-result-object p1

    .line 100
    const-string v0, "Dump failed! Sending Intent!"

    .line 102
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    .line 104
    invoke-virtual {p1, v0, v3}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/16 p1, -0x7d0

    .line 109
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    :goto_0
    iget p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mUid:I

    .line 114
    const-string/jumbo v0, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    .line 117
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mContext:Landroid/content/Context;

    .line 122
    new-instance v2, Landroid/os/UserHandle;

    .line 124
    invoke-direct {v2, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 127
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    .line 130
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 133
    :try_start_0
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mContext:Landroid/content/Context;

    .line 135
    invoke-static {p1}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lcom/android/server/enterprise/utils/KpuHelper;->getKpuPackageName()Ljava/lang/String;

    .line 142
    move-result-object p1

    .line 143
    new-instance v2, Landroid/content/Intent;

    .line 145
    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 148
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mContext:Landroid/content/Context;

    .line 150
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 153
    move-result-object v1

    .line 154
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 157
    move-result v4

    .line 158
    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 161
    move-result v1

    .line 162
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    .line 167
    if-eqz v0, :cond_4

    .line 169
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    goto :goto_1

    .line 173
    :catch_0
    move-exception p0

    .line 174
    goto :goto_2

    .line 175
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mContext:Landroid/content/Context;

    .line 177
    new-instance p1, Landroid/os/UserHandle;

    .line 179
    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 182
    invoke-virtual {p0, v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    goto :goto_3

    .line 186
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    :goto_3
    return-void
.end method

.method public final setBootCompleted(Z)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    .line 3
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    .line 5
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsBootCompleted:Z

    .line 7
    iget-boolean p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsBootCompleted:Z

    .line 9
    if-eqz p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPendingIntentErrors:Ljava/util/List;

    .line 13
    monitor-enter p1

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPendingIntentErrors:Ljava/util/List;

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 26
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/Exception;

    .line 36
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    .line 38
    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    monitor-exit p1

    .line 45
    goto :goto_2

    .line 46
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0

    .line 48
    :cond_1
    :goto_2
    return-void
.end method
