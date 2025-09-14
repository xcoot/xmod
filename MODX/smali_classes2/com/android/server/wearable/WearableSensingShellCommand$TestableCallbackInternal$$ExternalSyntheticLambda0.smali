.class public final synthetic Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/wearable/WearableSensingShellCommand;->sTestableCallbackInternal:Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "android.app.wearable.WearableSensingStatusBundleKey"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    :try_start_0
    iput p1, p0, Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal;->mLastStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    .line 25
    .line 26
    throw p0
.end method
