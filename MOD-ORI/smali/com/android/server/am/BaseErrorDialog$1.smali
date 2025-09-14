.class public final Lcom/android/server/am/BaseErrorDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BaseErrorDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BaseErrorDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/BaseErrorDialog$1;->this$0:Lcom/android/server/am/BaseErrorDialog;

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
    const-string p1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

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
    iget-object p0, p0, Lcom/android/server/am/BaseErrorDialog$1;->this$0:Lcom/android/server/am/BaseErrorDialog;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/am/BaseErrorDialog;->closeDialog()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
