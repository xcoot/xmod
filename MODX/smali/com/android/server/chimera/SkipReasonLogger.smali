.class public final Lcom/android/server/chimera/SkipReasonLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mSkippedPids:[Ljava/util/Set;

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lcom/android/server/chimera/SkipReasonLogger$Reason;->values()[Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 7
    move-result-object v0

    .line 8
    array-length v0, v0

    .line 9
    new-array v0, v0, [Ljava/util/Set;

    .line 11
    iput-object v0, p0, Lcom/android/server/chimera/SkipReasonLogger;->mSkippedPids:[Ljava/util/Set;

    .line 13
    iput-object p1, p0, Lcom/android/server/chimera/SkipReasonLogger;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 15
    const/4 p1, 0x0

    .line 16
    :goto_0
    invoke-static {}, Lcom/android/server/chimera/SkipReasonLogger$Reason;->values()[Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 19
    move-result-object v0

    .line 20
    array-length v0, v0

    .line 21
    if-ge p1, v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/android/server/chimera/SkipReasonLogger;->mSkippedPids:[Ljava/util/Set;

    .line 25
    new-instance v1, Ljava/util/HashSet;

    .line 27
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 30
    aput-object v1, v0, p1

    .line 32
    add-int/lit8 p1, p1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public final mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/android/server/chimera/SkipReasonLogger;->mSkippedPids:[Ljava/util/Set;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget-object p0, p0, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final mark(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/server/chimera/ChimeraAppInfo;->getPidList()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 2
    iget-object v1, p0, Lcom/android/server/chimera/SkipReasonLogger;->mSkippedPids:[Ljava/util/Set;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final printLog(Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/server/chimera/SkipReasonLogger$Reason;->values()[Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v3, v1, :cond_2

    .line 10
    aget-object v4, v0, v3

    .line 12
    iget-object v5, p0, Lcom/android/server/chimera/SkipReasonLogger;->mSkippedPids:[Ljava/util/Set;

    .line 14
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 17
    move-result v6

    .line 18
    aget-object v5, v5, v6

    .line 20
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    .line 23
    move-result v5

    .line 24
    if-nez v5, :cond_1

    .line 26
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 29
    move-result-object v5

    .line 30
    iget-object v6, p0, Lcom/android/server/chimera/SkipReasonLogger;->mSkippedPids:[Ljava/util/Set;

    .line 32
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 35
    move-result v4

    .line 36
    aget-object v4, v6, v4

    .line 38
    new-instance v6, Ljava/lang/StringBuilder;

    .line 40
    const-string v7, "Skipped reason: "

    .line 42
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    const/4 v7, 0x2

    .line 46
    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v5, ", pids: "

    .line 55
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 61
    move-result-object v4

    .line 62
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_0

    .line 68
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v5

    .line 72
    check-cast v5, Ljava/lang/Integer;

    .line 74
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 77
    move-result v5

    .line 78
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const-string v5, " "

    .line 83
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    goto :goto_1

    .line 87
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v4

    .line 91
    iget-object v5, p0, Lcom/android/server/chimera/SkipReasonLogger;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 93
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    invoke-static {p1, v4}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 101
    goto :goto_0

    .line 102
    :cond_2
    return-void
.end method
