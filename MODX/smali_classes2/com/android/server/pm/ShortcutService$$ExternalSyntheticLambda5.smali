.class public final synthetic Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/pm/ShortcutService$3;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroid/os/UserHandle;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService;->mUriGrantsManagerInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 21
    .line 22
    iget-object v2, v0, Lcom/android/server/pm/ShortcutService;->mUriPermissionOwner:Landroid/os/IBinder;

    .line 23
    .line 24
    check-cast v1, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, -0x1

    .line 29
    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v1

    .line 35
    :try_start_0
    iget-object v2, v0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    iput-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mCachedLauncher:Ljava/lang/String;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    :goto_0
    monitor-exit v1

    .line 53
    return-void

    .line 54
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0

    .line 56
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lcom/android/server/pm/ShortcutPackage;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p0, Lcom/android/server/pm/ShortcutLauncher;

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageItem;->removeShortcutPackageItem()V

    .line 67
    .line 68
    .line 69
    :cond_1
    if-eqz p0, :cond_2

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->removeShortcutPackageItem()V

    .line 72
    .line 73
    .line 74
    :cond_2
    return-void

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
