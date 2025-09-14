.class public final synthetic Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget p0, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    check-cast p1, Ljava/lang/String;

    .line 4
    .line 5
    check-cast p2, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;

    .line 6
    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v0, "Notifying "

    .line 13
    .line 14
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, " of system ready"

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "SystemFileBackupManager"

    .line 30
    .line 31
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->onSystemReady()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_0
    const-string p0, "SystemFileBackupManager"

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getControllerName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string v0, "Saving files for "

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    const-string p0, "Failed to save files: "

    .line 54
    .line 55
    const-string p1, "Saving files on "

    .line 56
    .line 57
    iget-object v0, p2, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mLock:Ljava/lang/Object;

    .line 58
    .line 59
    monitor-enter v0

    .line 60
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getControllerDir()Ljava/io/File;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const/16 v3, 0x10

    .line 67
    .line 68
    new-array v3, v3, [B

    .line 69
    .line 70
    iget-object v4, p2, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->random:Ljava/security/SecureRandom;

    .line 71
    .line 72
    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 73
    .line 74
    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v5, "backup_item_"

    .line 78
    .line 79
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const/16 v5, 0xa

    .line 83
    .line 84
    invoke-static {v3, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-nez v2, :cond_0

    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    goto :goto_2

    .line 110
    :cond_0
    :goto_0
    const-string v2, "AbstractBackupController"

    .line 111
    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .line 126
    .line 127
    :try_start_1
    invoke-virtual {p2, v1}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->onSaveFiles(Ljava/io/File;)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_1

    .line 132
    .line 133
    invoke-virtual {p2, v1}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->addBackupItemList(Ljava/io/File;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->writeBackupItems()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->cleanUpOutdatedFiles()V

    .line 140
    .line 141
    .line 142
    iget-object p1, p2, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mLastSelectedBackupItemIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    const/4 v2, -0x1

    .line 149
    if-eq p1, v2, :cond_2

    .line 150
    .line 151
    invoke-virtual {p2, v2}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->setLastSelectedItemIndex(I)V

    .line 152
    .line 153
    .line 154
    iget-object p1, p2, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mLastSelectedBackupItemIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    const-string v2, "last_selected_item"

    .line 161
    .line 162
    const/4 v3, 0x0

    .line 163
    invoke-virtual {p2, p1, v2, v3}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->putBackupConfigInt(ILjava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :catch_0
    move-exception p1

    .line 168
    :try_start_2
    const-string p2, "AbstractBackupController"

    .line 169
    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 186
    .line 187
    .line 188
    move-result p0

    .line 189
    if-eqz p0, :cond_2

    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 192
    .line 193
    .line 194
    :cond_2
    :goto_1
    monitor-exit v0

    .line 195
    return-void

    .line 196
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 197
    throw p0

    .line 198
    nop

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
