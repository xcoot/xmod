.class public final synthetic Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;->f$0:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;->f$1:Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;->f$0:Landroid/content/Context;

    .line 3
    iget-object p0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;->f$1:Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    .line 5
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 8
    return-void
.end method
