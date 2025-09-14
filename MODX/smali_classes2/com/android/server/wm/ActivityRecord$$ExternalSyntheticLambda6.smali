.class public final synthetic Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$1:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/content/Intent;

.field public final synthetic f$4:Landroid/os/IBinder;

.field public final synthetic f$5:Lcom/android/server/uri/NeededUriGrants;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda6;->f$1:Lcom/android/server/wm/ActivityRecord;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda6;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda6;->f$3:Landroid/content/Intent;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda6;->f$4:Landroid/os/IBinder;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda6;->f$5:Lcom/android/server/uri/NeededUriGrants;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda6;->f$1:Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    iget v5, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda6;->f$2:I

    .line 6
    .line 7
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda6;->f$3:Landroid/content/Intent;

    .line 8
    .line 9
    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda6;->f$4:Landroid/os/IBinder;

    .line 10
    .line 11
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda6;->f$5:Lcom/android/server/uri/NeededUriGrants;

    .line 12
    .line 13
    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 16
    .line 17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 18
    .line 19
    .line 20
    monitor-enter p0

    .line 21
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 26
    .line 27
    iget v4, v0, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 28
    .line 29
    iget-boolean v9, v0, Lcom/android/server/wm/ActivityRecord;->mForceSendResultForMediaProjection:Z

    .line 30
    .line 31
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    .line 32
    .line 33
    .line 34
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 42
    .line 43
    .line 44
    throw v0
.end method
