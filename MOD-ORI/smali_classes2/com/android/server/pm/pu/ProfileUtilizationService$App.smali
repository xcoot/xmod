.class public final Lcom/android/server/pm/pu/ProfileUtilizationService$App;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCancelCount:I

.field public mCancellationSignal:Landroid/os/CancellationSignal;

.field public mOptimizedTimeMs:J

.field public mResult:Lcom/android/server/art/model/DexoptResult;

.field public mState:Lcom/android/server/pm/pu/ProfileUtilizationService$App$State;

.field public final packageName:Ljava/lang/String;

.field public final weight:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/server/pm/pu/ProfileUtilizationService$App$State;->CREATED:Lcom/android/server/pm/pu/ProfileUtilizationService$App$State;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->mState:Lcom/android/server/pm/pu/ProfileUtilizationService$App$State;

    .line 7
    .line 8
    new-instance v0, Landroid/os/CancellationSignal;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 14
    .line 15
    const-wide/16 v0, -0x1

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->mOptimizedTimeMs:J

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->mCancelCount:I

    .line 21
    .line 22
    iput-object p3, p0, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->packageName:Ljava/lang/String;

    .line 23
    .line 24
    iput-wide p1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->weight:J

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->packageName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ", w="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-wide v1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->weight:J

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ", s="

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->mState:Lcom/android/server/pm/pu/ProfileUtilizationService$App$State;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", optTimeMs="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-wide v1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->mOptimizedTimeMs:J

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", cancelCount="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->mCancelCount:I

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->mResult:Lcom/android/server/art/model/DexoptResult;

    .line 52
    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    const-string v1, ", dexopt="

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->mResult:Lcom/android/server/art/model/DexoptResult;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/android/server/art/model/DexoptResult;->getFinalStatus()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->mResult:Lcom/android/server/art/model/DexoptResult;

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_1

    .line 84
    .line 85
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getDexContainerFileDexoptResults()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_0

    .line 104
    .line 105
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;

    .line 110
    .line 111
    const-string v3, ", dex2oatTimeMs="

    .line 112
    .line 113
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getDex2oatWallTimeMillis()J

    .line 117
    .line 118
    .line 119
    move-result-wide v3

    .line 120
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v3, ", filter="

    .line 124
    .line 125
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getActualCompilerFilter()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    return-object p0
.end method
