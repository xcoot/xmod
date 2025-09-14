.class public final Lcom/android/server/content/SyncManager$11;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/content/SyncManager;

.field public final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncManager;Landroid/content/ContentResolver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/content/SyncManager$11;->this$0:Lcom/android/server/content/SyncManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/content/SyncManager$11;->val$resolver:Landroid/content/ContentResolver;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/content/SyncManager$11;->this$0:Lcom/android/server/content/SyncManager;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/content/SyncManager$11;->this$0:Lcom/android/server/content/SyncManager;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    or-int/2addr v0, v1

    .line 12
    iput-boolean v0, p1, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/server/content/SyncManager$11;->this$0:Lcom/android/server/content/SyncManager;

    .line 15
    .line 16
    iget-boolean p1, p1, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/server/content/SyncManager$11;->val$resolver:Landroid/content/ContentResolver;

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
