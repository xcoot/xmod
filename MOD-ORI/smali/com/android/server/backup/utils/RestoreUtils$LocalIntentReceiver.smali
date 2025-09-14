.class public final Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLocalSender:Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver$1;

.field public final mLock:Ljava/lang/Object;

.field public mResult:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mResult:Landroid/content/Intent;

    .line 13
    .line 14
    new-instance v0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver$1;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver$1;-><init>(Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mLocalSender:Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver$1;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final getResult()Landroid/content/Intent;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :catch_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mResult:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :try_start_2
    monitor-exit v0

    .line 17
    return-object v1

    .line 18
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    throw p0
.end method
