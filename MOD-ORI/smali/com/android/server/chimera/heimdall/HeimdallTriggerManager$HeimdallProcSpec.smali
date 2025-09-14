.class public final Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public allowAlwaysRunning:Z

.field public alwaysRunningSpecSize:I

.field public final alwaysRunningSpecSizeInitial:I

.field public ignoreAlwaysRunningSpecKill:Z

.field public ignoreGlobalKill:Z

.field public ignoreSpecKill:Z

.field public final procName:Ljava/lang/String;

.field public specSize:I

.field public specVersion:I


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;[Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    aget-object v1, p2, v0

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    aget-object v2, p2, v2

    .line 9
    .line 10
    const-string v3, "1"

    .line 11
    .line 12
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v4, 0x3

    .line 17
    aget-object v4, p2, v4

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x4

    .line 24
    const/4 v5, 0x0

    .line 25
    :try_start_0
    aget-object v4, p2, v4

    .line 26
    .line 27
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move v4, v5

    .line 33
    :goto_0
    const/4 v6, 0x5

    .line 34
    :try_start_1
    aget-object v6, p2, v6

    .line 35
    .line 36
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 40
    goto :goto_1

    .line 41
    :catch_1
    move v6, v5

    .line 42
    :goto_1
    const/4 v7, 0x6

    .line 43
    :try_start_2
    aget-object p2, p2, v7

    .line 44
    .line 45
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result p2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 49
    goto :goto_2

    .line 50
    :catch_2
    move p2, v5

    .line 51
    :goto_2
    iput p2, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->alwaysRunningSpecSizeInitial:I

    .line 52
    .line 53
    if-gez v4, :cond_0

    .line 54
    .line 55
    move v2, v0

    .line 56
    goto :goto_3

    .line 57
    :cond_0
    if-nez v4, :cond_1

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    const/high16 v4, 0x40000

    .line 63
    .line 64
    :cond_1
    :goto_3
    if-lez v6, :cond_2

    .line 65
    .line 66
    move v7, v0

    .line 67
    goto :goto_4

    .line 68
    :cond_2
    move v7, v5

    .line 69
    :goto_4
    if-le v6, v0, :cond_3

    .line 70
    .line 71
    goto :goto_5

    .line 72
    :cond_3
    move v0, v5

    .line 73
    :goto_5
    if-nez v0, :cond_4

    .line 74
    .line 75
    iget v5, p1, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mAlwaysRunningGlobalQuotaSpec:I

    .line 76
    .line 77
    if-ge p2, v5, :cond_4

    .line 78
    .line 79
    move p2, v5

    .line 80
    :cond_4
    iput-object v1, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->procName:Ljava/lang/String;

    .line 81
    .line 82
    iput v4, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->specSize:I

    .line 83
    .line 84
    iput-boolean v3, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->ignoreGlobalKill:Z

    .line 85
    .line 86
    iput-boolean v2, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->ignoreSpecKill:Z

    .line 87
    .line 88
    iput-boolean v7, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->allowAlwaysRunning:Z

    .line 89
    .line 90
    iput-boolean v0, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->ignoreAlwaysRunningSpecKill:Z

    .line 91
    .line 92
    iput p2, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->alwaysRunningSpecSize:I

    .line 93
    .line 94
    iget p1, p1, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mSpecVersion:I

    .line 95
    .line 96
    iput p1, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->specVersion:I

    .line 97
    .line 98
    return-void
.end method
