.class public final synthetic Lcom/android/server/notification/NotificationComparator$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationComparator$1;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationComparator$1;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/NotificationComparator$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationComparator$1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/notification/NotificationComparator$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationComparator$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationComparator$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/notification/NotificationComparator$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    .line 4
    .line 5
    const-string v1, "DefaultPhonApp Changed : "

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/notification/NotificationComparator$1;->this$0:Lcom/android/server/notification/NotificationComparator;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/server/notification/NotificationComparator;->mStateLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v2

    .line 12
    :try_start_0
    iget-object v3, v0, Lcom/android/server/notification/NotificationComparator$1;->this$0:Lcom/android/server/notification/NotificationComparator;

    .line 13
    .line 14
    const-string v4, "android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME"

    .line 15
    .line 16
    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    iput-object p0, v3, Lcom/android/server/notification/NotificationComparator;->mDefaultPhoneApp:Ljava/lang/String;

    .line 21
    .line 22
    const-string p0, "NotificationComparator"

    .line 23
    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/notification/NotificationComparator$1;->this$0:Lcom/android/server/notification/NotificationComparator;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/server/notification/NotificationComparator;->mDefaultPhoneApp:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    monitor-exit v2

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0
.end method
