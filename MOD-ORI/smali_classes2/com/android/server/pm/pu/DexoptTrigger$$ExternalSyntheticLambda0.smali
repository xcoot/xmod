.class public final synthetic Lcom/android/server/pm/pu/DexoptTrigger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/pu/DexoptTrigger;

.field public final synthetic f$1:Lcom/android/server/pm/pu/ProfileUtilizationService$App;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/pu/DexoptTrigger;Lcom/android/server/pm/pu/ProfileUtilizationService$App;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/pu/DexoptTrigger$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/pu/DexoptTrigger;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/pu/DexoptTrigger$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/pm/pu/ProfileUtilizationService$App;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/pu/DexoptTrigger$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/pu/DexoptTrigger;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/pu/DexoptTrigger$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/pm/pu/ProfileUtilizationService$App;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v1, "PU_DexoptTrigger"

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, "Trigger dexopt for "

    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->packageName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->packageName:Ljava/lang/String;

    .line 38
    .line 39
    invoke-interface {v1, v2}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    if-nez v2, :cond_0

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    :goto_0
    const/4 v3, 0x1

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    move v2, v3

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/4 v2, 0x0

    .line 57
    :goto_1
    if-eqz v2, :cond_2

    .line 58
    .line 59
    invoke-static {v1, p0}, Lcom/android/server/pm/pu/DexoptTrigger;->performDexopt(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Lcom/android/server/pm/pu/ProfileUtilizationService$App;)I

    .line 60
    .line 61
    .line 62
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    goto :goto_2

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto/16 :goto_8

    .line 66
    .line 67
    :cond_2
    const/16 v4, 0x1e

    .line 68
    .line 69
    :goto_2
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    .line 70
    .line 71
    .line 72
    const-string v1, "PU_DexoptTrigger"

    .line 73
    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    iget-object v6, p0, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->packageName:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v6, " result: "

    .line 85
    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    if-eqz v2, :cond_3

    .line 90
    .line 91
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    goto :goto_3

    .line 96
    :cond_3
    const-string/jumbo v6, "removed"

    .line 97
    .line 98
    .line 99
    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    iget-object v5, v0, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    .line 110
    .line 111
    monitor-enter v5

    .line 112
    const/16 v1, 0x28

    .line 113
    .line 114
    if-ne v4, v1, :cond_5

    .line 115
    .line 116
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->mState:Lcom/android/server/pm/pu/ProfileUtilizationService$App$State;

    .line 117
    .line 118
    sget-object v1, Lcom/android/server/pm/pu/ProfileUtilizationService$App$State;->OPTIMIZED:Lcom/android/server/pm/pu/ProfileUtilizationService$App$State;

    .line 119
    .line 120
    if-ne v0, v1, :cond_4

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_4
    iget v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->mCancelCount:I

    .line 124
    .line 125
    add-int/2addr v0, v3

    .line 126
    iput v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->mCancelCount:I

    .line 127
    .line 128
    sget-object v0, Lcom/android/server/pm/pu/ProfileUtilizationService$App$State;->CANCELLED:Lcom/android/server/pm/pu/ProfileUtilizationService$App$State;

    .line 129
    .line 130
    iput-object v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->mState:Lcom/android/server/pm/pu/ProfileUtilizationService$App$State;

    .line 131
    .line 132
    new-instance v0, Landroid/os/CancellationSignal;

    .line 133
    .line 134
    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    .line 135
    .line 136
    .line 137
    iput-object v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 138
    .line 139
    :goto_4
    monitor-exit v5

    .line 140
    goto :goto_6

    .line 141
    :catchall_1
    move-exception p0

    .line 142
    goto :goto_7

    .line 143
    :cond_5
    if-eqz v2, :cond_6

    .line 144
    .line 145
    sget-object v1, Lcom/android/server/pm/pu/ProfileUtilizationService$App$State;->OPTIMIZED:Lcom/android/server/pm/pu/ProfileUtilizationService$App$State;

    .line 146
    .line 147
    iput-object v1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->mState:Lcom/android/server/pm/pu/ProfileUtilizationService$App$State;

    .line 148
    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 150
    .line 151
    .line 152
    move-result-wide v1

    .line 153
    iput-wide v1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->mOptimizedTimeMs:J

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_6
    sget-object v1, Lcom/android/server/pm/pu/ProfileUtilizationService$App$State;->REMOVED:Lcom/android/server/pm/pu/ProfileUtilizationService$App$State;

    .line 157
    .line 158
    iput-object v1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->mState:Lcom/android/server/pm/pu/ProfileUtilizationService$App$State;

    .line 159
    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 161
    .line 162
    .line 163
    move-result-wide v1

    .line 164
    iput-wide v1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->mOptimizedTimeMs:J

    .line 165
    .line 166
    :goto_5
    iget-object v1, v0, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    .line 167
    .line 168
    check-cast v1, Ljava/util/HashSet;

    .line 169
    .line 170
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    iget-object p0, v0, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    .line 174
    .line 175
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 176
    .line 177
    .line 178
    monitor-exit v5

    .line 179
    :goto_6
    return-void

    .line 180
    :goto_7
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 181
    throw p0

    .line 182
    :goto_8
    if-eqz v1, :cond_7

    .line 183
    .line 184
    :try_start_2
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 185
    .line 186
    .line 187
    goto :goto_9

    .line 188
    :catchall_2
    move-exception v0

    .line 189
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 190
    .line 191
    .line 192
    :cond_7
    :goto_9
    throw p0
.end method
