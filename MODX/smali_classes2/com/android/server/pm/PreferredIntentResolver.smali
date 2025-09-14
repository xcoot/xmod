.class public final Lcom/android/server/pm/PreferredIntentResolver;
.super Lcom/android/server/pm/WatchedIntentResolver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/server/pm/WatchedIntentResolver;-><init>()V

    .line 2
    new-instance v0, Lcom/android/server/pm/PreferredIntentResolver$1;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, p0, p0, v1}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    .line 4
    iput-object v0, p0, Lcom/android/server/pm/PreferredIntentResolver;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PreferredIntentResolver;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/android/server/pm/WatchedIntentResolver;-><init>()V

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->copyFrom(Lcom/android/server/IntentResolver;)V

    .line 7
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 8
    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/server/pm/PreferredIntentResolver;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method


# virtual methods
.method public final dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p3, Lcom/android/server/pm/PreferredActivity;

    .line 2
    .line 3
    iget-object p0, p3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/16 p3, 0x20

    .line 23
    .line 24
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(C)V

    .line 25
    .line 26
    .line 27
    iget-object p3, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    .line 28
    .line 29
    const-string v0, " mMatch=0x"

    .line 30
    .line 31
    invoke-static {p1, p3, p2, v0}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget p3, p0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    .line 35
    .line 36
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string p3, " mAlways="

    .line 44
    .line 45
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-boolean p3, p0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    .line 49
    .line 50
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    .line 54
    .line 55
    if-eqz p0, :cond_0

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string p3, "  Selected from:"

    .line 61
    .line 62
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/4 p3, 0x0

    .line 66
    :goto_0
    array-length v0, p0

    .line 67
    if-ge p3, v0, :cond_0

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v0, "    "

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    aget-object v0, p0, p3

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    add-int/lit8 p3, p3, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    return-void
.end method

.method public final getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/pm/PreferredActivity;

    .line 2
    .line 3
    iget-object p0, p1, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 4
    .line 5
    return-object p0
.end method

.method public final isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/android/server/pm/PreferredActivity;

    .line 2
    .line 3
    iget-object p0, p2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Lcom/android/server/pm/PreferredActivity;

    .line 2
    .line 3
    return-object p0
.end method

.method public final snapshot()Ljava/lang/Object;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PreferredIntentResolver;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PreferredIntentResolver;

    return-object p0
.end method

.method public final snapshot(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/pm/PreferredActivity;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p1, Lcom/android/server/pm/PreferredActivity;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PreferredActivity;

    :goto_0
    return-object p0
.end method
