.class public final Lcom/android/server/StorageManagerService$AppFuseMountScope;
.super Lcom/android/server/storage/AppFuseBridge$MountScope;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mMounted:Z

.field public final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->this$0:Lcom/android/server/StorageManagerService;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcom/android/server/storage/AppFuseBridge$MountScope;-><init>(II)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->mMounted:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->this$0:Lcom/android/server/StorageManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "#close might be slow"

    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->extendWatchdogTimeout(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->mMounted:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lcom/android/server/StorageManagerService$AppFuseMountScope$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-direct {v1, v2, p0}, Lcom/android/server/StorageManagerService$AppFuseMountScope$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->mMounted:Z

    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final open()Landroid/os/ParcelFileDescriptor;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->this$0:Lcom/android/server/StorageManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "#open might be slow"

    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->extendWatchdogTimeout(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->this$0:Lcom/android/server/StorageManagerService;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 14
    .line 15
    iget v1, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->uid:I

    .line 16
    .line 17
    iget v2, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    .line 18
    .line 19
    invoke-interface {v0, v1, v2}, Landroid/os/IVold;->mountAppFuse(II)Ljava/io/FileDescriptor;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x1

    .line 24
    iput-boolean v1, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->mMounted:Z

    .line 25
    .line 26
    new-instance p0, Landroid/os/ParcelFileDescriptor;

    .line 27
    .line 28
    invoke-direct {p0, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    new-instance v0, Lcom/android/server/AppFuseMountException;

    .line 34
    .line 35
    const-string v1, "Failed to mount"

    .line 36
    .line 37
    invoke-direct {v0, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method
