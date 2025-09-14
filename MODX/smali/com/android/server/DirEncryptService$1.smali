.class public final Lcom/android/server/DirEncryptService$1;
.super Landroid/os/IVoldTaskListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/DirEncryptService;


# direct methods
.method public constructor <init>(Lcom/android/server/DirEncryptService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/DirEncryptService$1;->this$0:Lcom/android/server/DirEncryptService;

    .line 3
    invoke-direct {p0}, Landroid/os/IVoldTaskListener$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onFinished(ILandroid/os/PersistableBundle;)V
    .locals 0

    .line 1
    const-string/jumbo p0, "onFinished ::"

    .line 4
    const-string p2, "DirEncryptService"

    .line 6
    invoke-static {p1, p0, p2}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public final onStatus(ILandroid/os/PersistableBundle;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    const/16 v3, 0x2ae

    .line 9
    if-ne v1, v3, :cond_0

    .line 11
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 14
    move-result v7

    .line 15
    const-string v8, "DirEncryptService"

    .line 17
    const-string v9, "Encrypting storage card failed"

    .line 19
    const/4 v4, 0x1

    .line 20
    const/4 v5, 0x1

    .line 21
    const/4 v6, 0x0

    .line 22
    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/16 v3, 0x2ab

    .line 28
    if-ne v1, v3, :cond_3

    .line 30
    const-string/jumbo v3, "description"

    .line 33
    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 37
    const-string/jumbo v4, "status"

    .line 40
    invoke-virtual {v2, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 43
    move-result v4

    .line 44
    const-string/jumbo v5, "success"

    .line 47
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_2

    .line 53
    const/4 v3, 0x1

    .line 54
    if-ne v4, v3, :cond_1

    .line 56
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 59
    move-result v8

    .line 60
    const-string v9, "DirEncryptService"

    .line 62
    const-string v10, "Encrypting storage card succeeded"

    .line 64
    const/4 v5, 0x1

    .line 65
    const/4 v6, 0x1

    .line 66
    const/4 v7, 0x1

    .line 67
    invoke-static/range {v5 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 74
    move-result v14

    .line 75
    const-string v15, "DirEncryptService"

    .line 77
    const-string v16, "Decrypting storage card succeeded"

    .line 79
    const/4 v11, 0x1

    .line 80
    const/4 v12, 0x1

    .line 81
    const/4 v13, 0x1

    .line 82
    invoke-static/range {v11 .. v16}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 89
    move-result v6

    .line 90
    const-string v7, "DirEncryptService"

    .line 92
    const-string v8, "Encrypting storage card failed"

    .line 94
    const/4 v3, 0x1

    .line 95
    const/4 v4, 0x1

    .line 96
    const/4 v5, 0x0

    .line 97
    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_3
    :goto_0
    iget-object v3, v0, Lcom/android/server/DirEncryptService$1;->this$0:Lcom/android/server/DirEncryptService;

    .line 102
    iget-object v3, v3, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    .line 104
    if-eqz v3, :cond_4

    .line 106
    new-instance v4, Lcom/android/server/DirEncryptService$1$1;

    .line 108
    invoke-direct {v4, v0, v1, v2}, Lcom/android/server/DirEncryptService$1$1;-><init>(Lcom/android/server/DirEncryptService$1;ILandroid/os/PersistableBundle;)V

    .line 111
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    goto :goto_1

    .line 115
    :cond_4
    const-string v0, "DirEncryptService"

    .line 117
    const-string/jumbo v1, "onStatus mHandler == null"

    .line 120
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :goto_1
    return-void
.end method
