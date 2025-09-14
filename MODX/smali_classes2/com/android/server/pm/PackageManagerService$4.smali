.class public final Lcom/android/server/pm/PackageManagerService$4;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$4;->val$resolver:Landroid/content/ContentResolver;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$4;->val$resolver:Landroid/content/ContentResolver;

    .line 2
    .line 3
    const-string v0, "enable_ephemeral_feature"

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v0, 0x0

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    move p1, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move p1, v0

    .line 16
    :goto_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    array-length v3, v2

    .line 25
    move v4, v0

    .line 26
    :goto_1
    if-ge v4, v3, :cond_3

    .line 27
    .line 28
    aget v5, v2, v4

    .line 29
    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$4;->val$resolver:Landroid/content/ContentResolver;

    .line 33
    .line 34
    const-string v7, "instant_apps_enabled"

    .line 35
    .line 36
    invoke-static {v6, v7, v1, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-nez v6, :cond_1

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    move v6, v0

    .line 44
    goto :goto_3

    .line 45
    :cond_2
    :goto_2
    move v6, v1

    .line 46
    :goto_3
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 47
    .line 48
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 49
    .line 50
    iget-object v8, v7, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    .line 51
    .line 52
    invoke-virtual {v8, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v7, v7}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v4, v4, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    return-void
.end method
