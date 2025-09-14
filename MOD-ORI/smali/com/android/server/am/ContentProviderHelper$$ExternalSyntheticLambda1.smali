.class public final synthetic Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ContentProviderHelper;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/RemoteCallback;

.field public final synthetic f$4:I

.field public final synthetic f$5:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ContentProviderHelper;Ljava/lang/String;ILandroid/os/RemoteCallback;ILandroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/ContentProviderHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda1;->f$3:Landroid/os/RemoteCallback;

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda1;->f$4:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda1;->f$5:Landroid/net/Uri;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/ContentProviderHelper;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda1;->f$2:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda1;->f$3:Landroid/os/RemoteCallback;

    .line 8
    .line 9
    iget v4, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda1;->f$4:I

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda1;->f$5:Landroid/net/Uri;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    .line 18
    .line 19
    move-result-wide v5

    .line 20
    const/4 v7, 0x0

    .line 21
    :try_start_0
    invoke-virtual {v0, v2, v7, v1}, Lcom/android/server/am/ContentProviderHelper;->removeContentProviderExternalUnchecked(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/os/Bundle;->getPairValue()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const/16 v0, 0x234

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-static {v0, v1, v4, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    throw p0
.end method
