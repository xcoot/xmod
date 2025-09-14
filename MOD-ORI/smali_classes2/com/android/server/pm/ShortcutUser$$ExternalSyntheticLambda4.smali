.class public final synthetic Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutUser;

.field public final synthetic f$1:Lcom/android/server/pm/ShortcutService;

.field public final synthetic f$2:[I

.field public final synthetic f$3:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutUser;Lcom/android/server/pm/ShortcutService;[I[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/ShortcutUser;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/pm/ShortcutService;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda4;->f$2:[I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda4;->f$3:[I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/ShortcutUser;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/pm/ShortcutService;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda4;->f$2:[I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda4;->f$3:[I

    .line 8
    .line 9
    check-cast p1, Lcom/android/server/pm/ShortcutPackage;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v3, p1, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 15
    .line 16
    iget v4, v0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    .line 17
    .line 18
    invoke-virtual {v1, v4, v3}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(ILjava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    iget-object v5, p1, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1, v5, v4}, Lcom/android/server/pm/ShortcutService;->injectApplicationInfoWithUninstalled(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 33
    .line 34
    const v3, 0x8000

    .line 35
    .line 36
    .line 37
    and-int/2addr v1, v3

    .line 38
    if-ne v1, v3, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v1, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/android/server/pm/ShortcutService;->mSmartSwitchBackupAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :cond_1
    :goto_0
    invoke-virtual {v0, v5}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v3, "Shortcuts for package "

    .line 58
    .line 59
    const-string v4, "ShortcutService"

    .line 60
    .line 61
    const/4 v6, 0x0

    .line 62
    const/4 v7, 0x1

    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    new-array v8, v7, [Z

    .line 66
    .line 67
    new-instance v9, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda3;

    .line 68
    .line 69
    const/4 v10, 0x1

    .line 70
    invoke-direct {v9, v10, v8}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda3;-><init>(I[Z)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v9}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutStopWhen(Ljava/util/function/Function;)V

    .line 74
    .line 75
    .line 76
    aget-boolean v8, v8, v6

    .line 77
    .line 78
    if-eqz v8, :cond_2

    .line 79
    .line 80
    new-instance v8, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v9, " are being restored. Existing non-manifeset shortcuts will be overwritten."

    .line 89
    .line 90
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    :cond_2
    if-eqz v1, :cond_4

    .line 101
    .line 102
    iget-object v8, v1, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 103
    .line 104
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    sub-int/2addr v8, v7

    .line 109
    :goto_1
    if-ltz v8, :cond_4

    .line 110
    .line 111
    iget-object v9, v1, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 112
    .line 113
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    check-cast v9, Landroid/content/pm/ShortcutInfo;

    .line 118
    .line 119
    if-eqz v9, :cond_3

    .line 120
    .line 121
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    .line 122
    .line 123
    .line 124
    move-result v10

    .line 125
    if-nez v10, :cond_3

    .line 126
    .line 127
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    .line 128
    .line 129
    .line 130
    move-result v10

    .line 131
    if-eqz v10, :cond_3

    .line 132
    .line 133
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    if-nez v10, :cond_3

    .line 138
    .line 139
    const-string v10, " - dynamic shortcut are being kept."

    .line 140
    .line 141
    invoke-static {v3, v5, v10, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v9}, Lcom/android/server/pm/ShortcutPackage;->forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    .line 145
    .line 146
    .line 147
    :cond_3
    add-int/lit8 v8, v8, -0x1

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->isAppSearchEnabled()Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-nez v1, :cond_5

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_5
    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda26;

    .line 158
    .line 159
    invoke-direct {v1, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/pm/ShortcutPackage;)V

    .line 160
    .line 161
    .line 162
    invoke-static {v1}, Lcom/android/server/pm/ShortcutPackage;->runAsSystem(Ljava/lang/Runnable;)V

    .line 163
    .line 164
    .line 165
    :goto_2
    iput-object v0, p1, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 166
    .line 167
    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    .line 168
    .line 169
    invoke-virtual {v0, v5, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    aget v0, v2, v6

    .line 173
    .line 174
    add-int/2addr v0, v7

    .line 175
    aput v0, v2, v6

    .line 176
    .line 177
    aget v0, p0, v6

    .line 178
    .line 179
    iget-object v1, p1, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 180
    .line 181
    monitor-enter v1

    .line 182
    :try_start_0
    iget-object p1, p1, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 183
    .line 184
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    add-int/2addr p1, v0

    .line 190
    aput p1, p0, v6

    .line 191
    .line 192
    :goto_3
    return-void

    .line 193
    :catchall_0
    move-exception p0

    .line 194
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    throw p0
.end method
