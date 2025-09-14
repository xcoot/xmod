.class public final Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public appUsageGroups:Landroid/util/SparseArray;

.field public appUsageLimitGroups:Landroid/util/SparseArray;

.field public sessionUsageGroups:Landroid/util/SparseArray;

.field public uid:I


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    const-string v0, " uid="

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->uid:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9
    .line 10
    .line 11
    const-string v0, "    App Usage Groups:"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    move v2, v1

    .line 24
    :goto_0
    if-ge v2, v0, :cond_0

    .line 25
    .line 26
    iget-object v3, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;

    .line 33
    .line 34
    invoke-virtual {v3, p1}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->dump(Ljava/io/PrintWriter;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string v0, "    Session Usage Groups:"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    move v2, v1

    .line 55
    :goto_1
    if-ge v2, v0, :cond_1

    .line 56
    .line 57
    iget-object v3, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    .line 58
    .line 59
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    .line 64
    .line 65
    invoke-virtual {v3, p1}, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->dump(Ljava/io/PrintWriter;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 69
    .line 70
    .line 71
    add-int/lit8 v2, v2, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    const-string v0, "    App Usage Limit Groups:"

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    :goto_2
    if-ge v1, v0, :cond_2

    .line 86
    .line 87
    iget-object v2, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    .line 88
    .line 89
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    .line 94
    .line 95
    invoke-virtual {v2, p1}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->dump(Ljava/io/PrintWriter;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 99
    .line 100
    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_2
    return-void
.end method
