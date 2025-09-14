.class public final Lcom/android/server/content/ContentService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/content/ContentService;


# direct methods
.method public constructor <init>(Lcom/android/server/content/ContentService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/content/ContentService$1;->this$0:Lcom/android/server/content/ContentService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/content/ContentService$1;->this$0:Lcom/android/server/content/ContentService;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/content/ContentService$1;->this$0:Lcom/android/server/content/ContentService;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const-string v1, "android.intent.extra.user_handle"

    .line 35
    .line 36
    const/16 v2, -0x2710

    .line 37
    .line 38
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object p0, p0, Lcom/android/server/content/ContentService$1;->this$0:Lcom/android/server/content/ContentService;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/content/ContentService;->invalidateCacheLocked(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    monitor-exit p1

    .line 53
    return-void

    .line 54
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
.end method
