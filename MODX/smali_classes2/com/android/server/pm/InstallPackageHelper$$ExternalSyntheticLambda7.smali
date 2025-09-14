.class public final synthetic Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/InstallPackageHelper;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/server/pm/InstallRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstallPackageHelper;ZLcom/android/server/pm/InstallRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda7;->f$1:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda7;->f$2:Lcom/android/server/pm/InstallRequest;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda7;->f$1:Z

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda7;->f$2:Lcom/android/server/pm/InstallRequest;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    .line 16
    .line 17
    :goto_0
    array-length v2, v1

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_1
    if-ge v3, v2, :cond_1

    .line 20
    .line 21
    aget v4, v1, v3

    .line 22
    .line 23
    iget-object v5, p0, Lcom/android/server/pm/InstallRequest;->mName:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 26
    .line 27
    invoke-virtual {v6, v4, v5}, Lcom/android/server/pm/PackageManagerService;->restorePermissionsAndUpdateRolesForNewUserInstall(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    return-void
.end method
