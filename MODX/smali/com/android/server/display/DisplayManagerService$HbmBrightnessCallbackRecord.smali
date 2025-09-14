.class public final Lcom/android/server/display/DisplayManagerService$HbmBrightnessCallbackRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCallback:Landroid/hardware/display/IHbmBrightnessCallback;

.field public final mPid:I

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(IILandroid/hardware/display/IHbmBrightnessCallback;Lcom/android/server/display/DisplayManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p4, p0, Lcom/android/server/display/DisplayManagerService$HbmBrightnessCallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 6
    iput p1, p0, Lcom/android/server/display/DisplayManagerService$HbmBrightnessCallbackRecord;->mPid:I

    .line 8
    iput p2, p0, Lcom/android/server/display/DisplayManagerService$HbmBrightnessCallbackRecord;->mUid:I

    .line 10
    iput-object p3, p0, Lcom/android/server/display/DisplayManagerService$HbmBrightnessCallbackRecord;->mCallback:Landroid/hardware/display/IHbmBrightnessCallback;

    .line 12
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    const-string v0, "DisplayManagerService"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "Hbm listener for pid "

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    iget v2, p0, Lcom/android/server/display/DisplayManagerService$HbmBrightnessCallbackRecord;->mPid:I

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    const-string v2, " died."

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$HbmBrightnessCallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 29
    iget-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 31
    monitor-enter v1

    .line 32
    :try_start_0
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mHbmBrightnessCallbacks:Landroid/util/SparseArray;

    .line 34
    iget p0, p0, Lcom/android/server/display/DisplayManagerService$HbmBrightnessCallbackRecord;->mPid:I

    .line 36
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 39
    monitor-exit v1

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method
