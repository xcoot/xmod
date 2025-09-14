.class public final Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;


# static fields
.field public static volatile mPidCompacting:I = -0x1


# virtual methods
.method public final getRss(I)[J
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/os/Process;->getRss(I)[J

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final performCompaction(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;I)V
    .locals 0

    .line 1
    sput p2, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;->mPidCompacting:I

    .line 3
    sget-object p0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 5
    if-ne p1, p0, :cond_0

    .line 7
    const/4 p0, 0x3

    .line 8
    invoke-static {p2, p0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smcompactProcess(II)I

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object p0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 14
    if-ne p1, p0, :cond_1

    .line 16
    const/4 p0, 0x1

    .line 17
    invoke-static {p2, p0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smcompactProcess(II)I

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    sget-object p0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->ANON:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 23
    if-ne p1, p0, :cond_2

    .line 25
    const/4 p0, 0x2

    .line 26
    invoke-static {p2, p0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smcompactProcess(II)I

    .line 29
    :cond_2
    :goto_0
    const/4 p0, -0x1

    .line 30
    sput p0, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;->mPidCompacting:I

    .line 32
    return-void
.end method
