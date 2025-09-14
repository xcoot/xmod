.class public final Lcom/android/server/notification/SnoozeHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/SnoozeHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/SnoozeHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/SnoozeHelper$1;->this$0:Lcom/android/server/notification/SnoozeHelper;

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
    .locals 2

    .line 1
    sget-boolean p1, Lcom/android/server/notification/SnoozeHelper;->DEBUG:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-string p1, "SnoozeHelper"

    .line 6
    .line 7
    const-string v0, "Reposting notification"

    .line 8
    .line 9
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object p1, Lcom/android/server/notification/SnoozeHelper;->REPOST_ACTION:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/notification/SnoozeHelper$1;->this$0:Lcom/android/server/notification/SnoozeHelper;

    .line 25
    .line 26
    const-string p1, "key"

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string/jumbo v0, "userId"

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1, v1}, Lcom/android/server/notification/SnoozeHelper;->repost(Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method
