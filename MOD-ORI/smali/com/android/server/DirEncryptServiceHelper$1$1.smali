.class public final Lcom/android/server/DirEncryptServiceHelper$1$1;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/DirEncryptServiceHelper$1;

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/server/DirEncryptServiceHelper$1;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper$1$1;->this$1:Lcom/android/server/DirEncryptServiceHelper$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/DirEncryptServiceHelper$1$1;->val$intent:Landroid/content/Intent;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$1$1;->val$intent:Landroid/content/Intent;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "received "

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "DirEncryptServiceHelper"

    .line 23
    .line 24
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    const-string/jumbo v1, "com.samsung.android.security.SemSdCardEncryption.UNMOUNT_POLICY"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    const-string v0, "Unmount policy noti pressed"

    .line 37
    .line 38
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper$1$1;->this$1:Lcom/android/server/DirEncryptServiceHelper$1;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper$1;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    .line 46
    .line 47
    const/16 v0, 0xa

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$1$1;->this$1:Lcom/android/server/DirEncryptServiceHelper$1;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper$1;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    .line 68
    .line 69
    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mBootCompleted:Z

    .line 70
    .line 71
    if-nez v0, :cond_1

    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    const-string v0, "Switch User"

    .line 75
    .line 76
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$1$1;->this$1:Lcom/android/server/DirEncryptServiceHelper$1;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper$1;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->isSdCardEncryped()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$1$1;->this$1:Lcom/android/server/DirEncryptServiceHelper$1;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper$1;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/samsung/android/security/DirEncryptionWrapper;->unmountVolume()Z

    .line 96
    .line 97
    .line 98
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper$1$1;->this$1:Lcom/android/server/DirEncryptServiceHelper$1;

    .line 99
    .line 100
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper$1;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->mountVolume()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :catch_0
    move-exception p0

    .line 109
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    .line 111
    .line 112
    :cond_2
    :goto_0
    return-void
.end method
