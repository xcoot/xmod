.class public final Lcom/android/server/content/SyncManager$10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/pm/RegisteredServicesCacheListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/content/SyncManager$10;->this$0:Lcom/android/server/content/SyncManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceChanged(Ljava/lang/Object;IZ)V
    .locals 11

    .line 1
    check-cast p1, Landroid/content/SyncAdapterType;

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/content/SyncManager$10;->this$0:Lcom/android/server/content/SyncManager;

    .line 6
    .line 7
    iget-object v4, p1, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 10
    .line 11
    .line 12
    move-result v8

    .line 13
    const/4 v6, -0x2

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, -0x1

    .line 17
    const/4 v3, -0x3

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v9, -0x1

    .line 20
    const/4 v10, 0x0

    .line 21
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
