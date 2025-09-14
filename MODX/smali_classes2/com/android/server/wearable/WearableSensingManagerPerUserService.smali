.class public final Lcom/android/server/wearable/WearableSensingManagerPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mComponentName:Landroid/content/ComponentName;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

.field public mSecureChannel:Lcom/android/server/wearable/WearableSensingSecureChannel;

.field public final mSecureChannelLock:Ljava/lang/Object;

.field public mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;


# direct methods
.method public static -$$Nest$mstopActiveHotwordAudio(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string p0, "WearableSensingManagerPerUserService"

    .line 11
    .line 12
    const-string v1, "Wearable sensing service is not available at this moment."

    .line 13
    .line 14
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated$2()V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance v1, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda7;

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    invoke-direct {v1, v2}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda7;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 36
    .line 37
    .line 38
    monitor-exit v0

    .line 39
    :goto_0
    return-void

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public constructor <init>(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelLock:Ljava/lang/Object;

    .line 10
    .line 11
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 20
    .line 21
    return-void
.end method

.method public static isReadOnly(Landroid/os/ParcelFileDescriptor;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    sget v1, Landroid/system/OsConstants;->F_GETFL:I

    .line 7
    .line 8
    invoke-static {p0, v1, v0}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    sget v1, Landroid/system/OsConstants;->O_ACCMODE:I

    .line 13
    .line 14
    and-int/2addr p0, v1

    .line 15
    sget v1, Landroid/system/OsConstants;->O_RDONLY:I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    if-ne p0, v1, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    :cond_0
    return v0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    const-string v1, "WearableSensingManagerPerUserService"

    .line 23
    .line 24
    const-string v2, "Error encountered when trying to determine if the parcelFileDescriptor is read-only. Treating it as not read-only"

    .line 25
    .line 26
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    return v0
.end method

.method public static notifyStatusCallback(ILandroid/os/RemoteCallback;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.app.wearable.WearableSensingStatusBundleKey"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 5
    .line 6
    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const-string v0, ""

    .line 13
    .line 14
    new-instance v1, Landroid/util/IndentingPrintWriter;

    .line 15
    .line 16
    const-string v2, "  "

    .line 17
    .line 18
    invoke-direct {v1, p1, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw p0
.end method

.method public final ensureRemoteServiceInitiated$2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/wearable/RemoteWearableSensingService;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    .line 14
    .line 15
    iget v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 16
    .line 17
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wearable/RemoteWearableSensingService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    .line 2
    .line 3
    return-object p0
.end method

.method public final newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 5

    .line 1
    const-string v0, " requires android.permission.BIND_WEARABLE_SENSING_SERVICE permission. Found "

    .line 2
    .line 3
    const-string v1, "Service "

    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 10
    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    invoke-interface {v2, p1, v3, v4, p0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    iget-object v2, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 20
    .line 21
    const-string v3, "android.permission.BIND_WEARABLE_SENSING_SERVICE"

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p0, " permission"

    .line 53
    .line 54
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-direct {v2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_1
    :goto_0
    return-object p0

    .line 66
    :catch_0
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 67
    .line 68
    const-string v0, "Could not get service for "

    .line 69
    .line 70
    invoke-static {p1, v0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticOutline0;->m(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p0
.end method

.method public final onProvideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    .locals 3

    .line 1
    const-string v0, "WearableSensingManagerPerUserService"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "onProvideDataStream in per user service. Is data stream read-only? "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->isReadOnly(Landroid/os/ParcelFileDescriptor;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    const-string p0, "WearableSensingManagerPerUserService"

    .line 35
    .line 36
    const-string p1, "Detection service is not available at this moment."

    .line 37
    .line 38
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x3

    .line 42
    invoke-static {p0, p3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    .line 43
    .line 44
    .line 45
    monitor-exit v0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string v1, "WearableSensingManagerPerUserService"

    .line 50
    .line 51
    const-string v2, "calling over to remote servvice."

    .line 52
    .line 53
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated$2()V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    .line 60
    .line 61
    invoke-virtual {p0, p2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->wrapWearableSensingCallback(Landroid/app/wearable/IWearableSensingCallback;)Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    new-instance p2, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    invoke-direct {p2, p1, p0, p3, v2}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;-><init>(Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;Landroid/os/RemoteCallback;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p2}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 75
    .line 76
    .line 77
    monitor-exit v0

    .line 78
    return-void

    .line 79
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    throw p0
.end method

.method public final onProvidedData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string p0, "WearableSensingManagerPerUserService"

    .line 11
    .line 12
    const-string p1, "Detection service is not available at this moment."

    .line 13
    .line 14
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x3

    .line 18
    invoke-static {p0, p3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated$2()V

    .line 26
    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    sget v1, Landroid/system/OsConstants;->PROT_READ:I

    .line 31
    .line 32
    invoke-virtual {p2, v1}, Landroid/os/SharedMemory;->setProtect(I)Z

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    new-instance v1, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;-><init>(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 46
    .line 47
    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public setUpServiceIfNeeded()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateServiceInfoLocked()Landroid/content/ComponentName;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    .line 22
    .line 23
    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 24
    .line 25
    const-wide/16 v3, 0x0

    .line 26
    .line 27
    invoke-interface {v0, v2, v3, v4, p0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    .line 28
    .line 29
    .line 30
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    :cond_2
    return v1

    .line 35
    :catch_0
    const-string p0, "WearableSensingManagerPerUserService"

    .line 36
    .line 37
    const-string v0, "RemoteException while setting up service"

    .line 38
    .line 39
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return v1
.end method

.method public final wrapWearableSensingCallback(Landroid/app/wearable/IWearableSensingCallback;)Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    .line 6
    .line 7
    const-string v2, "WearableSensingManagerPerUserService"

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    const-string p0, "Cannot create WearableSensingCallback because mComponentName is null."

    .line 12
    .line 13
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 30
    .line 31
    const-wide/16 v5, 0x0

    .line 32
    .line 33
    invoke-virtual {p0, v3, v5, v6, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eq v1, p0, :cond_2

    .line 38
    .line 39
    const-string p0, "Caller does not belong to the package that provides the WearableSensingService implementation. Do not forward WearableSensingCallback to WearableSensingService."

    .line 40
    .line 41
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_2
    new-instance p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;

    .line 46
    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;-><init>(Landroid/app/wearable/IWearableSensingCallback;)V

    .line 48
    .line 49
    .line 50
    return-object p0
.end method
