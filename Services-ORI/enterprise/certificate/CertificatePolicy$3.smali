.class public final Lcom/android/server/enterprise/certificate/CertificatePolicy$3;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

.field public final synthetic val$adminNotification:Landroid/content/Intent;

.field public final synthetic val$userId:I

.field public final synthetic val$userMsgModName:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I[Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->val$userId:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->val$userMsgModName:[Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->val$adminNotification:Landroid/content/Intent;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    const-string v0, "Sending certificate failure intent to user "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    iget v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->val$userId:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 10
    .line 11
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPersonaManagerAdapter$2()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    iget v5, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->val$userId:I

    .line 19
    .line 20
    check-cast v4, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 21
    .line 22
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 32
    .line 33
    iget-object v3, v3, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 34
    .line 35
    iget v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->val$userId:I

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 49
    .line 50
    iget-boolean v4, v4, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootCompleted:Z

    .line 51
    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    const-string v4, "CertificatePolicy"

    .line 55
    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v0, " containing: "

    .line 65
    .line 66
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->val$userMsgModName:[Ljava/lang/String;

    .line 70
    .line 71
    const/4 v6, 0x0

    .line 72
    aget-object v0, v0, v6

    .line 73
    .line 74
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v0, " (module), "

    .line 78
    .line 79
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->val$userMsgModName:[Ljava/lang/String;

    .line 83
    .line 84
    const/4 v6, 0x1

    .line 85
    aget-object v0, v0, v6

    .line 86
    .line 87
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v0, " (message), "

    .line 91
    .line 92
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->val$userId:I

    .line 96
    .line 97
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v0, " (userId)"

    .line 101
    .line 102
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 113
    .line 114
    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->val$adminNotification:Landroid/content/Intent;

    .line 117
    .line 118
    new-instance v4, Landroid/os/UserHandle;

    .line 119
    .line 120
    invoke-direct {v4, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 121
    .line 122
    .line 123
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_CERTIFICATE"

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p0, v4, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    .line 128
    .line 129
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 134
    .line 135
    .line 136
    throw p0
.end method
