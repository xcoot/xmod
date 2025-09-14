.class public Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mClientId:I

.field public final mListener:Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

.field public final synthetic this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->mListener:Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->mClientId:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 3
    .line 4
    iget-object v1, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 8
    .line 9
    iget v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->mClientId:I

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 18
    .line 19
    iget v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->mClientId:I

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeClientProfile(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v2

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 29
    .line 30
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->mClientId:I

    .line 31
    .line 32
    invoke-static {v1, p0, v0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mreleaseLockInternal(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;IZZ)Z

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 38
    :catchall_1
    move-exception v1

    .line 39
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    .line 40
    .line 41
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->mClientId:I

    .line 42
    .line 43
    invoke-static {v2, p0, v0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mreleaseLockInternal(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;IZZ)Z

    .line 44
    .line 45
    .line 46
    throw v1
.end method
