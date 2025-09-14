.class public final Lcom/android/server/StorageManagerService$DirEncryptListner;
.super Lcom/samsung/android/security/IDirEncryptServiceListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/StorageManagerService$DirEncryptListner;->this$0:Lcom/android/server/StorageManagerService;

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/security/IDirEncryptServiceListener$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onEncryptionStatusChanged(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/server/StorageManagerService$DirEncryptListner;->this$0:Lcom/android/server/StorageManagerService;

    .line 3
    invoke-virtual {p2, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_0

    .line 13
    iget-object p2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    .line 15
    invoke-virtual {p2}, Landroid/os/storage/DiskInfo;->isSd()Z

    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_0

    .line 21
    const-string/jumbo p2, "done"

    .line 24
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_0

    .line 30
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService$DirEncryptListner;->this$0:Lcom/android/server/StorageManagerService;

    .line 32
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/storage/StorageSessionController;->onVolumeUnmount(Landroid/os/storage/VolumeInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    const-string p1, "StorageManagerService"

    .line 41
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    :cond_0
    :goto_0
    return-void
.end method
