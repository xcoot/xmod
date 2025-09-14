.class public abstract Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$Helper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static suspendUnknownSourceAppsForAllUsers(Landroid/content/Context;[Ljava/lang/String;Z)V
    .locals 12

    .line 1
    const-class v0, Landroid/os/UserManager;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/UserManager;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 28
    .line 29
    iget v11, v1, Landroid/content/pm/UserInfo;->id:I

    .line 30
    .line 31
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    new-instance v1, Landroid/content/pm/SuspendDialogInfo$Builder;

    .line 36
    .line 37
    invoke-direct {v1}, Landroid/content/pm/SuspendDialogInfo$Builder;-><init>()V

    .line 38
    .line 39
    .line 40
    const v3, 0x1040f7a

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v1, v3}, Landroid/content/pm/SuspendDialogInfo$Builder;->setTitle(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const v3, 0x1040f79

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v1, v3}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Landroid/content/pm/SuspendDialogInfo$Builder;->build()Landroid/content/pm/SuspendDialogInfo;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    :try_start_0
    const-string/jumbo v9, "system"

    .line 67
    .line 68
    .line 69
    const/4 v8, 0x0

    .line 70
    const/4 v5, 0x0

    .line 71
    const/4 v6, 0x0

    .line 72
    move-object v3, p1

    .line 73
    move v4, p2

    .line 74
    move v10, v11

    .line 75
    invoke-interface/range {v2 .. v11}, Landroid/content/pm/IPackageManager;->setPackagesSuspendedAsUser([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;ILjava/lang/String;II)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method
