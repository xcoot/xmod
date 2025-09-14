.class public final Lcom/android/server/pm/PolicyComparator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public duplicateFound:Z


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .line 1
    check-cast p1, Lcom/android/server/pm/Policy;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/pm/Policy;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    xor-int/2addr v0, v1

    .line 13
    iget-object v2, p2, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    xor-int/2addr v2, v1

    .line 20
    if-eq v0, v2, :cond_0

    .line 21
    .line 22
    iget-object p0, p1, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    xor-int/2addr p0, v1

    .line 29
    if-eqz p0, :cond_3

    .line 30
    .line 31
    const/4 v1, -0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p1, Lcom/android/server/pm/Policy;->mCerts:Ljava/util/Set;

    .line 34
    .line 35
    iget-object v2, p2, Lcom/android/server/pm/Policy;->mCerts:Ljava/util/Set;

    .line 36
    .line 37
    invoke-interface {v0, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    iget-object v0, p1, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    .line 44
    .line 45
    const-string v2, "Duplicate policy entry: "

    .line 46
    .line 47
    const-string v3, "SELinuxMMAC"

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iput-boolean v1, p0, Lcom/android/server/pm/PolicyComparator;->duplicateFound:Z

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-object v0, p1, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    .line 73
    .line 74
    iget-object p2, p2, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-static {v0, p2}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-nez p2, :cond_2

    .line 89
    .line 90
    iput-boolean v1, p0, Lcom/android/server/pm/PolicyComparator;->duplicateFound:Z

    .line 91
    .line 92
    new-instance p0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    :cond_2
    const/4 v1, 0x0

    .line 112
    :cond_3
    :goto_0
    return v1
.end method
