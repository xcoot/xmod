.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutPackage;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/function/Predicate;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Landroid/util/ArraySet;

.field public final synthetic f$6:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;Landroid/util/ArraySet;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda31;->f$0:Lcom/android/server/pm/ShortcutPackage;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda31;->f$1:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda31;->f$2:Ljava/util/function/Predicate;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda31;->f$3:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda31;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda31;->f$5:Landroid/util/ArraySet;

    .line 15
    .line 16
    iput-boolean p7, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda31;->f$6:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda31;->f$0:Lcom/android/server/pm/ShortcutPackage;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda31;->f$1:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda31;->f$2:Ljava/util/function/Predicate;

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda31;->f$3:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda31;->f$4:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda31;->f$5:Landroid/util/ArraySet;

    .line 12
    .line 13
    iget-boolean p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda31;->f$6:Z

    .line 14
    .line 15
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 38
    :goto_1
    if-nez p0, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-nez v5, :cond_2

    .line 51
    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    new-instance p0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p1, " ignored because it isn\'t pinned by "

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const-string p1, "ShortcutService"

    .line 79
    .line 80
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    invoke-virtual {p1, v3}, Landroid/content/pm/ShortcutInfo;->clone(I)Landroid/content/pm/ShortcutInfo;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const/4 v3, 0x2

    .line 89
    if-nez p0, :cond_3

    .line 90
    .line 91
    if-nez v0, :cond_3

    .line 92
    .line 93
    invoke-virtual {p1, v3}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 94
    .line 95
    .line 96
    :cond_3
    if-eqz v2, :cond_4

    .line 97
    .line 98
    invoke-interface {v2, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-eqz p0, :cond_6

    .line 103
    .line 104
    :cond_4
    if-nez v0, :cond_5

    .line 105
    .line 106
    invoke-virtual {p1, v3}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 107
    .line 108
    .line 109
    :cond_5
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    :cond_6
    :goto_2
    return-void
.end method
