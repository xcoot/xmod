.class public final synthetic Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ContentProviderHelper;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ContentProviderHelper;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ContentProviderHelper;

    .line 6
    iput-object p2, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 8
    iput p3, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda0;->f$2:I

    .line 10
    iput-object p4, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda0;->f$3:Landroid/os/RemoteCallback;

    .line 12
    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ContentProviderHelper;

    .line 3
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 5
    iget v2, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda0;->f$2:I

    .line 7
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda0;->f$3:Landroid/os/RemoteCallback;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    move-result-wide v3

    .line 16
    const/4 v5, 0x0

    .line 17
    :try_start_0
    invoke-virtual {v0, v2, v5, v1}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    throw p0
.end method
