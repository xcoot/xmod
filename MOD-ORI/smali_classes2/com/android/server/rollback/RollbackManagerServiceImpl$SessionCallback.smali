.class public final Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;
.super Landroid/content/pm/PackageInstaller$SessionCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onActiveChanged(IZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onBadgingChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCreated(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onFinished(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    .line 7
    .line 8
    const-string v1, "RollbackManager"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "SessionCallback.onFinished id="

    .line 15
    .line 16
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, " success="

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getRollbackForSession(I)Lcom/android/server/rollback/Rollback;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/android/server/rollback/Rollback;->isEnabling()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    iget v2, v0, Lcom/android/server/rollback/Rollback;->mOriginalSessionId:I

    .line 52
    .line 53
    if-eq p1, v2, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    if-eqz p2, :cond_2

    .line 57
    .line 58
    iget-object p1, v0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_3

    .line 65
    .line 66
    iget-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->completeEnableRollback(Lcom/android/server/rollback/Rollback;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->makeRollbackAvailable(Lcom/android/server/rollback/Rollback;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v2, "Delete rollback id="

    .line 83
    .line 84
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v2, v0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 88
    .line 89
    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v2, " for failed session id="

    .line 97
    .line 98
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    iget-object p2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 112
    .line 113
    iget-object p2, p2, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 114
    .line 115
    check-cast p2, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 121
    .line 122
    new-instance p2, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v1, "Session "

    .line 125
    .line 126
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string p1, " failed"

    .line 133
    .line 134
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p0, v0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_3
    :goto_0
    return-void
.end method

.method public final onProgressChanged(IF)V
    .locals 0

    .line 1
    return-void
.end method
