.class public final Lcom/android/server/pm/ComputerEngine$Settings;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mSettings:Lcom/android/server/pm/Settings;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Settings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getApplicationEnabledSetting(Ljava/lang/String;I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/server/pm/PackageSetting;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 21
    .line 22
    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public final getComponentEnabledSetting(Landroid/content/ComponentName;I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/android/server/pm/PackageSetting;

    .line 19
    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    iget-object p2, p2, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_0

    .line 47
    .line 48
    const/4 p0, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    if-eqz p2, :cond_1

    .line 55
    .line 56
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-eqz p0, :cond_1

    .line 67
    .line 68
    const/4 p0, 0x2

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/4 p0, 0x0

    .line 71
    :goto_0
    return p0

    .line 72
    :cond_2
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p0
.end method

.method public final getPackages()Landroid/util/ArrayMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 6
    .line 7
    return-object p0
.end method

.method public isEnabledAndMatch(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;JI)Z
    .locals 8

    .line 1
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine$Settings;->mSettings:Lcom/android/server/pm/Settings;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_0
    invoke-interface {p0, p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isEnabled()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isEnabled()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isDirectBootAware()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    move-wide v6, p3

    .line 40
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserStateInternal;ZZZZLjava/lang/String;J)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0
.end method
