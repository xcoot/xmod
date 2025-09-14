.class public final synthetic Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z

.field public final synthetic f$4:Landroid/util/ArraySet;

.field public final synthetic f$5:Landroid/util/SparseArrayMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;IZZLandroid/util/ArraySet;Landroid/util/SparseArrayMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$0:Ljava/util/Set;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$1:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$2:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$3:Z

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$4:Landroid/util/ArraySet;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$5:Landroid/util/SparseArrayMap;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$0:Ljava/util/Set;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$2:Z

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$3:Z

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$4:Landroid/util/ArraySet;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$5:Landroid/util/SparseArrayMap;

    .line 12
    .line 13
    check-cast p1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 14
    .line 15
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    if-eqz v5, :cond_6

    .line 20
    .line 21
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    const/4 v5, 0x1

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-boolean v0, v0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    move v0, v5

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 v0, 0x0

    .line 52
    :goto_0
    invoke-interface {p1, v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eq v6, v0, :cond_6

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    invoke-interface {p1, v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->getUninstallReason()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-ne v2, v5, :cond_6

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    if-eqz v2, :cond_4

    .line 76
    .line 77
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-nez v5, :cond_4

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    if-nez v2, :cond_5

    .line 85
    .line 86
    if-eqz v3, :cond_6

    .line 87
    .line 88
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-nez v2, :cond_6

    .line 97
    .line 98
    :cond_5
    :goto_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {p0, v1, p1, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    :cond_6
    :goto_2
    return-void
.end method
