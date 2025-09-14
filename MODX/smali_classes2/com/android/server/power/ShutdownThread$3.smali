.class public final Lcom/android/server/power/ShutdownThread$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field public final synthetic val$message:Ljava/lang/CharSequence;

.field public final synthetic val$progress:I


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$3;->this$0:Lcom/android/server/power/ShutdownThread;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/power/ShutdownThread$3;->val$progress:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/power/ShutdownThread$3;->val$message:Ljava/lang/CharSequence;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$3;->this$0:Lcom/android/server/power/ShutdownThread;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v1, p0, Lcom/android/server/power/ShutdownThread$3;->val$progress:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$3;->val$message:Ljava/lang/CharSequence;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/power/ShutdownThread$3;->this$0:Lcom/android/server/power/ShutdownThread;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
