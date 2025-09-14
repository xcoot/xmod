.class public final synthetic Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ContentProviderHelper;

.field public final synthetic f$1:Lcom/android/server/am/ProcessRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/ContentProviderHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/am/ProcessRecord;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/ContentProviderHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/am/ProcessRecord;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 15
    .line 16
    const-wide/32 v3, 0x40008

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, p1, v3, v4, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 24
    .line 25
    if-eqz p1, :cond_8

    .line 26
    .line 27
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 28
    .line 29
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_8

    .line 34
    .line 35
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 36
    .line 37
    array-length v2, p1

    .line 38
    const/4 v3, 0x0

    .line 39
    move v4, v3

    .line 40
    :goto_0
    if-ge v4, v2, :cond_8

    .line 41
    .line 42
    aget-object v5, p1, v4

    .line 43
    .line 44
    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    const/4 v7, 0x1

    .line 53
    if-nez v6, :cond_1

    .line 54
    .line 55
    iget-boolean v6, v5, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 56
    .line 57
    if-eqz v6, :cond_0

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_0
    move v6, v3

    .line 61
    goto :goto_2

    .line 62
    :cond_1
    :goto_1
    move v6, v7

    .line 63
    :goto_2
    invoke-virtual {v0, v5}, Lcom/android/server/am/ContentProviderHelper;->isSingletonOrSystemUserOnly(Landroid/content/pm/ProviderInfo;)Z

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    if-eqz v8, :cond_3

    .line 68
    .line 69
    iget v8, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 70
    .line 71
    if-nez v8, :cond_2

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_2
    move v8, v3

    .line 75
    goto :goto_4

    .line 76
    :cond_3
    :goto_3
    move v8, v7

    .line 77
    :goto_4
    iget-object v9, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 78
    .line 79
    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    iget-object v10, v5, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    .line 84
    .line 85
    if-eqz v10, :cond_5

    .line 86
    .line 87
    iget-object v11, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 88
    .line 89
    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v11, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v10
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    if-eqz v10, :cond_4

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_4
    move v7, v3

    .line 99
    :cond_5
    :goto_5
    const-string v10, "ContentProviderHelper"

    .line 100
    .line 101
    if-eqz v6, :cond_7

    .line 102
    .line 103
    if-eqz v8, :cond_7

    .line 104
    .line 105
    if-eqz v9, :cond_6

    .line 106
    .line 107
    if-eqz v7, :cond_7

    .line 108
    .line 109
    :cond_6
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v7, "Installing "

    .line 115
    .line 116
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    invoke-static {v10, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    invoke-interface {v1, v5}, Landroid/app/IApplicationThread;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    .line 130
    .line 131
    .line 132
    goto :goto_6

    .line 133
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v7, "Skipping "

    .line 139
    .line 140
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-static {v10, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 151
    .line 152
    .line 153
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :catch_0
    :cond_8
    return-void
.end method
