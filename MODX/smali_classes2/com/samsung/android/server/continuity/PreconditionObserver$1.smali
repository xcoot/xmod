.class public final Lcom/samsung/android/server/continuity/PreconditionObserver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/continuity/PreconditionObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver$1;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

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
    const-string p1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string p1, "[MCF_DS_SYS]_PreconditionObserver"

    .line 14
    .line 15
    const-string p2, "mAccountChangeReceiver.onReceive - LOGIN_ACCOUNTS_CHANGED_ACTION"

    .line 16
    .line 17
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver$1;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->checkAccountUpdated()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
