.class public final synthetic Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/os/RemoteCallback;

.field public final synthetic f$1:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Landroid/os/RemoteCallback;Ljava/util/concurrent/Executor;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda2;->f$0:Landroid/os/RemoteCallback;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda2;->f$0:Landroid/os/RemoteCallback;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    :try_start_0
    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeInferenceParams(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    const/4 v1, 0x6

    .line 19
    invoke-direct {v0, v1, p1}, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda0;-><init>(ILandroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    new-instance v1, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    const/4 v2, 0x6

    .line 30
    invoke-direct {v1, v2, p1}, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda0;-><init>(ILandroid/os/Bundle;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda2;->f$0:Landroid/os/RemoteCallback;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/Executor;

    .line 40
    .line 41
    :try_start_1
    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeInferenceParams(Landroid/os/Bundle;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 45
    .line 46
    .line 47
    new-instance v0, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda0;

    .line 48
    .line 49
    const/4 v1, 0x3

    .line 50
    invoke-direct {v0, v1, p1}, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda0;-><init>(ILandroid/os/Bundle;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catchall_1
    move-exception v0

    .line 58
    new-instance v1, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda0;

    .line 59
    .line 60
    const/4 v2, 0x3

    .line 61
    invoke-direct {v1, v2, p1}, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda0;-><init>(ILandroid/os/Bundle;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
