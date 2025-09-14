.class public final synthetic Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/content/SyncManager;

    .line 6
    return-void
.end method


# virtual methods
.method public final onAppPermissionChanged(Landroid/accounts/Account;I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/content/SyncManager;

    .line 3
    iget-object p0, v0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/accounts/AccountManagerInternal;->hasAccountAccess(Landroid/accounts/Account;I)Z

    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 11
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 14
    move-result v2

    .line 15
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 18
    move-result v8

    .line 19
    const/4 v9, -0x2

    .line 20
    const/4 v10, 0x0

    .line 21
    const/4 v3, -0x2

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x3

    .line 25
    const/4 v7, 0x0

    .line 26
    move-object v1, p1

    .line 27
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V

    .line 30
    :cond_0
    return-void
.end method
