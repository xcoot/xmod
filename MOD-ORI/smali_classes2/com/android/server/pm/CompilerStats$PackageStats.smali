.class public final Lcom/android/server/pm/CompilerStats$PackageStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final compileTimePerCodePath:Ljava/util/Map;

.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->packageName:Ljava/lang/String;

    .line 5
    .line 6
    new-instance p1, Landroid/util/ArrayMap;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    invoke-direct {p1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final setCompileTime(JLjava/lang/String;)V
    .locals 3

    .line 1
    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 2
    .line 3
    invoke-virtual {p3, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    iget-object v0, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    cmp-long v1, p1, v1

    .line 19
    .line 20
    if-gtz v1, :cond_0

    .line 21
    .line 22
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    .line 23
    .line 24
    check-cast p0, Landroid/util/ArrayMap;

    .line 25
    .line 26
    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    .line 33
    .line 34
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p0, Landroid/util/ArrayMap;

    .line 39
    .line 40
    invoke-virtual {p0, p3, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :goto_0
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method
