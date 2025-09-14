.class public final Lcom/android/server/wm/PolicyControl$Filter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAllowList:Landroid/util/ArraySet;

.field public final mBlockList:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/PolicyControl$Filter;->mAllowList:Landroid/util/ArraySet;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/PolicyControl$Filter;->mBlockList:Landroid/util/ArraySet;

    .line 7
    .line 8
    return-void
.end method

.method public static dump(Ljava/lang/String;Landroid/util/ArraySet;Ljava/io/PrintWriter;)V
    .locals 2

    .line 6
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    const-string p0, "=("

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    if-lez v0, :cond_0

    const/16 v1, 0x2c

    .line 9
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 10
    :cond_0
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x29

    .line 11
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(C)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/server/wm/PolicyControl$Filter;
    .locals 7

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/util/ArraySet;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, ","

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    array-length v2, p0

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    if-ge v3, v2, :cond_2

    .line 24
    .line 25
    aget-object v4, p0, v3

    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const-string v5, "-"

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    const/4 v6, 0x1

    .line 44
    if-le v5, v6, :cond_1

    .line 45
    .line 46
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    new-instance p0, Lcom/android/server/wm/PolicyControl$Filter;

    .line 61
    .line 62
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/PolicyControl$Filter;-><init>(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 63
    .line 64
    .line 65
    return-object p0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    const-string v0, "Filter["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    const-string v0, "allowList"

    iget-object v1, p0, Lcom/android/server/wm/PolicyControl$Filter;->mAllowList:Landroid/util/ArraySet;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/PolicyControl$Filter;->dump(Ljava/lang/String;Landroid/util/ArraySet;Ljava/io/PrintWriter;)V

    const/16 v0, 0x2c

    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4
    const-string v0, "blockList"

    iget-object p0, p0, Lcom/android/server/wm/PolicyControl$Filter;->mBlockList:Landroid/util/ArraySet;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/PolicyControl$Filter;->dump(Ljava/lang/String;Landroid/util/ArraySet;Ljava/io/PrintWriter;)V

    const/16 p0, 0x5d

    .line 5
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(C)V

    return-void
.end method

.method public final matches(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-lt v1, v2, :cond_1

    .line 9
    .line 10
    const/16 v3, 0x63

    .line 11
    .line 12
    if-gt v1, v3, :cond_1

    .line 13
    .line 14
    move v1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move v1, v0

    .line 17
    :goto_0
    const-string v3, "apps"

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    iget-object v4, p0, Lcom/android/server/wm/PolicyControl$Filter;->mBlockList:Landroid/util/ArraySet;

    .line 22
    .line 23
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_2

    .line 28
    .line 29
    return v0

    .line 30
    :cond_2
    iget-object v4, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v5, p0, Lcom/android/server/wm/PolicyControl$Filter;->mBlockList:Landroid/util/ArraySet;

    .line 33
    .line 34
    const-string v6, "*"

    .line 35
    .line 36
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-nez v5, :cond_6

    .line 41
    .line 42
    iget-object v5, p0, Lcom/android/server/wm/PolicyControl$Filter;->mBlockList:Landroid/util/ArraySet;

    .line 43
    .line 44
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    if-eqz v1, :cond_4

    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/wm/PolicyControl$Filter;->mAllowList:Landroid/util/ArraySet;

    .line 54
    .line 55
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    return v2

    .line 62
    :cond_4
    iget-object p1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/server/wm/PolicyControl$Filter;->mAllowList:Landroid/util/ArraySet;

    .line 65
    .line 66
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_5

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/wm/PolicyControl$Filter;->mAllowList:Landroid/util/ArraySet;

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-eqz p0, :cond_6

    .line 79
    .line 80
    :cond_5
    move v0, v2

    .line 81
    :cond_6
    :goto_1
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/PrintWriter;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/android/server/wm/PolicyControl$Filter;->dump(Ljava/io/PrintWriter;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method
