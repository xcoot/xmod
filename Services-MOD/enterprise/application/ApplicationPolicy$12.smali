.class public final Lcom/android/server/enterprise/application/ApplicationPolicy$12;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$12;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 3
    iput p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$12;->val$userId:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    const-string/jumbo v0, "packageName"

    .line 4
    const-string v1, "adminUid"

    .line 6
    :try_start_0
    iget v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$12;->val$userId:I

    .line 8
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy$12;->userExist(I)Z

    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 14
    const-string p0, "ApplicationPolicy"

    .line 16
    const-string v0, "User removed"

    .line 18
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void

    .line 22
    :catch_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$12;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 26
    iget-object v2, v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 28
    iget v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$12;->val$userId:I

    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->applyRuntimePermissionsForAllApplicationsForMdm(II)Z

    .line 34
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$12;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 40
    iget-object v3, v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 42
    const-string v5, "ApplicationRuntimePermissions"

    .line 44
    iget v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$12;->val$userId:I

    .line 46
    invoke-virtual {v3, v4, v6, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(IILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_3

    .line 58
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 61
    move-result-object v2

    .line 62
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_3

    .line 68
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Landroid/content/ContentValues;

    .line 74
    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object v3

    .line 82
    if-eqz v4, :cond_1

    .line 84
    if-eqz v3, :cond_1

    .line 86
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 89
    move-result v5

    .line 90
    if-eqz v5, :cond_2

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$12;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 95
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 98
    move-result v4

    .line 99
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 102
    move-result v4

    .line 103
    invoke-virtual {v5, v4, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateRuntimePermissions(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    .line 107
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    :cond_3
    return-void
.end method

.method public final userExist(I)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$12;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 3
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    .line 5
    const-string/jumbo v0, "user"

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/os/UserManager;

    .line 14
    invoke-virtual {p0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object p0

    .line 22
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v0

    .line 26
    const-string v1, "ApplicationPolicy"

    .line 28
    if-eqz v0, :cond_1

    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 36
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 38
    if-ne v0, p1, :cond_0

    .line 40
    const-string p0, "User found"

    .line 42
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 p0, 0x1

    .line 46
    return p0

    .line 47
    :cond_1
    const-string p0, "User not found"

    .line 49
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 p0, 0x0

    .line 53
    return p0
.end method
