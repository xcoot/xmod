.class public final Lcom/android/server/knox/PersonaPolicyManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/PersonaPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/PersonaPolicyManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/knox/PersonaPolicyManagerService$1;->this$0:Lcom/android/server/knox/PersonaPolicyManagerService;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.extra.user_handle"

    .line 7
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 14
    move-result p2

    .line 15
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 23
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 29
    iget-object p0, p0, Lcom/android/server/knox/PersonaPolicyManagerService$1;->this$0:Lcom/android/server/knox/PersonaPolicyManagerService;

    .line 31
    const-string p1, "Removed persona policy file "

    .line 33
    const-string v0, "Failed to delete persona policy file: "

    .line 35
    monitor-enter p0

    .line 36
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/knox/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;

    .line 39
    iget-object v1, p0, Lcom/android/server/knox/PersonaPolicyManagerService;->mPersonaData:Landroid/util/SparseArray;

    .line 41
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 44
    new-instance v1, Ljava/io/File;

    .line 46
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 49
    move-result-object p2

    .line 50
    const-string/jumbo v2, "persona_policies.xml"

    .line 53
    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 59
    move-result p2

    .line 60
    if-nez p2, :cond_0

    .line 62
    const-string p1, "PersonaPolicyManagerService"

    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p2

    .line 80
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception p1

    .line 85
    goto :goto_1

    .line 86
    :cond_0
    const-string p2, "PersonaPolicyManagerService"

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    monitor-exit p0

    .line 108
    goto :goto_2

    .line 109
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    throw p1

    .line 111
    :cond_1
    :goto_2
    return-void
.end method
