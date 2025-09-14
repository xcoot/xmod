.class public abstract Lcom/android/server/devicepolicy/UpdateInstaller;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Landroid/app/admin/StartInstallingUpdateCallback;

.field public final mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

.field public final mContext:Landroid/content/Context;

.field public mCopiedUpdateFile:Ljava/io/File;

.field public final mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

.field public final mUpdateFileDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Landroid/app/admin/StartInstallingUpdateCallback;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;Lcom/android/server/devicepolicy/DevicePolicyConstants;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mContext:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mCallback:Landroid/app/admin/StartInstallingUpdateCallback;

    .line 8
    iput-object p2, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mUpdateFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 10
    iput-object p4, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 12
    iput-object p5, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

    .line 14
    return-void
.end method


# virtual methods
.method public abstract installUpdateInThread()V
.end method

.method public final notifyCallbackOnError(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mCopiedUpdateFile:Ljava/io/File;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mCopiedUpdateFile:Ljava/io/File;

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 16
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 18
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 21
    iget-object v1, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mContext:Landroid/content/Context;

    .line 23
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    .line 26
    move-result v1

    .line 27
    const-string/jumbo v2, "userId"

    .line 30
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    const/16 v1, 0x4a

    .line 35
    invoke-static {v1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyEventLogger;->setInt(I)Landroid/app/admin/DevicePolicyEventLogger;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyEventLogger;->setKnoxBundleValue(Landroid/os/Bundle;)Landroid/app/admin/DevicePolicyEventLogger;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 50
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mCallback:Landroid/app/admin/StartInstallingUpdateCallback;

    .line 52
    invoke-interface {p0, p1, p2}, Landroid/app/admin/StartInstallingUpdateCallback;->onStartInstallingUpdateError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception p0

    .line 57
    const-string p1, "UpdateInstaller"

    .line 59
    const-string p2, "Error while calling callback"

    .line 61
    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    :goto_0
    return-void
.end method
