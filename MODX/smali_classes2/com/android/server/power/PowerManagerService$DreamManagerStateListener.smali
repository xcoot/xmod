.class public final Lcom/android/server/power/PowerManagerService$DreamManagerStateListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DreamManagerStateListener;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onKeepDreamingWhenUnpluggingChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DreamManagerStateListener;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$DreamManagerStateListener;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mKeepDreamingWhenUnplugging:Z

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method
