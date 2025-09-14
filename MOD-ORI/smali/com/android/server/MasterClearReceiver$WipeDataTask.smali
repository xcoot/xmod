.class public final Lcom/android/server/MasterClearReceiver$WipeDataTask;
.super Landroid/os/AsyncTask;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mChainedTask:Ljava/lang/Thread;

.field public final mContext:Landroid/content/Context;

.field public final mProgressDialog:Landroid/app/ProgressDialog;

.field public final synthetic this$0:Lcom/android/server/MasterClearReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/MasterClearReceiver;Landroid/content/Context;Lcom/android/server/MasterClearReceiver$1;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->this$0:Lcom/android/server/MasterClearReceiver;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mChainedTask:Ljava/lang/Thread;

    .line 9
    .line 10
    const-string p3, "MasterClear"

    .line 11
    .line 12
    const-string v0, "!@[MasterClearReceiver] WipeDataTask: mProgressDialog object will create"

    .line 13
    .line 14
    invoke-static {p3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    iget-boolean p1, p1, Lcom/android/server/MasterClearReceiver;->mShowWipeProgress:Z

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    new-instance p1, Landroid/app/ProgressDialog;

    .line 22
    .line 23
    const v0, 0x1030453

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, p2, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    :goto_0
    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    const-string p0, "!@[MasterClearReceiver] WipeDataTask: mProgressDialog object created"

    .line 36
    .line 37
    invoke-static {p3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    const-string p1, "MasterClear"

    .line 4
    .line 5
    const-string v0, "Wiping adoptable disks"

    .line 6
    .line 7
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->this$0:Lcom/android/server/MasterClearReceiver;

    .line 11
    .line 12
    iget-boolean p1, p1, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const-string/jumbo p1, "storage"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Landroid/os/storage/StorageManager;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->wipeAdoptableDisks()V

    .line 28
    .line 29
    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string p1, "MasterClear"

    .line 14
    .line 15
    const-string v0, "!@[MasterClearReceiver] WipeDataTask onPostExecute: mProgressDialog object will dismiss"

    .line 16
    .line 17
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 23
    .line 24
    .line 25
    const-string v0, "!@[MasterClearReceiver] WipeDataTask onPostExecute: mProgressDialog object dismissed"

    .line 26
    .line 27
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p0, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mChainedTask:Ljava/lang/Thread;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final onPreExecute()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/16 v1, 0x7d3

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    const v2, 0x1040c57

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    const-string v0, "!@[MasterClearReceiver] WipeDataTask onPreExecute: mProgressDialog will show"

    .line 35
    .line 36
    const-string v1, "MasterClear"

    .line 37
    .line 38
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    .line 44
    .line 45
    .line 46
    const-string p0, "!@[MasterClearReceiver] WipeDataTask onPreExecute: mProgressDialog showed"

    .line 47
    .line 48
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method
