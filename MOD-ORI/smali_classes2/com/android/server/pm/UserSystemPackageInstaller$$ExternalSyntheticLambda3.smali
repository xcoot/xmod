.class public final synthetic Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/SparseArrayMap;


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArrayMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda3;->f$0:Landroid/util/SparseArrayMap;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda3;->f$0:Landroid/util/SparseArrayMap;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArrayMap;->numMaps()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_4

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/util/SparseArrayMap;->keyAt(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p0, v2}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    move v4, v0

    .line 22
    :goto_1
    if-ge v4, v3, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0, v1, v4}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p0, v1, v4}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    check-cast v6, Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    invoke-virtual {p1, v5}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    invoke-virtual {v7, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    iget-object v8, v7, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 49
    .line 50
    if-eqz v8, :cond_0

    .line 51
    .line 52
    const/4 v9, 0x1

    .line 53
    invoke-virtual {v8, v9, v6}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v8}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 57
    .line 58
    .line 59
    :cond_0
    xor-int/lit8 v8, v6, 0x1

    .line 60
    .line 61
    iget-object v7, v7, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 62
    .line 63
    if-eqz v7, :cond_1

    .line 64
    .line 65
    iput v8, v7, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    .line 66
    .line 67
    const-class v9, Landroid/content/pm/PackageManager$UninstallReason;

    .line 68
    .line 69
    const/4 v10, 0x0

    .line 70
    invoke-static {v9, v10, v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 74
    .line 75
    .line 76
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    if-eqz v6, :cond_2

    .line 82
    .line 83
    const-string v6, "Installed "

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    const-string v6, "Uninstalled "

    .line 87
    .line 88
    :goto_2
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v5, " for user "

    .line 95
    .line 96
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    const-string v6, "UserSystemPackageInstallerCommitDebug"

    .line 107
    .line 108
    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    add-int/lit8 v4, v4, 0x1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_4
    return-void
.end method
