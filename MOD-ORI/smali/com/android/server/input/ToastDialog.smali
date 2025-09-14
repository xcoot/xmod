.class public final Lcom/android/server/input/ToastDialog;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAlertDialog:Landroid/app/AlertDialog;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

.field public mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/input/ToastDialog;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p1, Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p1, p0, v0}, Lcom/android/server/input/ToastDialog$ToastDialogHandler;-><init>(Lcom/android/server/input/ToastDialog;Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    .line 20
    .line 21
    return-void
.end method
