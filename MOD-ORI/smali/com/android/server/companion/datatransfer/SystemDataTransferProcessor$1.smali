.class public final Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/companion/IOnMessageReceivedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$1;->this$0:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onMessageReceived(I[B)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$1;->this$0:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const-string v0, "CDM_SystemDataTransferProcessor"

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v1, "android.hardware.type.watch"

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    const-string p0, "Permissions restore is only available on watch."

    .line 29
    .line 30
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string p1, "Applying permissions."

    .line 35
    .line 36
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda0;

    .line 46
    .line 47
    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;[BLandroid/os/UserHandle;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method
