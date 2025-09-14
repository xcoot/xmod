.class public final Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method public constructor <init>(Lcom/android/server/people/data/DataManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;->this$0:Lcom/android/server/people/data/DataManager;

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
    iget-object p0, p0, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;->this$0:Lcom/android/server/people/data/DataManager;

    .line 2
    .line 3
    new-instance p1, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-direct {p1, p2}, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1}, Lcom/android/server/people/data/DataManager;->-$$Nest$mforAllUnlockedUsers(Lcom/android/server/people/data/DataManager;Ljava/util/function/Consumer;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
