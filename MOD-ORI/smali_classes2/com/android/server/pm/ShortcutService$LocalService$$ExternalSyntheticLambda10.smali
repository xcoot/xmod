.class public final synthetic Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Landroid/util/ArraySet;

.field public final synthetic f$2:Landroid/util/ArraySet;

.field public final synthetic f$3:Landroid/content/ComponentName;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z

.field public final synthetic f$6:Z

.field public final synthetic f$7:Z

.field public final synthetic f$8:Z


# direct methods
.method public synthetic constructor <init>(JLandroid/util/ArraySet;Landroid/util/ArraySet;Landroid/content/ComponentName;ZZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda10;->f$0:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda10;->f$1:Landroid/util/ArraySet;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda10;->f$2:Landroid/util/ArraySet;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda10;->f$3:Landroid/content/ComponentName;

    .line 11
    .line 12
    iput-boolean p6, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda10;->f$4:Z

    .line 13
    .line 14
    iput-boolean p7, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda10;->f$5:Z

    .line 15
    .line 16
    iput-boolean p8, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda10;->f$6:Z

    .line 17
    .line 18
    iput-boolean p9, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda10;->f$7:Z

    .line 19
    .line 20
    iput-boolean p10, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda10;->f$8:Z

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 11

    .line 1
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda10;->f$0:J

    .line 2
    .line 3
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda10;->f$1:Landroid/util/ArraySet;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda10;->f$2:Landroid/util/ArraySet;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda10;->f$3:Landroid/content/ComponentName;

    .line 8
    .line 9
    iget-boolean v5, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda10;->f$4:Z

    .line 10
    .line 11
    iget-boolean v6, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda10;->f$5:Z

    .line 12
    .line 13
    iget-boolean v7, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda10;->f$6:Z

    .line 14
    .line 15
    iget-boolean v8, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda10;->f$7:Z

    .line 16
    .line 17
    iget-boolean p0, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda10;->f$8:Z

    .line 18
    .line 19
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    .line 22
    .line 23
    .line 24
    move-result-wide v9

    .line 25
    cmp-long v0, v9, v0

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    if-gez v0, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    if-eqz v3, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    if-eqz v4, :cond_3

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_3

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    const/4 v0, 0x1

    .line 77
    if-eqz v5, :cond_4

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_4

    .line 84
    .line 85
    :goto_0
    move v1, v0

    .line 86
    goto :goto_1

    .line 87
    :cond_4
    if-nez v6, :cond_5

    .line 88
    .line 89
    if-eqz v7, :cond_6

    .line 90
    .line 91
    :cond_5
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_6

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_6
    if-eqz v8, :cond_7

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_7

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_7
    if-eqz p0, :cond_8

    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    if-eqz p0, :cond_8

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_8
    :goto_1
    return v1
.end method
