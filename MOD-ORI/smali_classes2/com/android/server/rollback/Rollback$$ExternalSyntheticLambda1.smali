.class public final synthetic Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/rollback/Rollback;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Landroid/content/IntentSender;

.field public final synthetic f$4:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/Rollback;Landroid/content/Intent;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/rollback/Rollback;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;->f$1:Landroid/content/Intent;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;->f$2:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;->f$3:Landroid/content/IntentSender;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;->f$4:Ljava/util/List;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/rollback/Rollback;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;->f$1:Landroid/content/Intent;

    .line 4
    .line 5
    iget-object v8, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;->f$2:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;->f$3:Landroid/content/IntentSender;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;->f$4:Ljava/util/List;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 12
    .line 13
    .line 14
    const-string v3, "android.content.pm.extra.STATUS"

    .line 15
    .line 16
    const/4 v9, 0x1

    .line 17
    invoke-virtual {v1, v3, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    const-string p0, "Commit failed"

    .line 25
    .line 26
    invoke-virtual {v0, v9, p0}, Lcom/android/server/rollback/Rollback;->setState(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput-boolean v4, v0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 30
    .line 31
    iget-object p0, v0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 32
    .line 33
    const/4 v0, -0x1

    .line 34
    invoke-virtual {p0, v0}, Landroid/content/rollback/RollbackInfo;->setCommittedSessionId(I)V

    .line 35
    .line 36
    .line 37
    new-instance p0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v0, "Rollback downgrade install failed: "

    .line 40
    .line 41
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v0, "android.content.pm.extra.STATUS_MESSAGE"

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const/4 v0, 0x3

    .line 58
    invoke-static {v0, v8, v2, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(ILandroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_2

    .line 62
    .line 63
    :cond_0
    iget-object v1, v0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_1

    .line 70
    .line 71
    iput-boolean v4, v0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 72
    .line 73
    :cond_1
    iget-object v1, v0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getCausePackages()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    .line 81
    .line 82
    iget-object p0, v0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_2

    .line 97
    .line 98
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 103
    .line 104
    new-instance v3, Ljava/io/File;

    .line 105
    .line 106
    iget-object v5, v0, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    .line 107
    .line 108
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-direct {v3, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v3}, Lcom/android/server/rollback/RollbackStore;->removeFile(Ljava/io/File;)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    iget-object p0, v0, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    .line 120
    .line 121
    invoke-static {v0, p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;Ljava/io/File;)V

    .line 122
    .line 123
    .line 124
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    .line 125
    .line 126
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string p0, "android.content.rollback.extra.STATUS"

    .line 130
    .line 131
    invoke-virtual {v5, p0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    .line 133
    .line 134
    const/4 v4, 0x0

    .line 135
    const/4 v6, 0x0

    .line 136
    const/4 v7, 0x0

    .line 137
    move-object v3, v8

    .line 138
    invoke-virtual/range {v2 .. v7}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .line 140
    .line 141
    :catch_0
    new-instance p0, Landroid/content/Intent;

    .line 142
    .line 143
    const-string v0, "android.intent.action.ROLLBACK_COMMITTED"

    .line 144
    .line 145
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-class v0, Landroid/os/UserManager;

    .line 149
    .line 150
    invoke-virtual {v8, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Landroid/os/UserManager;

    .line 155
    .line 156
    invoke-virtual {v0, v9}, Landroid/os/UserManager;->getUserHandles(Z)Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-eqz v1, :cond_3

    .line 169
    .line 170
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    check-cast v1, Landroid/os/UserHandle;

    .line 175
    .line 176
    const-string v2, "android.permission.MANAGE_ROLLBACKS"

    .line 177
    .line 178
    invoke-virtual {v8, p0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_3
    :goto_2
    return-void
.end method
