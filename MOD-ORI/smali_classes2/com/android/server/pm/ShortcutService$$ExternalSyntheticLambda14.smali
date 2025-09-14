.class public final synthetic Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService;

.field public final synthetic f$1:Landroid/content/pm/ShortcutInfo;

.field public final synthetic f$2:Lcom/android/server/pm/ShortcutPackage;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ShortcutInfo;Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/pm/ShortcutService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda14;->f$1:Landroid/content/pm/ShortcutInfo;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda14;->f$2:Lcom/android/server/pm/ShortcutPackage;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda14;->f$3:Ljava/util/List;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/pm/ShortcutService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda14;->f$1:Landroid/content/pm/ShortcutInfo;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda14;->f$2:Lcom/android/server/pm/ShortcutPackage;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda14;->f$3:Ljava/util/List;

    .line 8
    .line 9
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_9

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const-string v5, "ShortcutService"

    .line 32
    .line 33
    if-eq v3, v4, :cond_1

    .line 34
    .line 35
    const-string v3, "ShortcutInfo.enabled cannot be changed with updateShortcuts()"

    .line 36
    .line 37
    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isLongLived()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isLongLived()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eq v3, v4, :cond_2

    .line 49
    .line 50
    const-string v3, "ShortcutInfo.longLived cannot be changed with updateShortcuts()"

    .line 51
    .line 52
    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->hasRank()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->setRankChanged()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-virtual {p1, v3}, Landroid/content/pm/ShortcutInfo;->setImplicitRank(I)V

    .line 69
    .line 70
    .line 71
    :cond_3
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    if-eqz v3, :cond_4

    .line 76
    .line 77
    const/4 v3, 0x1

    .line 78
    goto :goto_0

    .line 79
    :cond_4
    const/4 v3, 0x0

    .line 80
    :goto_0
    if-eqz v3, :cond_5

    .line 81
    .line 82
    invoke-virtual {v2, p1}, Lcom/android/server/pm/ShortcutPackageItem;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 83
    .line 84
    .line 85
    :cond_5
    invoke-virtual {p1, v1}, Landroid/content/pm/ShortcutInfo;->copyNonNullFieldsFrom(Landroid/content/pm/ShortcutInfo;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    .line 89
    .line 90
    .line 91
    move-result-wide v4

    .line 92
    invoke-virtual {p1, v4, v5}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 93
    .line 94
    .line 95
    if-eqz v3, :cond_6

    .line 96
    .line 97
    invoke-virtual {v0, v2, p1}, Lcom/android/server/pm/ShortcutService;->saveIconAndFixUpShortcutLocked(Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)V

    .line 98
    .line 99
    .line 100
    :cond_6
    if-nez v3, :cond_7

    .line 101
    .line 102
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->hasStringResources()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_8

    .line 107
    .line 108
    :cond_7
    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V

    .line 109
    .line 110
    .line 111
    :cond_8
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    :cond_9
    :goto_1
    return-void
.end method
