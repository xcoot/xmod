.class public final Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck$1;
.super Landroid/content/ISyncAdapterUnsyncableAccountCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck$1;->this$0:Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/ISyncAdapterUnsyncableAccountCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUnsyncableAccountDone(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck$1;->this$0:Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->onReady()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
