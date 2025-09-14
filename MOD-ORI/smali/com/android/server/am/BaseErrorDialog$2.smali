.class public final Lcom/android/server/am/BaseErrorDialog$2;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BaseErrorDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BaseErrorDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/BaseErrorDialog$2;->this$0:Lcom/android/server/am/BaseErrorDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object p0, p0, Lcom/android/server/am/BaseErrorDialog$2;->this$0:Lcom/android/server/am/BaseErrorDialog;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iput-boolean v1, p0, Lcom/android/server/am/BaseErrorDialog;->mConsuming:Z

    .line 10
    .line 11
    invoke-static {p0, v0}, Lcom/android/server/am/BaseErrorDialog;->-$$Nest$msetEnabled(Lcom/android/server/am/BaseErrorDialog;Z)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    invoke-static {p0, v1}, Lcom/android/server/am/BaseErrorDialog;->-$$Nest$msetEnabled(Lcom/android/server/am/BaseErrorDialog;Z)V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    return-void
.end method
