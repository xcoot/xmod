.class public final Lcom/android/server/pm/ShortcutNonPersistentUser;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHostPackageSet:Landroid/util/ArraySet;

.field public final mHostPackages:Landroid/util/ArrayMap;

.field public final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/ShortcutNonPersistentUser;->mHostPackages:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/pm/ShortcutNonPersistentUser;->mHostPackageSet:Landroid/util/ArraySet;

    .line 17
    .line 18
    iput p1, p0, Lcom/android/server/pm/ShortcutNonPersistentUser;->mUserId:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Lcom/android/server/pm/ShortcutService$DumpFilter;)V
    .locals 2

    .line 1
    iget-boolean p2, p2, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpDetails:Z

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    iget-object p2, p0, Lcom/android/server/pm/ShortcutNonPersistentUser;->mHostPackages:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-lez p2, :cond_1

    .line 12
    .line 13
    const-string p2, "  "

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v0, "Non-persistent: user ID:"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget v0, p0, Lcom/android/server/pm/ShortcutNonPersistentUser;->mUserId:I

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "  Host packages:"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutNonPersistentUser;->mHostPackages:Landroid/util/ArrayMap;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-ge v0, v1, :cond_0

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v1, "    "

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/pm/ShortcutNonPersistentUser;->mHostPackages:Landroid/util/ArrayMap;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v1, ": "

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/android/server/pm/ShortcutNonPersistentUser;->mHostPackages:Landroid/util/ArrayMap;

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 84
    .line 85
    .line 86
    :cond_1
    return-void
.end method
