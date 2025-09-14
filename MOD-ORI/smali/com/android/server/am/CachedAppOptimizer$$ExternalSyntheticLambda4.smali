.class public final synthetic Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Exception;

    .line 2
    .line 3
    sget-object p0, Lcom/android/server/am/CachedAppOptimizer;->KEY_USE_COMPACTION:Ljava/lang/String;

    .line 4
    .line 5
    const-string p0, "ActivityManager"

    .line 6
    .line 7
    const-string p1, "Unable to parse binderfs stats"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void
.end method
