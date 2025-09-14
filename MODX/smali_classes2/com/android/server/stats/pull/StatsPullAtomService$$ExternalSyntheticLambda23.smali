.class public final synthetic Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field public final synthetic f$0:Lcom/android/server/stats/pull/StatsPullAtomService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda23;->f$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda23;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda23;->f$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda23;->f$1:I

    .line 4
    .line 5
    sget v0, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->highWaterMarkFilePrefix(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 p0, 0x5f

    .line 27
    .line 28
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0
.end method
