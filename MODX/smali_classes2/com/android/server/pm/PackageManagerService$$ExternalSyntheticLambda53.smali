.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda53;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda53;->f$0:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda53;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda53;->f$0:Ljava/lang/String;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda53;->f$1:Z

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v1, v1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 16
    .line 17
    iput-boolean p0, v1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v1, p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mDisabledStateFunction:Ljava/util/function/Function;

    .line 25
    .line 26
    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v1, p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mChangedStates:Landroid/util/ArraySet;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object p1, p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mStateWrite:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    .line 40
    .line 41
    iput-object v0, p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iget-object p1, v0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 46
    .line 47
    iput-boolean p0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    .line 48
    .line 49
    iget-object p0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method
