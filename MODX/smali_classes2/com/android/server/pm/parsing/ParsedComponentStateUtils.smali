.class public abstract Lcom/android/server/pm/parsing/ParsedComponentStateUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static getNonLocalizedLabelAndIcon(Lcom/android/internal/pm/pkg/component/ParsedComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)Landroid/util/Pair;
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getIcon()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getComponentName()Landroid/content/ComponentName;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p1, p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getOverrideLabelIconForComponent(Landroid/content/ComponentName;)Landroid/util/Pair;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :goto_0
    if-eqz p0, :cond_2

    .line 26
    .line 27
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    move-object v0, p1

    .line 32
    check-cast v0, Ljava/lang/CharSequence;

    .line 33
    .line 34
    :cond_1
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 35
    .line 36
    if-eqz p0, :cond_2

    .line 37
    .line 38
    check-cast p0, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method
