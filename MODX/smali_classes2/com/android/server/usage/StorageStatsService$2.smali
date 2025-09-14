.class public final Lcom/android/server/usage/StorageStatsService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/StorageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/StorageStatsService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService$2;->this$0:Lcom/android/server/usage/StorageStatsService;

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
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "android.intent.action.PACKAGE_REMOVED"

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    const-string p2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 14
    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService$2;->this$0:Lcom/android/server/usage/StorageStatsService;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/android/server/usage/StorageStatsService;->mHandler:Lcom/android/server/usage/StorageStatsService$H;

    .line 24
    .line 25
    const/16 p2, 0x67

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService$2;->this$0:Lcom/android/server/usage/StorageStatsService;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mHandler:Lcom/android/server/usage/StorageStatsService$H;

    .line 33
    .line 34
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method
