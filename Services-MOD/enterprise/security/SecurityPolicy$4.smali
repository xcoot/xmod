.class public final Lcom/android/server/enterprise/security/SecurityPolicy$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

.field public final synthetic val$lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$4;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 3
    iput-object p2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$4;->val$lock:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string p2, "android.intent.action.MEDIA_MOUNTED"

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 13
    iget-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$4;->val$lock:Ljava/lang/Object;

    .line 15
    monitor-enter p1

    .line 16
    :try_start_0
    iget-object p2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$4;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p2, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    .line 21
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy$4;->val$lock:Ljava/lang/Object;

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :catch_0
    :try_start_1
    const-string p0, "SecurityPolicy"

    .line 31
    const-string/jumbo p2, "formatStorageCard - IllegalMonitorStateException"

    .line 34
    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :goto_0
    monitor-exit p1

    .line 38
    goto :goto_2

    .line 39
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p0

    .line 41
    :cond_0
    :goto_2
    return-void
.end method
