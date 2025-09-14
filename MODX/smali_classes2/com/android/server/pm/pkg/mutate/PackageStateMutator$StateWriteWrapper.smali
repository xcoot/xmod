.class public final Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mState:Lcom/android/server/pm/PackageSetting;

.field public final mUserStateWrite:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mUserStateWrite:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final setInstaller(ILjava/lang/String;)V
    .locals 12

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p2}, Lcom/android/server/pm/InstallSource;->intern(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v7

    .line 20
    iget v3, v0, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    .line 21
    .line 22
    iget-boolean v10, v0, Lcom/android/server/pm/InstallSource;->mIsOrphaned:Z

    .line 23
    .line 24
    iget-object v5, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v6, v0, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v8, v0, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v9, v0, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    .line 31
    .line 32
    iget-boolean v11, v0, Lcom/android/server/pm/InstallSource;->mIsInitiatingPackageUninstalled:Z

    .line 33
    .line 34
    iget-object v4, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    .line 35
    .line 36
    move v2, p1

    .line 37
    invoke-static/range {v2 .. v11}, Lcom/android/server/pm/InstallSource;->createInternal(IILcom/android/server/pm/PackageSignatures;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/InstallSource;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :goto_0
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public final userState(I)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    new-instance v1, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;-><init>(Lcom/android/server/utils/Watchable;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    move-object p1, v1

    .line 28
    :goto_0
    if-eqz p1, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    .line 31
    .line 32
    iput-object v0, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    .line 33
    .line 34
    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mUserStateWrite:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 37
    .line 38
    return-object p0
.end method
