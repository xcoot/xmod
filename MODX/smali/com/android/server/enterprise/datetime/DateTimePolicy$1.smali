.class public final Lcom/android/server/enterprise/datetime/DateTimePolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/datetime/DateTimePolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$1;->this$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string p1, "DateTimePolicyService"

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    const-string p1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 22
    iget-object p1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$1;->this$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    .line 24
    iget-object p1, p1, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfoLock:Ljava/lang/Object;

    .line 26
    monitor-enter p1

    .line 27
    :try_start_0
    iget-object p2, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$1;->this$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    .line 29
    iget-object p2, p2, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    .line 31
    if-eqz p2, :cond_0

    .line 33
    invoke-virtual {p2}, Lcom/samsung/android/knox/datetime/NtpInfo;->getServer()Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 37
    if-eqz p2, :cond_0

    .line 39
    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$1;->this$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    new-instance p2, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda0;

    .line 46
    invoke-direct {p2, p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/datetime/DateTimePolicy;)V

    .line 49
    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    :goto_0
    monitor-exit p1

    .line 56
    goto :goto_2

    .line 57
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0

    .line 59
    :cond_1
    :goto_2
    return-void
.end method
