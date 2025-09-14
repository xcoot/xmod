.class public final synthetic Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/android/server/pm/pkg/PackageStateInternal;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda16;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda16;->f$2:Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 2
    .line 3
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda16;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda16;->f$2:Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    invoke-virtual {v1, v2, v8}, Lcom/android/server/pm/PreferredActivityHelper;->clearPackagePreferredActivities(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 18
    .line 19
    .line 20
    move-result-object v9

    .line 21
    new-instance v10, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 31
    .line 32
    .line 33
    move-result v11

    .line 34
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    .line 37
    .line 38
    .line 39
    move-result-object v12

    .line 40
    const/4 v1, 0x0

    .line 41
    move v13, v1

    .line 42
    :goto_0
    array-length v1, v12

    .line 43
    if-ge v13, v1, :cond_1

    .line 44
    .line 45
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    aget v2, v12, v13

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 56
    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_0

    .line 64
    .line 65
    aget v1, v12, v13

    .line 66
    .line 67
    invoke-static {v1, v11}, Landroid/os/UserHandle;->getUid(II)I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 72
    .line 73
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 74
    .line 75
    const/4 v4, 0x1

    .line 76
    const-string v7, "The mimeGroup is changed"

    .line 77
    .line 78
    move-object v2, v9

    .line 79
    move-object v3, v8

    .line 80
    move-object v5, v10

    .line 81
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcast(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_0
    add-int/lit8 v13, v13, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    return-void
.end method
